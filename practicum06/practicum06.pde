float x; 
int time=0;


void setup() {
  size(1000, 1000);
}

void draw() {
  int s =second(); 
  int m =minute();
  int h =hour(); 
  pushMatrix(); 
  translate(width*3/4, height/2); 
  ellipse(0, 0, 300, 300);
  float x=s*6; 
  line(0, 0, 30*cos(radians(x-90)), 30*sin(radians(x-90)));
  float y=m*6;
  line(0, 0, 35*cos(radians(y-90)), 35*sin(radians(y-90))); 
  float z=h*30;
  line(0, 0, 25*cos(radians(z-90)), 25*sin(radians(z-90))); 
  popMatrix(); 
  pushMatrix();
  translate (width/4, height/2); 
  ellipse(0, 0, 300, 300); 
  float ts= 864000;
  float trs= 100000;
  float es= s+(m*60)+(h*3600);
  float res= es*1.157;
  float rcs= es%100;
  float cs= es/60;
  float rcm=res%100*100-rcs/100;
  float rch=res%100*100-rcs-rcm/10000;
  float rx= rcs*3.6;
  float ry= rcm*3.6;
  float rz= rch*72;
  line(0, 0, 30*cos(radians(rx-90)), 30*sin(radians(rx-90)));
  line(0, 0, 35*cos(radians(ry-90)), 35*sin(radians(ry-90)));
  line(0, 0, 25*cos(radians(rz-90)), 25*sin(radians(rz-90)));
  popMatrix();
}