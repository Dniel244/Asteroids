class Fire extends GameObject {

  int t; //transparecy

  Fire() {
    lives = 1;
    size  = 10;
    t     = 255;
    //loc = new PVector (myShip.loc.x, myShip.loc.y);
    loc = myShip.loc.copy();
    vel = myShip.dir.copy();
    vel.rotate(PI); //180 degree
    vel.setMag(3);
  }

  void show() {
    noStroke();
    fill(#FA4300, t);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    t = t - 10;
    if (t <= 0) lives = 0;
  }
}
