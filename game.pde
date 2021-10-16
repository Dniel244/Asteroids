int UFOTimer = 900;
int UFOThreshold = 900;
int UFOshotTimer = 0;
int UFObthreshold = 100;
int t;
int UFOx, UFOy, UFOvx, UFOvy;
int UFODtime;

void game() {

  background(255);

  UFOTimer++;

  if (UFOTimer >= UFOThreshold) {
    //t = int(random(0, 4));
    t = 3;
    UFODtime = 0;

    if (t == 0) {
      UFOx = int(random(0, width));
      UFOy = 0;
      UFOvx = 0;
      UFOvy = +1;


      if (UFOy >= 100) {
        UFOvy = 0;
      }
    }
    if (t == 1) {
      UFOx = int(random(0, width));
      UFOy = height;
      UFOvx = 0;
      UFOvy = -1;

      if (UFOy <= 500) {
        UFOvy = 0;
      }
    }
    if (t == 2) {
      UFOx = 0;
      UFOy = int(random(0, height));
      UFOvx = +1;
      UFOvy = 0;

      if (UFOx >= 100) {
        UFOvx = 0;
      }
    }
    if (t == 3) {

      UFOx = width;
      UFOy = int(random(0, height));
      UFOvx = -1;
      UFOvy = 0;
    }
    myObjects.add (new UFO());
    UFOTimer = 0;
  }
  int i = 0;

  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives <= 0) {
      myObjects.remove(i);
    } 

    if (myObj instanceof Ship) {

      if (myObj.lives == 0) {
        mode = GAMEOVERLOSE;
      } else if (myObj.lives > 0) {
        fill(0, 200, 200);
        textAlign(CENTER);
        textSize(50);
        text("lives:" + myObj.lives, 700, 100);
      }
    }

    if (myObj instanceof UFO) {
      if (myObj.lives > 0) {
        UFOshotTimer++;
        UFODtime++;
      }
    }
    i++;
  }
}

void gameClicks() {
  mode = PAUSE;
}
