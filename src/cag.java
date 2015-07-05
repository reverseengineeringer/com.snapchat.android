final class cag
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  cag f;
  cag g;
  
  cag()
  {
    a = new byte['ࠀ'];
    e = true;
    d = false;
  }
  
  cag(cag paramcag)
  {
    this(a, b, c);
    d = true;
  }
  
  private cag(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    b = paramInt1;
    c = paramInt2;
    e = false;
    d = true;
  }
  
  public final cag a()
  {
    if (f != this) {}
    for (cag localcag = f;; localcag = null)
    {
      g.f = f;
      f.g = g;
      f = null;
      g = null;
      return localcag;
    }
  }
  
  public final cag a(cag paramcag)
  {
    g = this;
    f = f;
    f.g = paramcag;
    f = paramcag;
    return paramcag;
  }
  
  public final void a(cag paramcag, int paramInt)
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
 * Qualified Name:     cag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */