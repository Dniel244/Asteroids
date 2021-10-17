class UFO extends GameObject {
  //instance variables
  PVector dir;
  //UFO constructor
  UFO() {
    lives = 1;
    loc = new PVector(UFOx, UFOy);
    vel = new PVector(UFOvx, UFOvy);
    size = 75;
  }

  //how UFO appears
  void show() {
    noFill();
    stroke(black);
    circle(loc.x, loc.y - 25, 50);
    fill(black);
    ellipse(loc.x, loc.y - 10, 100, 30);
    stroke(icolor);
    fill(icolor);
    circle(loc.x-30, loc. y - 10, 10);
    circle(loc.x, loc. y - 10, 10);
    circle(loc.x+30, loc. y - 10, 10);
  }

  void act() {
    super.act();

    //calculating lifespan of UFO based on spawn location and velocity 
    if (r == 0) {
      if (UFODtime >= 600) {
        lives = 0;
        UFODtime = 0;
      }
    }
    if (r == 1) {
      if (UFODtime >= 600) {
        lives = 0;
        UFODtime = 0;
      }
    }
    if (r == 2) {
      if (UFODtime >= 850) {
        lives = 0;
        UFODtime = 0;
      }
    }
    if (r == 3) {
      if (UFODtime >= 850) {
        lives = 0;
        UFODtime = 0;
      }
    }



    //firing UFO bullets occasionally
    float vx = myShip.loc.x - loc.x;
    float vy = myShip.loc.y - loc.y;
    if (UFOshotTimer >= UFObthreshold) {
      myObjects.add(new UFOBullet(loc.x, loc.y, vx, vy));
      UFOshotTimer = 0;
    }



    //UFO colisions/spawning particles
    int i = 0;
    int j = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y ) < size/2 + myObj.size) {
          myObj.lives = 0; 
          lives = 0;
          while (j < 11) {
            myObjects.add(new UFOparticles(loc.x, loc.y, vx, vy));
            j++;
          }
        }
      }




      i++;
    }
  }
}
