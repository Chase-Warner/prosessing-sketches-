void setup() {
  size(500,500,P3D);
 
}



void draw() {
   size(500,500,P3D);
    pushMatrix();
  background(0); 
  translate(250, 250);
    stroke(0,0,255);
   sphere(100);
  fill(0);
popMatrix();

line(0,0,0,200,200,250);
line(500,0,0,300,200,250);
line(500,500,0,300,300,250);
line(0,500,0,200,300,250);
line(200,200,250,300,200,250);
line(300,300,250,200,300,250);
line(200,200,250,200,300,250);
line(300,200,250,300,300,250);
stroke(255);
camera(mouseX,mouseY, (height/2)/ tan(PI*30/180), width/2, height/2, 0,0,1,0);
}