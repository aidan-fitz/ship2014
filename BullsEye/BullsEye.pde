void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  stroke(0);
//  bullseye(width/2, height/2, 400, 5, #ff0000, #ffffff);
  bullseye(width/2, height/2, 400, 29, #ff0000, #ff7f00, #ffcf00, #009f00, #009fff, #0000ff, #bf00bf);
//  rbullseye(width/2, height/2, 400, 25);
}

void bullseye(float x, float y, float diameter, 
float ringSize, color... colors) {
  int i = 0;
  for (float d = diameter; d > 0; d -= ringSize) {
    fill(colors[i]);
    i++;
    if (i >= colors.length)
      i -= colors.length;
    ellipse(x, y, d, d);
  }
}

void rbullseye(float x, float y, float diameter, float ringSize) {
  for (float d = diameter; d > 0; d -= ringSize) {
    fill(randint(), randint(), randint());
    ellipse(x, y, d, d);
  }
}

int randint() {
  return (int) random(256);
}
