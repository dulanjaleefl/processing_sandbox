// Bubble class
class Bubble {
  float x;
  float y;
  float r;
  
  Bubble() {
    x = random(width);
    y = random(height);
    r = 40;
  }
  
  Bubble(float t1, float t2, float t3) {
    x = t1;
    y = t2;
    r = t3;
  }
  
  void display() {
    ellipse(x, y, r, r);
    noFill();
    stroke(255);
  }
  
  boolean overlaps(Bubble other) {
    float d = dist(x,y, other.x,other.y);
    if ( d < (r/2) + (other.r)/2 ){
      return true;
    } else {
      return false;
   }
   
  }
}

//////////////////////////////////

Bubble b;
Bubble a;

void setup() {
  size(400, 400);
  smooth();
  b = new Bubble(random(100,300), random(100,300), 40);
  a = new Bubble();
}


void draw() {
  background(50);
 
 if(b.overlaps(a)) {
    background(100, 0, 100, 250);
  }
  
  b.display(); 
  a.display();
  
  a.x = mouseX;
  a.y = mouseY;
}