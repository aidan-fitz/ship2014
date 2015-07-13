class Ball {

  private float m;
  private PVector d, v, a;
  private color c;

  /**
   * Initializes a Ball with the given mass and position,
   * a random unit velocity, and zero acceleration.
   */
  Ball(float mass, float x, float y) {
    if (m > 0) {
      m = mass;
    } else {
      throw new IllegalArgumentException("Object's mass must be positive");
    }
    d = new PVector(x, y);
    v = PVector.random2D();
    a = new PVector(0, 0);
    c = color(102 + random(153), 102 + random(153), 102 + random(153));
  }
  
  void go() {
    display();
    updateProperties();
  }

  void updateProperties() {
    v.add(a);
    d.add(v);
    // bounce off sides of screen, negate x, y component of velocity
    if (d.x < 0 || d.y >= width) {
      v.set(-v.x, v.y);
//      a.set(-a.x, a.y);
    }
    if (d.y < 0 || d.y >= height) {
      v.set(v.x, -v.y);
//      a.set(a.x, -a.y);
    }
  }

  void display() {
    noStroke();
    fill(c);
    float radius = sqrt(m);
    ellipse(x, y, radius, radius);
  }

  /**
   * Returns the ball's position relative to the upper left corner.
   */
  PVector getXY() {
    return d;
  }

  void setXY(float x, float y) {
    d.set(x, y);
  }
  
  PVector getVelocity() {
    return v;
  }
  
  void setVelocity(float x, float y) {
    v.set(x, y);
  }
  
  PVector getMomentum() {
    return new PVector(m*v.x, m*v.y);
  }
  
  
}

