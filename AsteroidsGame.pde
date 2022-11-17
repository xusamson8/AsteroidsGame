//your variable declarations here
Star[] starling = new Star[200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size (500,500);
  for(int i= 0 ; i< starling.length; i++)
  {
    starling[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for (int i= 0 ; i < starling.length ; i++)
  {
   starling[i].show(); 
  }
}

public void keyPressed()
{
  if (key == 'h')
  {
    bob.hyperspace();
  }
  
    if (key == 'w')
  {
    bob.accelerate(0.5);
  }
  
   if (key == 's')
  {
    bob.accelerate(-0.5);
  }
  
   if (key == 'd')
  {
    bob.turn(15.503120940);
  }
  
  if (key == 'a')
  {
    bob.turn(-15.5980967057);
  }
}
 
