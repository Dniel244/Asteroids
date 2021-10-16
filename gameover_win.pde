void gameoverWin() {

  background(0, 200, 200);
  fill(0, 0, 200);
  textAlign(CENTER);
  textSize(50);
  text("GG ILL GET YOU NEXT TIME", width/2, height/2);
}

void gameoverWinClicks() {
  mode = INTRO;

  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();


  int j = 0;
  while (j <= 8) {
    myObjects.add(new Asteroid());

    j++;

    score = 0;
  }

  myObjects.add(myShip);
  myShip.itimer = 0;
  icolor = darkBlue;
  UFOTimer = 851;
  UFODtime = 0;
}
