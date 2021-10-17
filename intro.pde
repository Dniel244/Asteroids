void intro() {



  //gif
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;

  //Asteroids button

  if (mouseX > width/2 - 175 && mouseX < width/2 + 175 && mouseY > 35 && mouseY <  115) {
    strokeWeight(10);
  } else {
    strokeWeight(5);
  }

  stroke(grey);
  fill(black);

  rect(width/2, height/2 - 220, 350, 70);


  textAlign(CENTER);
  fill(grey);
  textSize(100);
  textFont(Asteroid);
  text("Asteroids", width/2, height/2 - 200);

  //instructions

  fill(white);

  textSize(20);
  text("Click here to begin", width/2, height/2 - 270);
  textAlign(CORNER);
  text("press spacebar to shoot bullets", 0+10, height-200);
  text("pres c key to teleport (only when bar in bottom right is full)", 0+10, height-150);
  text("when ship and asteroids are dark blue you have immunity", 0+10, height-100);
  text("Avoid UFOs", 0+10, height-50);
  text("Destroy all asteroids to win the game!", 0+10, height-10);
}
//clicking the screen
void introClicks() {
  if (mouseX > width/2 - 175 && mouseX < width/2 + 175 && mouseY > 35 && mouseY <  115) {
    mode = GAME;
  }
}
