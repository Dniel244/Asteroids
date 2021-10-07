class Fire extends GameObject {
  
  int t; //transparecy
  
  Fire() {
    lives = 1;
    size  = 10;
    t     = 255;
    //loc = new PVector (myShip.loc.x, myShip.loc.y);
    loc = myShip.loc.copy();
    vel = myShip.dir.copy();
    vel.rotate(radians(180)); //180 degree
  }
  
  void show() {
    
  }
  
  void act() {
    
  }
  
  
}
