float phi = 1.6180339;

void setup() {
  colorMode(HSB,255,255,255);
  size(1294,800); 
  background(0,0,225); 
    noLoop(); 
    ellipseMode(RADIUS) ;
    
}
  
void draw() {
  
  for(int i=0; i < 20; i++) {
    
    stroke(200,255,255); 
    stroke(0,0,25);
    rectangles(width, height); 
    translate(width,0);
    rotate(radians(90));
    scale(1/phi);
  }
}

void rectangles(float r_width, float r_height) {
  rect(0,0, r_height, r_height); 
  rect(r_height, 0, (r_width - r_height), r_height); 
  color(random(255),random(255),random(255));
}