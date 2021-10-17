int cf; //color of fire
class Fire extends GameObject {

  int t; //transparecy
  PVector nudge; //offset of fire
  int r; //color randomizer

  //Fire constructor
  Fire() {
    lives = 1;
    size  = 10;
    t     = 255;
    //fire loc same as ship and coming out of the back
    loc = myShip.loc.copy();
    nudge = myShip.dir.copy();
    nudge.rotate(PI);
    nudge.setMag(30);
    loc.add(nudge);
    vel = myShip.dir.copy();
    vel.rotate(PI+random(-0.5, 0.5)); //180 degree
    vel.setMag(2);

    //color randomization
    r = int(random(1, 4));
    if (r == 1) {
      cf = redOrange;
    } else if (r == 2) {
      cf = orange;
    } else if (r == 3) {
      cf = yellow;
    }
  }

  //how fire appears
  void show() {
    noFill();
    stroke(cf, t);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    //deleting fire particles
    t = t - 10;
    if (t <= 0) lives = 0;
  }
}
