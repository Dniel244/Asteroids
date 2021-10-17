
class Ship extends GameObject {
  //1. Instance Variables
  PVector dir;
  int shotTimer, bthreshold, itimer, ithreshold;
  //2. Constructor(s)
  Ship() {

    lives = 3;
    loc = new PVector(width/2, height/2);
    vel = new PVector (0, 0);
    dir = new PVector(0, -0.2);
    shotTimer = 0;
    bthreshold = 15;
    itimer = 0;
    ithreshold = 180;
  }


  //3. Behaviour Functions
  void show() {


    //how ship appears

    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading());
    noFill();
    strokeWeight(5);
    stroke(icolor);
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }


  void act() {
    super.act();

    if (vel.mag() > 5)
      vel.setMag(5);
//shot and immunity timers
    shotTimer++;
    itimer++;

//moving forward/spawning fire
    if (upkey) {   
      vel.add(dir);
      int j = 0;
      //80 fire particles
      while (j <=80) {
        myObjects.add(new Fire());

        j++;
      }
    }
    //moving bacl
    if (downkey)  vel.sub(dir);
    //turning left
    if (leftkey)  dir.rotate( -radians(5) );
    //turning right
    if (rightkey) dir.rotate( radians(5) );
    //firing bullets
    if (spacekey && shotTimer >= bthreshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;

      //cooldown
    }




    //showing immunity
    if (itimer >= ithreshold) {

      icolor = lightBlue;

      //ship collisions
      int i = 0;
      while (i < myObjects.size()) {
        GameObject myObj = myObjects.get(i);


        if (myObj instanceof Asteroid || myObj instanceof UFO || myObj instanceof UFOBullet) {
          if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) {
            lives--;
            itimer = 0;
            icolor = darkBlue;
          }
        }
        i++;
      }
    }

    
  }
}
