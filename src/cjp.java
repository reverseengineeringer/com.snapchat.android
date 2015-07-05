public final class cjp
  extends cje
{
  private final int a = 100;
  
  public cjp(cgm paramcgm, cgn paramcgn)
  {
    super(paramcgm, paramcgn);
  }
  
  public final long a(long paramLong, int paramInt)
  {
    long l1 = paramInt;
    long l2 = a;
    return b.a(paramLong, l1 * l2);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    int i = a;
    long l = paramLong2;
    switch (i)
    {
    default: 
      l = i * paramLong2;
      if (l / i != paramLong2) {
        throw new ArithmeticException("Multiplication overflows a long: " + paramLong2 + " * " + i);
      }
      break;
    case -1: 
      if (paramLong2 == Long.MIN_VALUE) {
        throw new ArithmeticException("Multiplication overflows a long: " + paramLong2 + " * " + i);
      }
      l = -paramLong2;
    }
    for (;;)
    {
      return b.a(paramLong1, l);
      l = 0L;
    }
  }
  
  public final int b(long paramLong1, long paramLong2)
  {
    return b.b(paramLong1, paramLong2) / a;
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    return b.c(paramLong1, paramLong2) / a;
  }
  
  public final long d()
  {
    return b.d() * a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cjp)) {
        break;
      }
      paramObject = (cjp)paramObject;
    } while ((b.equals(b)) && (d == d) && (a == a));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    long l = a;
    return (int)(l ^ l >>> 32) + d.hashCode() + b.hashCode();
  }
}

/* Location:
 * Qualified Name:     cjp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */