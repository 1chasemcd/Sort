class AlgorithmRunner extends Thread
{
  Algorithm[] algs;
  boolean repeat;
  
  AlgorithmRunner(Algorithm[] algs, boolean repeat)
  {
    this.algs = algs;
    this.repeat = repeat;
  }
  
  void run()
  {
    for (Algorithm alg: algs)
    {
      alg.run();
    }
  
    if (repeat)
    {
      run();
    }
  }
}
