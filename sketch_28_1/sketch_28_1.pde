import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

int mySwitch = 0; 
int LEDblu = 12;
int LEDgrn = 11;
int LEDred = 10;

void setup() {
  arduino = new Arduino(this, Arduino.list() [0], 577600);
  arduino.pinMode(mySwitch,Arduino.INPUT);
  arduino.pinMode(LEDblu, Arduino.OUTPUT);
  arduino.pinMode(LEDgrn, Arduino.OUTPUT);
  arduino.pinMode(LEDred, Arduino.OUTPUT);
}

void draw(){
  if (arduino.digitalRead(mySwitch) == Arduino.LOW) {
    arduino.digitalWrite(LEDgrn, Arduino.HIGH);
    ellipse(50,50,80,80);
    fill(0);
  }
  else { 
    arduino.digitalWrite(LEDred, Arduino.HIGH);
    ellipse(50,50,80,80);
    fill(255);
  }
;
}