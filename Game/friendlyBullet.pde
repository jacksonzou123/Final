class friendlyBullet extends bullet{
  
  public friendlyBullet(float x,float y,float heading){
    super(x,y,heading,1);
  }
  
  float getX(){
    return x;
  }
  
  float getY(){
    return y;
  }
  
  void move(){
    x+=5*cos(heading);
    y+=5*sin(heading);
  }
  
  void display(){
    fill(255,0,0);
    ellipse(x,y,10,10);
  }
  
  boolean check(){
    return (getX() <= 0 || getX() >= width || getY() <= 0 || getY() >= height);
  }
}
