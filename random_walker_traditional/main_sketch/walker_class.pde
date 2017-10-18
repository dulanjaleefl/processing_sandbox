// DulanjaleeFL

class Walker {
  
  int x = width/2;
  int y = height/2;
  
  void move() {
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else if (choice == 3) {
      y--;
    }
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
  
  void render() {
    stroke(255, 0, 0);
    point(x, y);
  }
 }