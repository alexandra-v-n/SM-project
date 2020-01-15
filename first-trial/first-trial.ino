#include "NewPing.h"

#define ECHO_PIN 6
#define TRIGGER_PIN 7
#define MAX_DISTANCE 400
#define vibOutPin 8


NewPing sonar( TRIGGER_PIN, ECHO_PIN,MAX_DISTANCE);
float distance;
long duration;
int iterations = 5;


void setup() {
  Serial.begin(9600);
  pinMode( TRIGGER_PIN, OUTPUT);
  pinMode(ECHO_PIN,INPUT);
  pinMode(vibOutPin,OUTPUT);// define a pin as output
  
}

void loop() {

// INITIAL CODE FOR THE ULTRASONIC SENSOR
//  distance = sonar.ping_cm();
// Serial.print("Distance =  ");
// if ( distance >= 400 || distance <= 2){
//   Serial.print(" Out of rage ");
//  }
//  else{
//    Serial.print(distance);
//    Serial.print("cm");
//    delay(500);
//  }
//  
//  delay(1000);

   duration = sonar.ping_median(iterations);
   distance = (duration / 2) * 0.0343;

   if(distance <= 60 && distance >= 45)
   {
    
        digitalWrite(vibOutPin, HIGH);

        delay(50);

    
        digitalWrite(vibOutPin, LOW);
        delay(50);
    
         Serial.print(" Current distance: " );
         Serial.print( distance );
         Serial.print(" cm ");
  
     
    } 
   else if(distance < 45 && distance >= 30)
   {
    
        digitalWrite(vibOutPin, HIGH);

        delay(200);
  
        digitalWrite(vibOutPin, LOW);
    
        delay(200);
    
        Serial.print(" Current distance: " );
        Serial.print( distance );
        Serial.print(" cm ");
    
   }
    else if(distance < 30 && distance >= 10)
    {

        digitalWrite(vibOutPin, HIGH);

        delay(300);

        digitalWrite(vibOutPin, LOW);

        delay(300); 
        Serial.print(" Current distance: " );
        Serial.print( distance );
        Serial.print(" cm ");
  
  }
  else if(distance < 10){

        digitalWrite(vibOutPin, HIGH);

        delay(600);

        digitalWrite(vibOutPin, LOW);

        delay(600); 
        Serial.print(" Current distance: " );
        Serial.print( distance );
        Serial.print(" cm ");
  
  }
  else 
  {
        digitalWrite(vibOutPin, LOW);// If the distance is too large the motor will be off
        Serial.print("  Distance too large  ");
  }
 
 
}
