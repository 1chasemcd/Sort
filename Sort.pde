Visual visual;
AlgorithmRunner runner;

void setup()
{
  size(1280, 779);
  visual = new RectBars(200);
  noStroke();

  Algorithm[] algs = new Algorithm[2];
  algs[0] = new Scramble(visual, 5);
  algs[1] = new Selection(visual, 10);

  runner = new AlgorithmRunner(algs, true);
  runner.setDaemon(true);
  runner.start();
}

void draw()
{
  background(255);

  visual.show();
}
