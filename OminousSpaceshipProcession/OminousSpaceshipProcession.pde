float x1, x2, y, x5, y5;

void setup() {
  size(900, 600);
  x1 = -1000;
  x2 = x1;
  y = 0;
  
  x5 = width/2;
  y5 = height*1.35;
}

void draw() {
  background(0);
  
  fill(160);
  for (int i = 0; i < 37; i++) {
    for (int j = 0; j < 68; j++) {
      spaceship(x1 + 40*i, y + 20*j);
    }
  }
  for (int i = 37; i < 48; i++) {
    for (int j = 0; j < 68; j++) {
      spaceship(x2 + 40*i, y + 20*j);
    }
  }
  
  x1 -= 0.5;
  x2 += 0.5;
  y -= 0.5;
  
  fill(128, 0, 128);
  for (int i = 0; i < 7; i++) {
    spaceship(x5, y5 + 40*i);
  }
  y5 -= 1;
}

void spaceship(float x, float y) {
  ellipse(x, y, 30, 15);
}

//void mousePressed() {
//  mouseX;
//  mouseY;
//}
