
float circleX;
float circleY;
float xspeed;
float yspeed;

void setup() {
  size(500, 500);
  smooth();
  circleX = 0;
  circleY = 0;
  xspeed = 2;
  yspeed =3;
}

void draw() {
  background(51);
  fill(255);
  stroke(255);
  ellipse(circleX, circleY, 40, 40);
  circleX = circleX + xspeed;
  circleY = circleY + yspeed;
  
  if (circleX > width || circleX < 0 ) {
   //turn around
   xspeed = -xspeed;
   }
  
  if (circleY > 500 || circleY < 0 ) {
     //turn around
    yspeed = -yspeed;
  }
}