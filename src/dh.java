@cd
final class dh
{
  private static int a = 1073741824;
  
  static int a()
  {
    int k = Math.max(2, 2);
    int j = Integer.highestOneBit(k);
    int i = j;
    if (k > (int)(1.2D * j))
    {
      i = j << 1;
      if (i <= 0) {}
    }
    else
    {
      return i;
    }
    return a;
  }
  
  static int a(int paramInt)
  {
    return 461845907 * Integer.rotateLeft(-862048943 * paramInt, 15);
  }
}

/* Location:
 * Qualified Name:     dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */