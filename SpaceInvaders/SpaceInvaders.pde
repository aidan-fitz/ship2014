float x, y, hspace = 40, vspace = 24;
int counter, numshipsX, numshipsY = 1;

int oldWidth = 900, oldHeight = 600;

int direction;

void setup() {
  // resizable window
  size(oldWidth, oldHeight);
  frame.setResizable(true);
  // settings
  x = leftMargin();
  y = topMargin();
  counter = 25;
  numshipsX = 8;
  numshipsY = 4;
  direction = RIGHT;
}

void draw() {
  background(0);
  
  fill(160);
  for (int i = 0; i < numshipsX; i++) {
    for (int k = 0; k < numshipsY; k++) {
      spaceship(x + hspace*i, y + vspace*k);
    }
  }
  
  switch(direction) {
    // Spaceships do not move up
//    case UP:    y -= 2;
//                break;
    case DOWN:  y += 2;
                counter--;
                if (counter == 0) {
                  if (x == rightMargin())
                    direction = LEFT;
                  else
                    direction = RIGHT;
                  counter = 25;
                }
                break;
    case LEFT:  x -= 3;
                if (x <= leftMargin()) {
                  direction = DOWN;
                  x = leftMargin();
                }
                break;
    case RIGHT: x += 3;
                if (x >= rightMargin()) {
                  direction = DOWN;
                  x = rightMargin();
                }
                break;
  }
  
  if (y > bottomMargin())
    setup();
  
  oldWidth = width;
  oldHeight = height;
}

void spaceship(float x, float y) {
  ellipse(x, y, 30, 15);
}

float leftMargin() {
  return hspace + 10;
}

float rightMargin() {
  return width - 10 - numshipsX * hspace;
}

float topMargin() {
  return vspace;
}

float bottomMargin() {
  return height - 10 - numshipsY * vspace;
}
