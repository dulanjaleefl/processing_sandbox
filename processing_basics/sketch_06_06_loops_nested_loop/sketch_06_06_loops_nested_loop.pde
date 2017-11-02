int x;
int y;

void setup() {
  size(500, 500);
}

void draw() {
  for (y = 0; y < height; y = y + 10) {
    for (x = 0; x < height; x = x + 10){
      fill(random(100, 255), 100, 100);
      stroke(255, 100, 100);
      rect(x, y, 30, 30);
      
    }
  }
}