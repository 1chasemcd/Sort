class RectBars extends Visual
{
  float rectWidth;

  RectBars(int size)
  {
    this.rectWidth = width / (float) size;

    for (int i = 0; i < size; i++)
    {
      list.add(i);
      colors.add(color(random(255), random(255), random(255)));
    }
  }

  void show()
  {
    for (int i = 0; i < size(); i++)
    {
      fill(colors.get(list.get(i)));
      rect(i*rectWidth, height - (list.get(i) * height/size()), rectWidth, height);
    }
  }
}
