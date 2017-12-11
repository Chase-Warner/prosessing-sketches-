//Warner, Chase//
//12/11/17//



PShape space;
void setup() { 
  size(1300,1300);
  space = createShape();
  space.beginShape(); 
 space.stroke(0); 
 space.fill(255); 
 //the beginning section lays out the peramiters of the shape//
 space.vertex(-200,-100); 
 space.vertex(-100,-100);
 space.vertex(-100,-600);
 space.vertex(-200,-300);
 //these four points lay out the shape in proportion// 
 space.rotate(radians(0));
 space.translate(width/2,height/2);
 //this allows for the starting poind for the plain to be in the center of the canvas//
 space.endShape(CLOSE);
 
}
 
 
 void draw() {
   background(0);
     stroke(255);
 text("The distance of voyager 1 compared to voyager 2", 500,600);
 fill(255);
 textSize(32);
   shape(space); 
 }
 