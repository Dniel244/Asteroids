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
}
//clicking the screen
void introClicks() {
  if (mouseX > width/2 - 175 && mouseX < width/2 + 175 && mouseY > 35 && mouseY <  115) {
    mode = GAME;
  }
}
