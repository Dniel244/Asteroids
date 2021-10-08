void intro() {





















  //gif
  image(gif[f], 0, 0, width, height);
  f++;
  if (f == numberOfFrames) f = 0;

  textAlign(CENTER);
  fill(0, 5, 100);
  textSize(100);
  text("Asteroids", width/2, height/2 - 200);
}

void introClicks() {

  mode = GAME;
}
