class Ship {
 
  //1. Instance Variables
  int lives;
  PVector loc;
  PVector vel;
  PVector dir;
  //2. Constructor(s)
  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    vel = new PVector (0, 0);
    dir = new PVector(0, -0.1);
  }
  
  //3. Behaviour Functions
  void show() {
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    noFill();
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }
  
  void act() {
    loc.add(vel);
    
    if (upkey)    vel.add(dir);
    if (downkey)  vel.sub(dir);
    if (leftkey)  dir.rotate( -radians(5) );
    if (rightkey) dir.rotate( radians(5) );
    if (spacekey) myBullets.add(new Bullet());
    
    if (loc.y < -50)       loc.y = height+50;
    if (loc.y > height+50) loc.y = -50;
    if (loc.x < -50)       loc.x = width+50;
    if (loc.x > width+50)  loc.x = -50;
  }
  
}
