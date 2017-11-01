// Find tutorial on Youtube - The Coding Train

Walker w;

void setup() {
  size(600,600);
  background(50);
  w = new Walker();
}

void draw() {
  w.move();
  w.render();
}