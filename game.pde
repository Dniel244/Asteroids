//timers and randomizer
int UFOTimer = 900;
int UFOThreshold = 900;
int UFOshotTimer = 0;
int UFObthreshold = 100;
int UFOx, UFOy, UFOvx, UFOvy;
int UFODtime;
int ttimer = 0;
int ttimerThreshold = 190;
int r;

void game() {

  background(white);

  //recharging teleport
  if (ttimer < ttimerThreshold) {
    ttimer++;
  }

  //teleport
  int k = 0;
  while (k < myObjects.size()) {
    GameObject myObj = myObjects.get(k);


    if (myObj instanceof Asteroid) {


      float x;
      float y;
      if (teleport) {
        x = random(0, width);
        y = random(0, height);
        if (dist(x, y, myObj.loc.x, myObj.loc.y) < myShip.size/2 + myObj.size + 200) {
          teleport = true;
        } else {
          myShip.loc.x = x;
          myShip.loc.y = y;
          teleport = false;
          ttimer = 0;
          ttimer++;
          myShip.vel = new PVector(0, 0);
        }
      }
    }
    k++;
  }

  //randomize UFO spawn
  UFOTimer++;
  if (UFOTimer >= UFOThreshold) {
    r = int(random(0, 4));
    UFODtime = 0;

    if (r == 0) {
      UFOx = int(random(0, width));
      UFOy = 0;
      UFOvx = 0;
      UFOvy = +1;


      if (UFOy >= 100) {
        UFOvy = 0;
      }
    }
    if (r == 1) {
      UFOx = int(random(0, width));
      UFOy = height;
      UFOvx = 0;
      UFOvy = -1;

      if (UFOy <= 500) {
        UFOvy = 0;
      }
    }
    if (r == 2) {
      UFOx = 0;
      UFOy = int(random(0, height));
      UFOvx = +1;
      UFOvy = 0;

      if (UFOx >= 100) {
        UFOvx = 0;
      }
    }
    if (r == 3) {

      UFOx = width;
      UFOy = int(random(0, height));
      UFOvx = -1;
      UFOvy = 0;
    }
    //Spawn UFO/cooldown
    myObjects.add (new UFO());
    UFOTimer = 0;
  }
  int i = 0;
  //show objects
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();
    //delete objects
    if (myObj.lives <= 0) {
      myObjects.remove(i);
    } 






    if (myObj instanceof Ship) {





      //Gameoverlose/displaying lives
      if (myObj.lives <= 0) {
        mode = GAMEOVERLOSE;
      } else if (myObj.lives > 0) {
        fill(black);
        textAlign(CENTER);
        textSize(50);
        text("lives:" + myObj.lives, 700, 100);

        //visual for teleport cooldown
        noFill();
        stroke(black);
        rect(670, 550, 190, 20);
        fill(icolor);
        noStroke();
        rect(670, 550, ttimer, 17);
      }
    }

    //firing UFO Bullet and lifespan of UFO
    if (myObj instanceof UFO) {
      if (myObj.lives > 0) {
        UFOshotTimer++;
        UFODtime++;
      }
    }
    i++;
  }
  //Gameover win
  if (score >= 117) {
    mode = GAMEOVERWIN;
  }
}
//clicking on the screen
void gameClicks() {
  mode = PAUSE;
}
