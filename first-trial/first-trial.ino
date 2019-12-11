#include "NewPing.h"

#define ECHO_PIN 6
#define TRIGGER_PIN 7
#define MAX_DISTANCE 400

NewPing sonar( TRIGGER_PIN, ECHO_PIN,MAX_DISTANCE);
float distance;


void setup() {
  Serial.begin(9600);
  
}

void loop() {
  distance = sonar.ping_cm();

  Serial.print("Distance =  ");
  if ( distance >= 400 || distance <= 2){
    Serial.print(" Out of rage ");
  }
  else{
    Serial.print(distance);
    Serial.print("cm");
    delay(500);
  }
  
  delay(1000);

}
