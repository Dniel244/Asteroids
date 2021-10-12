class Ship extends GameObject {

  //1. Instance Variables
  PVector dir;
  int shotTimer, threshold, dcooldown;
  //2. Constructor(s)
  Ship() {

    lives = 3;
    loc = new PVector(width/2, height/2);
    vel = new PVector (0, 0);
    dir = new PVector(0, -0.1);
    shotTimer = 0;
    threshold = 15;
    dcooldown = 120;
    
    
  }

  //3. Behaviour Functions
  void show() {
    int j = #00FFA3;

    //show
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {
        if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) { 

          if (dcooldown < 120) {
            j = #0057FF;
          }
        }
      }


      i++;
    }
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    noFill();
    strokeWeight(5);
    stroke(j);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }

  void act() {
    super.act();

    if (vel.mag() > 5)
      vel.setMag(5);

    shotTimer++;


    if (upkey) {   
      vel.add(dir);
      myObjects.add(new Fire());
    }
    if (downkey)  vel.sub(dir);
    if (leftkey)  dir.rotate( -radians(5) );
    if (rightkey) dir.rotate( radians(5) );
    if (spacekey && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;

      //cooldown
    }





    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {
        if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) { 
          dcooldown++;
          if (dcooldown > 120) {
            lives = lives - 1;
            dcooldown = 0;
            println(" " + lives);
          }
        }
      }


      i++;
    }
  }
}
