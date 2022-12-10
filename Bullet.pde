
class Bullet extends Floater{
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getShipXspeed();
    myYspeed = bob.getShipYspeed();
    myPointDirection = bob.getmyPointDirection();
    accelerate(0.4);  }
  
  public void show(){
   fill(255);
    noStroke();
   ellipse((float)myCenterX,(float)myCenterY,5,5);
  }
  
   public double getX(){ //accessor, returns int
   return myCenterX; 
  }

  public double getY() {
   return myCenterY; 
  }
}
