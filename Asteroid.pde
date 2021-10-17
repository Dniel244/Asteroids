
class Asteroid extends GameObject {

  // big asteroids constructor
  Asteroid() {
    lives = 1;
    loc = new PVector (random(0, width), random(0, height));
    vel = new PVector (0, 1);
    vel.rotate ( random(0, TWO_PI) );
    size = 100;
  }
  // smaller asteroids constructor
  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector (x, y);
    vel = new PVector (0, 1);
    vel.rotate ( random(0, TWO_PI) );
    size = s;
  }

  //how asteroids appear
  void show() {

    noFill();
    stroke(icolor);
    ellipse(loc.x, loc.y, size, size);
  }

  void act() {
    super.act();

    int i = 0;
    int j = 0;
    float vx = 5;
    float vy = 5;



    //asteroid collisions
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet || myObj instanceof UFOBullet) {
        if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) {
          myObj.lives = 0; 
          score++;
          lives = 0;
          //spawn smaller asteroids
          if (size >= 50) {
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
          }
          //particles when destroyed
          if (size < 50) {
            while (j < 25) {
              myObjects.add(new Particles(loc.x, loc.y, vx, vy));
              j++;
            }
          }
        }
      }




      i++;
    }
  }
}
