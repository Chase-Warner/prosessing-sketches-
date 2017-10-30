PFont Gisha;
void setup()
{
Gisha = createFont("Gisha",32);
size(1000,1000);
}
void draw() 
{
fill(random(255),random(255),random(255));
text("hello",500,500);
textSize(100);
textFont(Gisha);
}