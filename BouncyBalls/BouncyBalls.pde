ArrayList<Ball> ballsack;

void setup() {
  ballsack = new ArrayList<Ball>();
  for (int i = 0; i < 10; i++) {
    ballsack.add(new Ball(10 + random(25), random(width), random(height)));
  }
}

void draw() {
  background(0);
  for (Ball b: ballsack) {
    b.go();
  }
}
