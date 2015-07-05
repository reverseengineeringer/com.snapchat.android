public enum bni
{
  public final int s;
  public final int t;
  public final int u;
  
  private bni(int paramInt1, int paramInt2, int paramInt3)
  {
    s = paramInt1;
    t = paramInt2;
    u = paramInt3;
  }
  
  public static bni a(int paramInt)
  {
    bni[] arrayOfbni = values();
    int i2 = arrayOfbni.length;
    int i1 = 0;
    while (i1 < i2)
    {
      bni localbni = arrayOfbni[i1];
      if (t == paramInt) {
        return localbni;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static bni b(int paramInt)
  {
    bni[] arrayOfbni = values();
    int i2 = arrayOfbni.length;
    int i1 = 0;
    while (i1 < i2)
    {
      bni localbni = arrayOfbni[i1];
      if (s == paramInt) {
        return localbni;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static bni c(int paramInt)
  {
    bni[] arrayOfbni = values();
    int i2 = arrayOfbni.length;
    int i1 = 0;
    while (i1 < i2)
    {
      bni localbni = arrayOfbni[i1];
      if (u == paramInt) {
        return localbni;
      }
      i1 += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     bni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */