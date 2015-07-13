int red = 255;
int green = 0;
int blue = 0;

void draw() {
  background(red, green, blue);
  incrementColor();
}

void incrementColor() {
  if (red > 0 && blue == 0) {
    if (green < 255) {
      // red => yellow
      green++;
    }
    else {
      // yellow => green
      red--;
    }
  }
  else if (red == 0 && green > 0) {
    if (blue < 255) {
      // green => cyan
      blue++;
    }
    else {
      // cyan => blue
      green--;
    }
  }
  else if (red < 255) {
    // blue => magenta
    red++;
  }
  else {
    // magenta => red
    blue--;
  }
}
