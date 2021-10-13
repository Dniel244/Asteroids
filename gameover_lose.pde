void gameoverLose() {

  background(0, 200, 200);
  fill(0, 0, 200);
  textAlign(CENTER);
  textSize(100);
  text("GAMEOVER", width/2, height/2);
}

void gameoverLoseClicks() {
  mode = INTRO;
   myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
   
   int j = 0;
  while (j <= 8) {
  myObjects.add(new Asteroid());

  j++;
  
  score = 0;
  }
}
