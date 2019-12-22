class Selection extends Algorithm
{
  Selection(Visual visual, int delay)
  {
    super(visual, delay);
  }

  void run()
  {
    for (int pass = 0; pass < visual.size() - 1; pass++)
    {
      int low = pass;
      for (int i = pass; i < visual.size(); i++)
      {
        if (visual.get(i) < visual.get(low))
        {
          low = i;
        }
      }

      visual.swap(pass, low);
      delay(delay);
    }
  }
}
