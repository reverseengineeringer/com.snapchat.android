public final class cko
  extends ckd
{
  private final long a;
  
  public cko(cho paramcho, long paramLong)
  {
    super(paramcho);
    a = paramLong;
  }
  
  public final long a(long paramLong, int paramInt)
  {
    return cki.a(paramLong, paramInt * a);
  }
  
  public final long a(long paramLong1, long paramLong2)
  {
    long l1 = a;
    if (l1 == 1L) {}
    for (;;)
    {
      return cki.a(paramLong1, paramLong2);
      if (paramLong2 == 1L)
      {
        paramLong2 = l1;
      }
      else if ((paramLong2 == 0L) || (l1 == 0L))
      {
        paramLong2 = 0L;
      }
      else
      {
        long l2 = paramLong2 * l1;
        if ((l2 / l1 != paramLong2) || ((paramLong2 == Long.MIN_VALUE) && (l1 == -1L)) || ((l1 == Long.MIN_VALUE) && (paramLong2 == -1L))) {
          throw new ArithmeticException("Multiplication overflows a long: " + paramLong2 + " * " + l1);
        }
        paramLong2 = l2;
      }
    }
  }
  
  public final long c(long paramLong1, long paramLong2)
  {
    return cki.b(paramLong1, paramLong2) / a;
  }
  
  public final boolean c()
  {
    return true;
  }
  
  public final long d()
  {
    return a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof cko)) {
        break;
      }
      paramObject = (cko)paramObject;
    } while ((d == d) && (a == a));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    long l = a;
    return (int)(l ^ l >>> 32) + d.hashCode();
  }
}

/* Location:
 * Qualified Name:     cko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */