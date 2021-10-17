//when mouse clicked
void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVERLOSE) {
    gameoverLoseClicks();
  } else if (mode == GAMEOVERWIN) {
    gameoverWinClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  }
}
