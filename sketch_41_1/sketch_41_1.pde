
int myColor = color(255);

int c1,c2;

float n,n1;



import controlP5.*;
ControlP5 cp5;



void setup() {
  size(500,500);
  noStroke();
 cp5 = new ControlP5(this);
 cp5.addButton("button1")
 .setValue(0)
 .setPosition(100,100)
 .setSize(200,19)
 ;
}
void draw() {
  background(myColor);
  myColor = lerpColor(c1,c2,n);
  n += (1-n)* 0.1; 
}
public void controlEvent(ControlEvent theEvent) {
  println("It WORKS");
  n = 0;
}

//public void controlEvent(ControlEvent theEvent) {
  //println(theEvent.getController().getName());
  //n = 0;
//}

// function colorA will receive changes from 
// controller with name colorA
public void colorA(int theValue) {
  println("a button event from colorA: "+theValue);
  c1 = c2;
  c2 = color(0,160,100);
}