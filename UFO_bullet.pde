class UFOBullet extends GameObject {

  int UFOBtimer;

  UFOBullet() {
    UFOBtimer = 60;
    lives = 1;
    if (UFOshotTimer >= UFObthreshold) {
      loc = new PVector(UFOx, UFOy);
      vel = new PVector(UFOvx, UFOvy);
    }
    vel.setMag(5);
    size = 10;
  }

  void show() {
    stroke(#ECFC0A);
    fill(#ECFC0A);
    ellipse(loc.x, loc.y, size, size);
  }

  void act() {
    super.act();

    UFOBtimer--;
    if (UFOBtimer == 0) {
      lives = 0;
    }
  }
}
