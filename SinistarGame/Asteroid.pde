/**
 * Asteroids are not "live".
 */
class Asteroid extends GamePiece {
  
  Asteroid(float x, float y) {
    super(x, y, EntityType.NONLIVING);
  }
}
