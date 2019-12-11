#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
#include <util/atomic.h>
#include <math.h>

#define PIN_WHEEL_SENSOR 2
#define PIN_RELAY 4
#define PIN_BUTTON_ACTIVATE 5
#define PIN_BUTTON_ACTIVATE_CS 6
#define PIN_BUTTON_ENCODER 7
#define PIN_BRAKE_PEDAL 8
#define PIN_ENCODER_A A3
#define PIN_ENCODER_B A2

#define PIN_APPS_FEEDBACK_1 A0
#define PIN_APPS_FEEDBACK_2 A1

#define PIN_APPS_1 9
#define PIN_APPS_2 10

#define SPEED_HISTORY_DEPTH 10

LiquidCrystal_I2C lcd(0x27,16,2); 

volatile unsigned int wheelpulses = 0;
unsigned int readpulses;
byte carspeed = 0;
byte newcarspeed;
byte targetspeed = 0;
byte newtargetspeed = 120;
float throttle = 10;
unsigned long speedlastupdated = 0;
byte overrideAccelerator = false;
byte speedHistory[SPEED_HISTORY_DEPTH];
byte i;

void setup() {
  TCCR1B = (TCCR1B & B11111000) | B00000010;
  pinMode(PIN_WHEEL_SENSOR, INPUT_PULLUP);
  pinMode(PIN_RELAY, OUTPUT);
  digitalWrite(PIN_RELAY, 0);
  pinMode(PIN_BUTTON_ACTIVATE, INPUT_PULLUP);
  pinMode(PIN_BUTTON_ACTIVATE_CS, INPUT_PULLUP);
  pinMode(PIN_BUTTON_ENCODER, INPUT_PULLUP);
  pinMode(PIN_BRAKE_PEDAL, INPUT_PULLUP);
  pinMode(PIN_ENCODER_A, INPUT_PULLUP);
  pinMode(PIN_ENCODER_B, INPUT_PULLUP);
  pinMode(PIN_APPS_1, INPUT);
  pinMode(PIN_APPS_2, INPUT);
  attachInterrupt(digitalPinToInterrupt(PIN_WHEEL_SENSOR), sensor, RISING);
  lcd.init();
  lcd.backlight();
  lcd.setCursor(0,0);
  lcd.print("0 km/h");
  lcd.setCursor(0,1);
  lcd.print("CC OFF");
}

void loop() {
  if(millis() - speedlastupdated >= 500){
    speedlastupdated = millis();
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
      readpulses = wheelpulses;
      wheelpulses = 0;
    }
    newcarspeed = round(4.0*(float)readpulses/15.0);
    if(carspeed != newcarspeed){
      lcd.setCursor(0,0);
      lcd.print(newcarspeed);
      if(nofdigits(carspeed) != nofdigits(newcarspeed)){
        lcd.print(" km/h");
        if(newcarspeed < carspeed){
          if(newcarspeed <= 9){
            lcd.print("  ");
          }else if(newcarspeed <= 99){
            lcd.print(" ");
          }
        }
      }
      carspeed = newcarspeed;
    }
    for(i=SPEED_HISTORY_DEPTH - 1; i>0; i--){
      speedHistory[i] = speedHistory[i-1];
    }
    speedHistory[0] = carspeed;
    if(overrideAccelerator){
      if(carspeed < targetspeed){
        if(carspeed <= (targetspeed - 8)){
          throttle += 2.5;
        }else if(carspeed <= (targetspeed - 5)){
          throttle += 1.5;
        }else{
          throttle += 0.5;
        }
        if(timeBelow() >= 8){
          throttle += 0.5;
        }
      }else if(carspeed > targetspeed){
        if(carspeed >= (targetspeed + 8)){
          throttle -= 2.5;
        }else if(carspeed >= (targetspeed + 5)){
          throttle -= 1.5;
        }else{
          throttle -= 0.5;
        }
        if(timeAbove() >= 8){
          throttle -= 0.5;
        }
      }
      throttle = constrain(throttle, 0, 100);
      throttleWrite(throttle);
    }
  }

  processButtonActivate();
  processButtonActivateCS();
  processEncoder();
  
  if(!digitalRead(PIN_BRAKE_PEDAL)){
    overrideAccelerator = false;
  }

  if(digitalRead(PIN_RELAY) != overrideAccelerator){
    if(overrideAccelerator){
      throttle = throttleRead();
      throttleWrite(throttle);
      digitalWrite(PIN_RELAY, HIGH);
      lcd.setCursor(4,1);
      lcd.print("N "); //CC ON
    }else{
      digitalWrite(PIN_RELAY, LOW);
      lcd.setCursor(4,1);
      lcd.print("FF"); //CC OFF
    }
  }
  if(targetspeed != newtargetspeed){
    lcd.setCursor(9, 0);
    lcd.print(newtargetspeed);
    switch(nofdigits(targetspeed) - nofdigits(newtargetspeed)){
      case 1 :
        lcd.print(" ");
        break;
      case 2 :
        lcd.print("  ");
        break;
    }
    targetspeed = newtargetspeed;
  }
}

float throttleRead(){
  return constrain(((float)analogRead(PIN_APPS_FEEDBACK_2)/4 - 19.38)/0.843, 0, 100);
}

void throttleWrite(float t){
  t = constrain(t, 0, 100);
  analogWrite(PIN_APPS_1, round(39.27 + (float)t*1.715));
  analogWrite(PIN_APPS_2, round(19.38 + (float)t*0.843));
}

void processButtonActivate(){
  static unsigned long lastButtonChange = 0;
  static byte lastButtonState = HIGH;
  static byte reading;
  static boolean alreadyExecuted = false;

  reading = digitalRead(PIN_BUTTON_ACTIVATE);
  if(reading != lastButtonState){
    lastButtonChange = millis();
    lastButtonState = reading;
    alreadyExecuted = false;
  }
  if((!lastButtonState) && (!alreadyExecuted) && (millis() - lastButtonChange > 100)){
    if(overrideAccelerator){
      overrideAccelerator = false;
      alreadyExecuted = true;
    }else{
      if((millis() - lastButtonChange) > 1000){
        overrideAccelerator = true;
        alreadyExecuted = true;
      }
    }
  }
}

void processButtonActivateCS(){
  static unsigned long lastButtonChange = 0;
  static byte lastButtonState = HIGH;
  static byte reading;
  static boolean alreadyExecuted = false;

  reading = digitalRead(PIN_BUTTON_ACTIVATE_CS);
  if(reading != lastButtonState){
    lastButtonChange = millis();
    lastButtonState = reading;
    alreadyExecuted = false;
  }
  if((!lastButtonState) && (!alreadyExecuted) && (millis() - lastButtonChange > 100)){
    if(overrideAccelerator){
      overrideAccelerator = false;
      alreadyExecuted = true;
    }else{
      if((millis() - lastButtonChange) > 1000){
        overrideAccelerator = true;
        newtargetspeed = carspeed;
        alreadyExecuted = true;
      }
    }
  }
}

void processEncoder(){
  static boolean alreadyExecuted = false;
  byte readingA, readingB;
  readingA = digitalRead(PIN_ENCODER_A);
  readingB = digitalRead(PIN_ENCODER_B);
  if(readingA && readingB){
    alreadyExecuted = false;
    return;
  }
  if(!alreadyExecuted){
    if((!readingA) && readingB){
      newtargetspeed++;
      alreadyExecuted = true;
      return;
    }else if(readingA && (!readingB)){
      newtargetspeed--;
      alreadyExecuted = true;
      return;
    }
  }
}

byte nofdigits(byte number){
  if(number < 10){
    return 1;
  }else if(number < 100){
    return 2;
  }else{
    return 3;
  }
}

byte timeAbove(){
  byte t = 0;
  for(i=0; i<SPEED_HISTORY_DEPTH; i++){
    if(speedHistory[i] >= (targetspeed+5)){
      t++;
    }else{
      return t;
    }
  }
  return t;
}

byte timeBelow(){
  byte t = 0;
  for(i=0; i<SPEED_HISTORY_DEPTH; i++){
    if(speedHistory[i] <= (targetspeed-5)){
      t++;
    }else{
      return t;
    }
  }
  return t;
}

void sensor(){
  wheelpulses++;
}
