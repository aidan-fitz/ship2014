void setup() {
  size(600, 400);
  // graph goes from (25, 25) to (575, 375)
  // each strip is 25px wide [0, 22]
}

void draw() {
  background(0);
  fill(192);
  stroke(192);
  float lambda = mouseX * 0.04;
  text("\u03bb = " + lambda, 10, 15);
  // graph the function
  for (int k = 0; k < 24; k++) {
    float rectHeight = poisson(lambda, k) * 375;
    rect(k * 25, 400 - rectHeight, 25, rectHeight);
  }
}

float poisson(float lambda, int k) {
  return exp(-lambda) * pow(lambda, k) / factorial(k);
}

float factorial(int k) {
  if (k == 0)
    return 1;
  return factorial(k - 1) * k;
}
