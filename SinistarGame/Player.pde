public class Player extends Spaceship {
  
  PImage[] ships;
  int i = 0;
  int c = 0;
  
  public Player(PImage spriteSheet) {
    super(width/4, height/2, 10);
    ships = SpriteSheetHelper.spriteSheetToPImageArray(spriteSheet, 32, 32, 31, 0, 0, 17);
  }

  public void draw() {
    if (c < 20)
      c++;
    else {
      if (direction < 30)
        direction++;
      else
        direction = 0;
      c = 0;
    }
    image(ships[direction], mouseX, mouseY);
    println(direction);
  }
}

