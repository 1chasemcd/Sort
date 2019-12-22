abstract class Algorithm
{
  Visual visual;
  int delay;

  Algorithm(Visual visual, int delay)
  {
    this.visual = visual;
    this.delay = delay;
  }

  abstract void run();
}
