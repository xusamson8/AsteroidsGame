class Asteroid extends Floater 
{
 private double rotSpeed;
 public Asteroid()
 {
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-1,0,10,8,0};
    myColor = color(147,146,140);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*5);
    myYspeed = (int)(Math.random()*5);
    myPointDirection = 0;
    rotSpeed= (int)(Math.random()*10)-10;
 }
 public void move()
 {
   turn(rotSpeed);
   super.move();
 }
 

  public double getX(){ //accessor, returns int
   return myCenterX; 
  }

  public double getY() {
   return myCenterY; 
  }
 
  public double getPointDirection(){ //accessor, returns int
   return myPointDirection; 
  }

  public double getXspeed() {
   return myXspeed; 
  }
  
  public double getYspeed() {
   return myYspeed; 
  }
}
