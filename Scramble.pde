class Scramble extends Algorithm
{
  Scramble(Visual visual, int delay)
  {
    super(visual, delay);
  }

  void run()
  {
    for (int i = 0; i < visual.size(); i++)
    {
      int loc = (int) random(visual.size());
      visual.swap(i, loc);
      delay(delay);
    }
  }
}
