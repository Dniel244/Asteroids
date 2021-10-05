class Asteroid extends GameObject {
  
  Asteroid() {
    lives = 1;
   loc = new PVector (random(0, width), random(0, height));
   vel = new PVector (0,1);
   vel.rotate ( random(0, TWO_PI) );
   size = 100;
  }
  
  void show() {
   noFill();
   stroke(255);
   ellipse(loc.x, loc.y, size, size);
  }
  
  void act() {
   super.act();
   
   int i = 0;
while(i < myObjects.size()) {
  GameObject myObj = myObjects.get(i);
  if (myObj instanceof Bullet) {
    if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) {
   myObj.lives = 0; 
   lives = 0;
  }
  }
  
  
  i++;
  }
 }
}
