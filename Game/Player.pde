class Player extends Character{
  Player(float x, float y) {
    super(x,y);
  }
  
  void display() {
    fill(0,0,255);
    pushMatrix();
    translate(x,y);
    rotate(atan((mouseY-y)/(mouseX-x)));
    tri(0,0,30,0);
    popMatrix();
  }
  
  void move(int num) {
    if (num == 0) {
      x-=5;
    }
    if (num == 1) {
      x+=5;
    }
    if (num == 2) {
      y-=5;
    }
    if (num == 3) {
      y+=5;
    }
  }
}