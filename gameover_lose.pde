void gameoverLose() {

  background(red);
  //GAMEOVER text
  fill(darkBlue);
  textAlign(CENTER);
  textSize(100);
  textFont(Asteroid);
  text("GAMEOVER", width/2, height/2);




  //Gameover button

  if (mouseX > width/2 - 175 && mouseX < width/2 + 125 && mouseY > 445 && mouseY <  525) {
    strokeWeight(10);
  } else {
    strokeWeight(5);
  }

  stroke(darkBlue);
  fill(lightBlue);

  rect(width/2, height/2 + 180, 250, 70);
  fill(darkBlue);
  text("BACK", width/2, height/2 + 200);
}
//clicking the screen
void gameoverLoseClicks() {
  //preparing reseting ship
  if (mouseX > width/2 - 175 && mouseX < width/2 + 125 && mouseY > 445 && mouseY <  525) {
    mode = INTRO;
    myShip = new Ship();
    myObjects = new ArrayList<GameObject>();

    //reseting asteroids
    int j = 0;
    while (j <=8) {
      myObjects.add(new Asteroid());

      j++;

      score = 0;
    }
    //reseting ship
    myObjects.add(myShip);
    //reseting timers
    myShip.itimer = 0;
    icolor = darkBlue;
    UFOTimer = 851;
    UFODtime = 0;
    ttimer = 0;
  }
}
