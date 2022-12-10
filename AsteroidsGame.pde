//your variable declarations here
Star[] starling = new Star[200];
Spaceship bob = new Spaceship();
Asteroid rock = new Asteroid();
ArrayList <Asteroid> rockList = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
int count = 0;

public void setup() 
{
  size (500,500);
  for(int i= 0 ; i< starling.length; i++){
    starling[i] = new Star();
  }
  for (int nI = 0; nI <= 10 ; nI++ ) { 
  rockList.add(new Asteroid());
  }

}
public void draw() 
{
  count++;
  background(0);
  bob.show();
  bob.move();
  for (int i= 0 ; i < starling.length ; i++){
   starling[i].show(); 
  }
  rock.show();
  rock.move();
  for (int nI = 0; nI < rockList.size() ; nI++ ) { 
  rockList.get(nI).move();
  rockList.get(nI).show();
  float d = dist((float)bob.getX(),(float)bob.getY(), (float)rockList.get(nI).getX(), (float)rockList.get(nI).getY());
   if (d < 10){
    rockList.remove(nI);
   }
 for (int nJ = 0; nJ < shots.size(); nJ++ ) { 
  shots.get(nJ).move();
  shots.get(nJ).show();
  float dd = dist((float)shots.get(nJ).getX(),(float)shots.get(nJ).getY(), (float)rockList.get(nI).getX(), (float)rockList.get(nI).getY());
   if (dd < 5){
    shots.remove(nJ);
    rockList.remove(nI);
    break;
   }
 }
 
 
 
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
    bob.turn(5.503120940);
  }
  
  if (key == 'a')
  {
    bob.turn(-5.5980967057);
  }
  
  if (key == ' ')
  {
   
   if (count % 5 == 0) 
   {
     shots.add(new Bullet(bob)); 
     count = 0;
   }
  }
  
}
