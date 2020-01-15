#include "NewPing.h"

#define ECHO_PIN 6
#define TRIGGER_PIN 7
#define MAX_DISTANCE 400
#define vibOutPin 8
const int serialPeriod = 250;       // only print to the serial console every 1/4 second
unsigned long timeSerialDelay = 0;

const int loopPeriod = 250;          // a period of 20ms = a frequency of 50Hz
unsigned long timeLoopDelay   = 0;


NewPing sonar( TRIGGER_PIN, ECHO_PIN,MAX_DISTANCE);
float distance;
long duration;

void setup(){
  Serial.begin(9600);
  pinMode(TRIGGER_PIN,OUTPUT);
  pinMode(ECHO_PIN,INPUT);
  pinMode(vibOutPin, OUTPUT);
}

void loop(){
  debugOutput();
  if(millis()-timeLoopDelay >= loopPeriod){
    readUltrasonicSensor();
    timeLoopDelay=millis();
  }
}
void readUltrasonicSensor()
{
    
    digitalWrite(TRIGGER_PIN, HIGH);
    delayMicroseconds(10);                 
    digitalWrite(TRIGGER_PIN, LOW);

    duration = pulseIn(ECHO_PIN, HIGH);
    distance = (duration/2)/29;
}



void debugOutput()
{
    Serial.print("timeSerialDelay: ");
    Serial.print(timeSerialDelay);
    Serial.println();

    if((millis() - timeSerialDelay) > serialPeriod)
    {
        Serial.print(" Distance: ");
        Serial.print(distance);
        Serial.print("cm: ");
        Serial.println();

        timeSerialDelay = millis();
    }
}

//const int iterations = 5;
//
//int readings[iterations];
//int latestReading = 0;
//int SensorClose = 10;
//int SensorFar = 140;
//
//void setup(){
//  Serial.begin(115200);
//  Serial.println("Begin");
//  pinMode(vibOutPin, OUTPUT);
//
// 
//}
//
//void loop(){
//  latestReading++;
//  if( latestReading >= iterations){
//    latestReading = iterations -1;
//    
// }
//
// int output = SensorFar;
// float weightingFactor = 0.5;
// float FlickerFactor =30;
// if ( latestReading >= iterations -1){
//  int total =0;
//  float currentWeight =1;
//  float percentagePossible =0;
//  boolean flickered = false;
//  for(int i = iterations-1; i>=0;i--){
//    flickered=false;
//    if( i == iterations -1){
//      if((abs(readings[i])-abs(readings[i-1])>FlickerFactor) &&(abs(readings[i-1])-abs(readings[i-2])>FlickerFactor)){
//            flickered = true;
//          }
//    }
//    if ( flickered == false){
//      total +=(readings[i]*currentWeight);
//      currentWeight*=weightingFactor;
//    }
//  }
//  output = total / percentagePossible;
// }
// return output;
// }
// int getDistance (){
//  long duration;
//  int out;
//  pinMode(vibOutPin,OUTPUT);
//  digitalWrite(vibOutPin,LOW);
//  delay(200);
//  digitalWrite(vibOutPin, HIGH);
//  delay(500);
//   digitalWrite(vibOutPin,LOW);
//
//   pinMode(vibOutPin, INPUT);
//   duration= pulseIn(vibOutPin, HIGH);
//
//   duration = constrain(duration, SensorClose, SensorFar);
//   out=map(duration, SensorClose, SensorFar,0,100);
//   return out;
// }

 

//void setup() {
//  pinMode(vibOutPin,OUTPUT);// define a pin as output
// 
//}
//
//void loop() {
//
//    digitalWrite(vibOutPin,HIGH);
//    delay(2000);
//    digitalWrite(vibOutPin, LOW);
//    delay(600); 
//    digitalWrite(vibOutPin,HIGH);
//    delay(2000);
//    digitalWrite(vibOutPin, LOW);
//    delay(600);  
//    digitalWrite(vibOutPin,HIGH);
//    delay(2000);
//    digitalWrite(vibOutPin, LOW);
//    delay(600);              
//  
//
//    delay(5000);
//}// loop
// 
