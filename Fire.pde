  int c;
class Fire extends GameObject {

  int t; //transparecy
  PVector nudge;
  int r;


  Fire() {
    lives = 1;
    size  = 10;
    t     = 255;
    //loc = new PVector (myShip.loc.x, myShip.loc.y);
    loc = myShip.loc.copy();
    nudge = myShip.dir.copy();
    nudge.rotate(PI);
    nudge.setMag(30);
    loc.add(nudge);
    vel = myShip.dir.copy();
    vel.rotate(PI+random(-0.5, 0.5)); //180 degree
    vel.setMag(2);
    
    r = int(random(1, 4));
    if (r == 1) {
      c = #FA4300;
    } else if (r == 2) {
      c = #FA8A00;
    } else if (r == 3) {
      c = #FAE600;
    }
  }

  void show() {
    noStroke();
    fill(c, t);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    t = t - 10;
    if (t <= 0) lives = 0;
  }
}
