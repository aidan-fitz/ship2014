class BGImage {
  PImage img;
  GamePiece reference;
  
  BGImage(PImage img, GamePiece ref) {
    this.img = img;
    this.reference = ref;
  }
  
  BGImage(String filename, GamePiece ref) {
    this(loadImage(filename), ref);
  }
  
  void draw() {
    int tileX = ((int)reference.x / img.width) * img.width; // integer division - rounded
    int tileY = ((int)reference.y / img.height) * img.height;
    image(img, tileX, tileY);
  }
}

class Background {
  protected color c1, c2;

  protected int offset;

  Background(color color1, color color2) {
    c1 = color1;
    c2 = color2;
    offset = 0;
  }

  void draw() {
    background(c1);

    for (int i = width * -1; i <= width; i += 100) {
      stroke(c2);
      strokeWeight(1);
      line(i + offset, -100 + offset, i + offset, height + offset);
      strokeWeight(10);
      stroke(c2, 50);
      line(i + offset, -100 + offset, i + offset, height + offset);
    }

    for (int i = height * -1; i <= height; i += 100) {
      stroke(c2);
      strokeWeight(1);
      line(-100 + offset, i+ offset, width + offset, i + offset);
      strokeWeight(10);
      stroke(c2, 50);
      line(-100 + offset, i+ offset, width + offset, i + offset);
    }
    offset++;
    if (offset >= 100)
      offset = 0;
  }
}

