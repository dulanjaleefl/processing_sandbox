// Find tutorial on Youtube - The Coding Train


PVector mouse;
PVector center;
PVector subResult;

void setup() {
  size(500, 500);
  smooth(); 
  
 }

void draw() {
  background(252,228,236);
  
  strokeWeight(2);
  stroke(255,64,129);
  
  translate(250, 250);
  ellipse(0,0,4,4);
  
   mouse = new PVector(mouseX, mouseY);
   center = new PVector(width/2, height/2);
   
   mouse.sub(center);
   subResult = new PVector(mouse.x, mouse.y);
   line(0,0, subResult.x, subResult.y); 
}