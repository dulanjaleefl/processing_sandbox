// Find tutorial on Youtube - The Coding Train

class Walker {
  
  int x = width/2;
  int y = height/2;
  
  void move() {
    float choice = random(1);
    
    if (choice < 0.4) {
      x++;
    } else if (choice < 0.6) {
      x--;
    } else if (choice < 0.8) {
      y++;
    } else {
      y--;
    }
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
  
  void render() {
    stroke(255, 0, 0);
    ellipse(x, y, 20, 20);
    fill(0,0,255);
  }
 }