final class cbh
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  cbh f;
  cbh g;
  
  cbh()
  {
    a = new byte['ࠀ'];
    e = true;
    d = false;
  }
  
  cbh(cbh paramcbh)
  {
    this(a, b, c);
    d = true;
  }
  
  private cbh(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = paramInt2;
    e = false;
    d = true;
  }
  
  public final cbh a()
  {
    if (f != this) {}
    for (cbh localcbh = f;; localcbh = null)
    {
      g.f = f;
      f.g = g;
      f = null;
      g = null;
      return localcbh;
    }
  }
  
  public final cbh a(cbh paramcbh)
  {
    g = this;
    f = f;
    f.g = paramcbh;
    f = paramcbh;
    return paramcbh;
  }
  
  public final void a(cbh paramcbh, int paramInt)
  {
    if (!e) {
      throw new IllegalArgumentException();
    }
    if (c + paramInt > 2048)
    {
      if (d) {
        throw new IllegalArgumentException();
      }
      if (c + paramInt - b > 2048) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(a, b, a, 0, c - b);
      c -= b;
      b = 0;
    }
    System.arraycopy(a, b, a, c, paramInt);
    c += paramInt;
    b += paramInt;
  }
}

/* Location:
 * Qualified Name:     cbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */