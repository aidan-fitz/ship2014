//Background back = new Background(color(0, 10, 10), color(255, 255, 255));
BGImage bg;
Player player;

public void setup() {
  size(900, 600);
  noCursor();
  player = new Player(loadImage("Ships.png"));
  bg = new BGImage("stars.gif", player);
}

public void draw() {
//  background(bg);
  background(0);
  bg.draw();
  player.draw();
}
