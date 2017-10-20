// Find tutorial on Youtube - The Coding Train

class Ball {
  PVector location = new PVector( random(500), random(500));
  PVector velocity = new PVector( -2, 2.5);
  
   void move() {
   location.add(velocity);
    
    if ((location.x > 500) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    } 
    
    if ((location.y > 500) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    } 
  }
  
  void render() {
    ellipse(location.x, location.y, 40, 40);
    fill(255, 0, 0);
  }
  
}


Ball b;

void setup() {
  size(500, 500);
  smooth();
  b = new Ball();
  
}

void draw() {
  background(0);
  b.move();
  b.render();
}