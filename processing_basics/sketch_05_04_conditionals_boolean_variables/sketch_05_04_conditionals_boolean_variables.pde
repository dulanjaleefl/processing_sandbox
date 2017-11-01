 
 boolean going;
 float x;
 
void setup() {
  size(600, 600);
  going = false;
  x = 50;
 }

void draw() {
  // drawing
  background(0);
  ellipse(x, height/2, 40, 40);
  
  //logic
  if(going) {
   x = x + 1; 
  }
}

void mousePressed() {
  going = !going;
}