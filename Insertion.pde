class Insertion extends Algorithm
{
  Insertion(Visual visual, int delay)
  {
    super(visual, delay);
  }

  void run()
  {
    for (int pass = 0; pass < visual.size() - 1; pass++)
    {
      int i = pass;
      while (i >= 0)
      {
        if (visual.get(i) > visual.get(i + 1))
        {
          visual.swap(i, i+1);
          i--;
        }
        else
        {
          break;
        }

        delay(delay);
      }
    }
  }
}
