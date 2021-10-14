int UFOTimer = 1000;
int UFOThreshold = 1000;

void game() {
  background(255);

  UFOTimer++;
  
  if (UFOTimer >= UFOThreshold) {
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
    i++;
  }



  if (score >= 117) mode = GAMEOVERWIN;
}

void gameClicks() {
  mode = PAUSE;
}
