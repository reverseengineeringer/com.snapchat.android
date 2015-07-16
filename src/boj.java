public enum boj
{
  public final int s;
  public final int t;
  public final int u;
  
  private boj(int paramInt1, int paramInt2, int paramInt3)
  {
    s = paramInt1;
    t = paramInt2;
    u = paramInt3;
  }
  
  public static boj a(int paramInt)
  {
    boj[] arrayOfboj = values();
    int i2 = arrayOfboj.length;
    int i1 = 0;
    while (i1 < i2)
    {
      boj localboj = arrayOfboj[i1];
      if (t == paramInt) {
        return localboj;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static boj b(int paramInt)
  {
    boj[] arrayOfboj = values();
    int i2 = arrayOfboj.length;
    int i1 = 0;
    while (i1 < i2)
    {
      boj localboj = arrayOfboj[i1];
      if (s == paramInt) {
        return localboj;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static boj c(int paramInt)
  {
    boj[] arrayOfboj = values();
    int i2 = arrayOfboj.length;
    int i1 = 0;
    while (i1 < i2)
    {
      boj localboj = arrayOfboj[i1];
      if (u == paramInt) {
        return localboj;
      }
      i1 += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     boj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */