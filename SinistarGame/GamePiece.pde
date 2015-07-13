/**
 * The base class for all game objects.
 */
class GamePiece {
  float x, y, dx, dy;
  public EntityType type;
  
  GamePiece(float x, float y, EntityType eType) {
    this.x = x;
    this.y = y;
    setType(eType);
  }
  
  void draw() {
    // default draw routine, please override
    ellipse(x, y, 10, 10);
  }
  
  void move() {
    x += dx;
    y += dy;
  }
  
  void go() {
    draw();
    move();
  }

  public void setType(EntityType eType) {
    type = eType;
  }
}

/**
 * Spaceships are "live", i.e. they have hit points (HP).
 */
class Spaceship extends GamePiece 
{
  float hp;
  float maxHP;
  int direction = 0;
  
  Spaceship(float x, float y, float maxHP) 
  {
    super(x, y, EntityType.SHIP);
    this.maxHP = maxHP;
    hp = this.maxHP;
  }
  
  public void setDirection(int d)
  {
    direction = d;
  }
  
  public int getDirection()
  {
    return direction;
  }
}
