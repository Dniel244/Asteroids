void game() {
  background(0);
  //text("lives:" + glives, 700, 0);

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
      }
    }
    i++;
  }
  
  if (score >= 117) mode = GAMEOVERWIN;
}

void gameClicks() {
}
