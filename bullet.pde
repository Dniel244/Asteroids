class Bullet extends GameObject {

  int timer;
  
  Bullet() {
    timer = 60;
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    vel.setMag(10);
    size = 10;
  }
  
  void show() {
    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, size, size);
  }
  
  void act() {
    super.act();
    
    timer--;
    if (timer == 0) {
     lives = 0; 
    }
  }
}
