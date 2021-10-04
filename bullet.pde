class Bullet {
   int lives;
  PVector loc;
  PVector vel;
  
  Bullet() {
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    vel.setMag(10);
  }
  
  void show() {
    stroke(255);
    noFill();
    circle(loc.x, loc.y, 10);
  }
  
  void act() {
    loc.add(vel);
    
    if (loc.y < -50)       loc.y = height+50;
    if (loc.y > height+50) loc.y = -50;
    if (loc.x < -50)       loc.x = width+50;
    if (loc.x > width+50)  loc.x = -50;
  }
}
