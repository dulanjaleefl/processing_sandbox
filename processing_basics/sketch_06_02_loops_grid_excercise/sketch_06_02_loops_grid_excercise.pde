
float x = 0;
float y = 0;
float spacing = 30;

void setup() {
  size(400, 400);
  smooth();
}

void draw() {
  background(random(0,255),150, random(0,255) );
  spacing =  spacing + random(-1, 1);
  
  stroke(50);
  strokeWeight(2);
  
  x = 0;
  while ( x < width) {
  line(x, 0, x, height);
  x = x + spacing;
  }
  
  y = 0;
  while ( y < height) {
  line(0, y, width, y);
  y = y + spacing;
  }
}