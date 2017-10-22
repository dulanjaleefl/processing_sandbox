// Find tutorial on Youtube - The Coding Train

Mover m;

class Mover {
  //PVector location;
  //PVector velocity;
 
  PVector location = new PVector(width/2, height/2);
  PVector velocity = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  
  
  void update() {
    //Methodology  or the phisics engine
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(location);
    mouse.setMag(0.1);
    acceleration = mouse;
    
    //acceleration = PVector.random2D(); // setting the acceleration value
    velocity.add(acceleration); // adding velocity(V) and accleration(a) together
    location.add(velocity); // adding the combined quantity(V+a) to object's location
    velocity.limit(5);
   }
  
  void edge() {
    if (location.x > width) {
      location.x = 0;
    }
    
    if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    }
    
    if (location.y < 0) {
      location.y = height;
    }
  }
  
  void render() {
    ellipse(location.x, location.y, 40, 40);
    fill(255);
    //noStroke();
  }
}

void setup() {
  
  size(500, 500);
  m = new Mover();
}

void draw() {
  background(50);
  m.update();
  //m.edge();
  m.render();
 
}