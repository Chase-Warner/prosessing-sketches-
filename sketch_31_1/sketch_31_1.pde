float N = noise(30);
void setup() {
 size(1000, 1000);
 background(255);
 noLoop();
}

void draw() {
  if (N > 15) 
  ellipse(20,20,20,20);
  else 
 rect(30,40,50,60); 
} 