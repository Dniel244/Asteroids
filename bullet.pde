class Bullet extends GameObject {

  int timer;
  //bullet construcor
  Bullet() {
    timer = 60;
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    size = 10;
    //how far bullets travel
    vel.setMag(10);
  }

  //how bullets appear
  void show() {
    stroke(black);
    fill(black);
    ellipse(loc.x, loc.y, size, size);
  }


  void act() {
    super.act();
    //deleting bulelts if they dont find their target
    timer--;
    if (timer == 0) {
      lives = 0;
    }
  }
}
