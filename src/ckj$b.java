final class ckj$b
{
  final char a;
  final int b;
  final int c;
  final int d;
  final boolean e;
  final int f;
  
  ckj$b(char paramChar, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4)
  {
    if ((paramChar != 'u') && (paramChar != 'w') && (paramChar != 's')) {
      throw new IllegalArgumentException("Unknown mode: " + paramChar);
    }
    a = paramChar;
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    e = paramBoolean;
    f = paramInt4;
  }
  
  private long d(cgf paramcgf, long paramLong)
  {
    if (c >= 0) {
      return paramcgf.u().b(paramLong, c);
    }
    paramLong = paramcgf.u().b(paramLong, 1);
    paramLong = paramcgf.C().a(paramLong, 1);
    return paramcgf.u().a(paramLong, c);
  }
  
  final long a(cgf paramcgf, long paramLong)
  {
    try
    {
      long l = d(paramcgf, paramLong);
      return l;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      if ((b == 2) && (c == 29))
      {
        while (!paramcgf.E().b(paramLong)) {
          paramLong = paramcgf.E().a(paramLong, 1);
        }
        return d(paramcgf, paramLong);
      }
      throw localIllegalArgumentException;
    }
  }
  
  final long b(cgf paramcgf, long paramLong)
  {
    try
    {
      long l = d(paramcgf, paramLong);
      return l;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      if ((b == 2) && (c == 29))
      {
        while (!paramcgf.E().b(paramLong)) {
          paramLong = paramcgf.E().a(paramLong, -1);
        }
        return d(paramcgf, paramLong);
      }
      throw localIllegalArgumentException;
    }
  }
  
  final long c(cgf paramcgf, long paramLong)
  {
    int i = paramcgf.t().a(paramLong);
    int j = d - i;
    long l = paramLong;
    if (j != 0)
    {
      if (!e) {
        break label65;
      }
      i = j;
      if (j < 0) {
        i = j + 7;
      }
    }
    for (;;)
    {
      l = paramcgf.t().a(paramLong, i);
      return l;
      label65:
      i = j;
      if (j > 0) {
        i = j - 7;
      }
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof b)) {
        break;
      }
      paramObject = (b)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (d == d) && (e == e) && (f == f));
    return false;
    return false;
  }
}

/* Location:
 * Qualified Name:     ckj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */