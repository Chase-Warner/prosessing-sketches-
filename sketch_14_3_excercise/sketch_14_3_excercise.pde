void setup() {
 frameRate (60);
size(1000, 1000);
background(255);
strokeWeight(10);
}
void draw() {
  
  if(mouseButton ==RIGHT == true) {
  stroke(255);
  line(mouseX, mouseY, pmouseX, pmouseY);
  }
  else if (mouseButton ==LEFT == true) { 
     stroke(244,66,75);
  ellipse(mouseX,mouseY, pmouseX, pmouseY);
  }
     if(mousePressed == true) {
  stroke(66,134,244);
  line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
}