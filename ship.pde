class Ship extends GameObject {
 
  //1. Instance Variables
  PVector dir;
  int shotTimer, threshold;
  //2. Constructor(s)
  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    vel = new PVector (0, 0);
    dir = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 60;
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
    super.act();
    
    shotTimer++;
    
    if (upkey)    vel.add(dir);
    if (downkey)  vel.sub(dir);
    if (leftkey)  dir.rotate( -radians(5) );
    if (rightkey) dir.rotate( radians(5) );
    if (spacekey && shotTimer >= threshold) {
    myObjects.add(new Bullet());
    shotTimer = 0;
    }
        
    
  }
  }
  
