float x, y, z, theta;

void setup() {
  size(400, 400, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  theta = 0;
}

void draw() {
  background(255);
  rotateX(-PI/12);
  rotateY(-PI/12 + radians(theta));
  translate(x, y, z);
//  rectMode(CENTER);
//  rect(0, 0, 100, 100);
  box(100);
//  z++;
  theta += 1;
}
