class UFOBullet extends GameObject {

  int UFOBtimer;

  UFOBullet(float x, float y, float vx, float vy) {
    loc = new PVector(x, y);
    vel = new PVector(vx, vy);
    UFOBtimer = 80;
    lives = 1;

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
