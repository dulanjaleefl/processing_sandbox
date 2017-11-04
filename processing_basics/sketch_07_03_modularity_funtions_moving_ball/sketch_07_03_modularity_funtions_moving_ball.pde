
float x;
float y;
float speedx;
float speedy;

void displayBall() {
 fill(255, 0, 0);
 ellipse(x, y, 40, 40); 
}

void moveBall() {
  x = x + speedx;
  y = y + speedy;
}

void setEdge() {
   if(x > width || x < 0) {
    speedx = speedx * -1;
  }
  
  if(y > height || y < 0) {
    speedy = speedy * -1;
  }
  
}

void setup() {
  size(500, 500);
  smooth();
  x = random(0, 500);
  y = random(0, 500);
  speedx = random(1,3);
  speedy = random(1,3);
}

void draw() {
  background(50);
  displayBall();
  moveBall();
  setEdge();
}