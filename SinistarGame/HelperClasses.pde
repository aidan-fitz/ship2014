public static class SpriteSheetHelper
{
  public static PImage[] spriteSheetToPImageArray(PImage spriteSheet, int cellWidth, int cellHeight, int imageAmount, int xStart, int yStart, int amountIn1stRow)
  { 
    PImage[] array = new PImage[imageAmount];
    
    for (int i = xStart; i <= amountIn1stRow; i++)
    {
        array[i] = spriteSheet.get((cellWidth * i), 0, cellWidth, cellHeight);
    }
    for (int i = xStart + amountIn1stRow; i <= imageAmount - 1; i++)
      array[i] = spriteSheet.get((cellWidth * (i - (xStart + amountIn1stRow))), cellHeight, cellWidth, cellHeight);
      return array;
      
  }
}
