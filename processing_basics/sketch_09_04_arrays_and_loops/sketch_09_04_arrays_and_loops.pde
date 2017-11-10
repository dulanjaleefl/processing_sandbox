
//bubble class

class Bubble {
  float xPos; 
  float yPos; 
  float yspeed;
  float radius;
  
  Bubble(float bubbleRad) {
    xPos = random(width);
    yPos = height;
    yspeed = random(0.5, 2.5);
    radius = bubbleRad;
   }
   
   void display() {
     noFill();
     stroke(random(0,255), random(0,255), 255);
     strokeWeight(2);
     ellipse(xPos,yPos,radius,radius);
   }
   
   void fly() {
     xPos = xPos + (random(-1,1));
     yPos = yPos - yspeed;
   }
}

// bubbles array dlaration and creation
Bubble[] bubbles = new Bubble[40];

void setup() {
  size(500, 500);
  smooth();

  // bubbles array initiation
   for (int i = 0; i < bubbles.length; i++) {
     bubbles[i] = new Bubble(random(20, 60));
   }
}

void draw() {
  background(0);
  for (int i = 0; i < bubbles.length; i++) {
  bubbles[i].display();
  bubbles[i].fly();
  }
}