class ImageSort extends Visual
{
  PImage img;
  PVector imgSize;

  ImageSort(PImage img, int size)
  {
    this.img = img;
    float ratio = img.height / img.width;
    this.img.resize(size, 0);
    this.imgSize = new PVector(width / (float) img.width, height / (float) img.height);

    for (int i = 0; i < img.width * img.height; i++)
    {
      list.add(i);
      int[] loc = dimShift(i);
      colors.add(img.get(loc[0], loc[1]));
    }
  }

  void show()
  {
    for (int i = 0; i < size(); i++)
    {
      int[] loc = dimShift(i);
      fill(colors.get(list.get(i)));
      rect(loc[0] * imgSize.x, loc[1] * imgSize.y, imgSize.x, imgSize.y);
    }
  }

  int[] dimShift(int i)
  {
    int[] r = {i % img.width, i / img.width};
    return r;
  }
}
