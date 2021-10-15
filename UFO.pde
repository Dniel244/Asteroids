class UFO extends GameObject {
  //instance variables
  PVector dir;
  //constructor
  UFO() {
    lives = 1;
    loc = new PVector(UFOx, UFOy);
    vel = new PVector(UFOvx, UFOvy);
    size = 75;
  }

  void show() {
    noFill();
    stroke(0);
    circle(loc.x, loc.y - 25, 50);
    fill(0);
    ellipse(loc.x, loc.y - 10, 100, 30);
    stroke(icolor);
    fill(icolor);
    circle(loc.x-30, loc. y - 10, 10);
    circle(loc.x, loc. y - 10, 10);
    circle(loc.x+30, loc. y - 10, 10);
  }

  void act() {
    super.act();


    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if ( dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y ) < size/2 + myObj.size) {
          myObj.lives = 0; 
          lives = 0;
        }
      }




      i++;
    }
  }
}
