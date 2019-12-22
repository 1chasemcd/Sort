abstract class Visual
{
  ArrayList<Integer> list = new ArrayList<Integer>();
  ArrayList<Integer> colors = new ArrayList<Integer>();

  abstract void show();

  int size()
  {
    return list.size();
  }

  void set(int index, int value)
  {
    list.set(index, value);
  }

  void swap(int index1 ,int index2)
  {
    int temp = get(index1);
    set(index1, get(index2));
    set(index2, temp);
  }

  int get(int index)
  {
    return list.get(index);
  }

  int remove(int index)
  {
    return list.remove(index);
  }

  void add(int index, int value)
  {
    list.add(index, value);
  }

  void add(int value)
  {
    list.add(value);
  }
}
