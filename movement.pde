//arrow keys = true  and teleport key (c)
void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == ' ') spacekey = true;
  if (key == 'c') {
    if (ttimer >= ttimerThreshold) {
      teleport = true;
    } else {
      teleport = false;
    }
  }
}
//arrow key = false
void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == ' ') spacekey = false;
}
