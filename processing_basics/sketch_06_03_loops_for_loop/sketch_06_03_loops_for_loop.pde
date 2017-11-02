
int x;
int y;

void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(0);
  
  stroke(255);
  
  x = 0;
  while (x < width) {
    line(x, 0, x, height);
    x = x + 10;
  }
  
 for (y = 0; y < height; y = y + 10) {
    line(0, y, width, y);
 }
}