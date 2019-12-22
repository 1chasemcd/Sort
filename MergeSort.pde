class MergeSort extends Algorithm
{
  MergeSort(Visual visual, int delay)
  {
    super(visual, delay);
  }

  void run()
  {
    sort(0, visual.size()-1);
  }

  void sort(int l, int r)
  {
    if (r - l >= 1)
    {
      int m = (l + r) / 2;

      sort(l, m);
      sort(m + 1, r);

      merge(l, m, r);
    }
  }

  void merge(int l, int m, int r)
  {
    int i = l;       // track left array position
    int j = m + 1;    // track right array position
    int k = l;       // track temp position

    int[] temp = new int[visual.size()];

    // Copy over from elements to temp
    for(k = l; k <= r; k++)
    {
      temp[k] = visual.get(k);
    }
    k = l;

    while(i <= m && j <= r)
    {
      if(temp[i] < temp[j])
      {
        visual.set(k, temp[i]);
        i++;
      }
      else
      {
        visual.set(k, temp[j]);
        j++;
      }
      k++;
      delay(delay);
    }

    // We may have missed elements from either list
    while(i <= m)
    {
      visual.set(k, temp[i]);
      i++;
      k++;
      delay(delay);
    }

    while(j <= r)
    {
      visual.set(k, temp[j]);
      j++;
      k++;
      delay(delay);
    }
  }
}
