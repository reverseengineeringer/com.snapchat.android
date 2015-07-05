public abstract class cji
  extends cjb
{
  private final cgm a;
  final long b;
  
  public cji(cgi paramcgi, long paramLong)
  {
    super(paramcgi);
    b = paramLong;
    a = new cji.a(paramcgi.x());
  }
  
  public abstract long a(long paramLong, int paramInt);
  
  public abstract long a(long paramLong1, long paramLong2);
  
  public final int b(long paramLong1, long paramLong2)
  {
    return cjh.a(c(paramLong1, paramLong2));
  }
  
  public long c(long paramLong1, long paramLong2)
  {
    long l2;
    if (paramLong1 < paramLong2) {
      l2 = -c(paramLong2, paramLong1);
    }
    long l1;
    do
    {
      return l2;
      l1 = (paramLong1 - paramLong2) / b;
      if (a(paramLong2, l1) < paramLong1)
      {
        do
        {
          l2 = l1 + 1L;
          l1 = l2;
        } while (a(paramLong2, l2) <= paramLong1);
        return l2 - 1L;
      }
      l2 = l1;
    } while (a(paramLong2, l1) <= paramLong1);
    do
    {
      l2 = l1 - 1L;
      l1 = l2;
    } while (a(paramLong2, l2) > paramLong1);
    return l2;
  }
  
  public final cgm d()
  {
    return a;
  }
  
  final class a
    extends cjc
  {
    a(cgn paramcgn)
    {
      super();
    }
    
    public final long a(long paramLong, int paramInt)
    {
      return cji.this.a(paramLong, paramInt);
    }
    
    public final long a(long paramLong1, long paramLong2)
    {
      return cji.this.a(paramLong1, paramLong2);
    }
    
    public final int b(long paramLong1, long paramLong2)
    {
      return cji.this.b(paramLong1, paramLong2);
    }
    
    public final long c(long paramLong1, long paramLong2)
    {
      return cji.this.c(paramLong1, paramLong2);
    }
    
    public final boolean c()
    {
      return false;
    }
    
    public final long d()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     cji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */