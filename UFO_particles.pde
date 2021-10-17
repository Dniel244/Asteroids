class UFOparticles extends GameObject {

  int t; //trasnperency


  //UFO Particle constructir
  UFOparticles(float x, float y, float vx, float vy) {
    lives = 1;
    size = 10;
    t = 255;   
    loc = new PVector(x, y);
    vel = new PVector(vx, vy);
    vel.rotate(PI+random(-10, 10)); //180 degree
    vel.setMag(5);
  }
  //how UFO Particles appear
  void show() {
    noFill();
    stroke(black, t);
    square(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    //deleting UFO Particles
    t = t - 10;
    if (t <= 0) lives = 0;
  }
}
