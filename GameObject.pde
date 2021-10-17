class GameObject {

  int lives;
  PVector loc;
  PVector vel;
  int size;

  GameObject() {
  }

  void show() {
  }

  void act() {
    //adding every objects vel to their loc
    loc.add(vel);
    //teleporting objects back if they go offscreen
    if (loc.y < -50)       loc.y = height+50;
    if (loc.y > height+50) loc.y = -50;
    if (loc.x < -50)       loc.x = width+50;
    if (loc.x > width+50)  loc.x = -50;
  }
}
