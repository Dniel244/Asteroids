//Daniel Altshuler
//October 6, 2021
/*
Asteroids project
 Play as a ship tryingto stay alive by destroing asteroids and UFOs 
 using the spacebar to shoot.
 
 */

//MODE FRAMEWORK------------------------------------------------------------------
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;


//FONT-------------------------------------------------------------------------------

//GIF-------------------------------------------------------------------------------
PImage[] gif;
int numberOfFrames;
int f = 0;



//MOVEMENT VARIABLES------------------------------------------------------------------
boolean upkey, downkey, leftkey, rightkey, spacekey;
//SHIP------------------------------------------------------------------
Ship myShip;
//ARRAY LIST------------------------------------------------------------------
ArrayList<GameObject> myObjects;

//SETUP/DRAW-------------------------------------------------------------------
void setup() {
  mode = INTRO;
  colorMode(HSB);
  rectMode(CENTER);
  size(800, 600);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());

  //gif
  numberOfFrames = 29;
  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.05s.gif");
    i++;
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("try again = " + mode);
  }
}
