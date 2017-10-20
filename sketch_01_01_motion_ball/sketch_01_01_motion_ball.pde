// Find tutorial on Youtube - The Coding Train

class Ball {

  float x = random(500);
  float y = random(500);
  float xspeed = random(0,2);
  float yspeed = random(0,1);
  
  void move() {
      x = x + xspeed;
      y = y + yspeed;
    
      if ((x > 500) || (x < 0)) {
        xspeed = xspeed * -1;
      } 
    
      if ((y > 500) || (y < 0)) {
        yspeed = yspeed * -1;
      }
    } 
    
    void render() {
     ellipse(x, y, 40, 40);
     fill(212,225,87);
     stroke(227,242,253);
     }
  }
  
Ball ball1;

void setup() {
  size(500, 500);
  ball1 = new Ball();
  smooth();
}

void draw() {
  background(100,181,246);
  ball1.move();
  ball1.render();
}

  