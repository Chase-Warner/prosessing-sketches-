void setup() {
  size(500, 500);
  strokeWeight(10);
}

void draw() {
  if(mousePressed == true) {
  stroke(66,134,244);
  line(mouseX, mouseY, pmouseX, pmouseY);
  }
  

}