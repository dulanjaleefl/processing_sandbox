
import java.util.*;

Random generator;

Circle friend;

class Circle {
  float yloc;
  
  void appear(){
  yloc = (float)generator.nextGaussian();
  
  yloc = yloc * 60;
  yloc = yloc + 250;
 }
  
  void render() {
  noStroke();
  fill(0, 255, 255, 20);
  ellipse(width/2, yloc, 15, 15);
  }
}

void setup() {
  size(500, 500);
  background(25);
  generator = new Random();
  friend = new Circle();
  smooth();
}

void draw() {
  friend.appear();
  friend.render();
}