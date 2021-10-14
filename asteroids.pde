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
final int GAMEOVERLOSE = 2;
final int GAMEOVERWIN = 3;
final int PAUSE = 4;

//SCORE
int score = 0;




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


  int j = 0;
  while (j <= 8) {
    myObjects.add(new Asteroid());

    j++;
  }
  myObjects.add(myShip);

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
  } else if (mode == GAMEOVERLOSE) {
    gameoverLose();
  } else if (mode == GAMEOVERWIN) {
    gameoverWin();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("try again = " + mode);
  }
}
