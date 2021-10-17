class UFOBullet extends GameObject {
  //time inbetween shots
  int UFOBtimer;
  //UFO Bullet constructor
  UFOBullet(float x, float y, float vx, float vy) {
    loc = new PVector(x, y);
    vel = new PVector(vx, vy);
    UFOBtimer = 80;
    lives = 1;
    size = 10;
    //how far bullets travel
    vel.setMag(5);
  }

  //how UFO bullets appear
  void show() {
    stroke(yellow);
    fill(yellow);
    ellipse(loc.x, loc.y, size, size);
  }


  void act() {
    super.act();
    //deleting bullets if they dont find their target
    UFOBtimer--;
    if (UFOBtimer == 0) {
      lives = 0;
    }
  }
}
