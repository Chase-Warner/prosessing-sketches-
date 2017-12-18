//Warner, Chase// 
// 12-12-17// 

void setup() {
  size(500, 500, P3D);
}
void draw() {
pushMatrix();
  background(255); 
  translate(250, 250);
   sphere(100);
popMatrix();
  stroke(0);
  line(0, 500, 0, 250, 250, 250);
  line(500,500,0,250,250,250);
  line(250,0,0,250,250,250);
}