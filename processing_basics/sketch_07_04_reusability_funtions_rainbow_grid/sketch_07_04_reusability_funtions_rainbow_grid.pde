float xloc = 0;
float yloc = 0;

void square(float x, float y) {
stroke(255, 255, 255);
fill( random(0,255), random(100,255), random(0,255));
  
beginShape();
vertex(x, y);
vertex(x + 55, y);
vertex(x + 55, y + 55);
vertex(x, y + 55);
endShape(CLOSE);
}


void setup() {
  size(500, 500);
  smooth();
  background(250,250,250);
  frameRate(40);
}

void draw() {
  for(xloc = 0; xloc < width; xloc = xloc + 60){
    for(yloc = 0; yloc < height; yloc = yloc + 60){
     square(xloc, yloc);
    }
  }
}