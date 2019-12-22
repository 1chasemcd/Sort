class Bubble extends Algorithm
{
  Bubble(Visual visual, int delay)
  {
    super(visual, delay);
  }

  void run()
  {
    for (int pass = 0; pass < visual.size(); pass++)
    {
      for (int i = 0; i < visual.size() - 1; i++)
      {
        if (visual.get(i) > visual.get(i + 1))
        {
          visual.swap(i, i+1);
          delay(delay);
        }
      }
    }
  }
}
