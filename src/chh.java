import java.io.Serializable;

public final class chh
  extends cih
  implements chy, Serializable
{
  public chh() {}
  
  public chh(long paramLong)
  {
    super(paramLong);
  }
  
  public chh(long paramLong, chg paramchg)
  {
    super(paramLong, paramchg);
  }
  
  public chh(long paramLong, chl paramchl)
  {
    super(paramLong, paramchl);
  }
  
  public chh(chg paramchg)
  {
    super(paramchg);
  }
  
  public chh(Object paramObject)
  {
    super(paramObject);
  }
  
  public final chh F_()
  {
    return new chs(a, b).a(d().a());
  }
  
  public final chh a()
  {
    return this;
  }
  
  public final chh a(int paramInt)
  {
    if (paramInt == 0) {}
    for (;;)
    {
      return this;
      chn localchn = b.s();
      long l1 = a;
      long l2;
      if (paramInt == Integer.MIN_VALUE)
      {
        l2 = paramInt;
        if (l2 == Long.MIN_VALUE) {
          throw new ArithmeticException("Long.MIN_VALUE cannot be negated");
        }
      }
      for (l1 = localchn.a(l1, -l2); l1 != a; l1 = localchn.a(l1, -paramInt)) {
        return new chh(l1, b);
      }
    }
  }
  
  public static final class a
    extends ckb
  {
    private chh a;
    private chi b;
    
    public a(chh paramchh, chi paramchi)
    {
      a = paramchh;
      b = paramchi;
    }
    
    public final chi a()
    {
      return b;
    }
    
    protected final long b()
    {
      return a.a;
    }
    
    protected final chg c()
    {
      return a.b;
    }
  }
}

/* Location:
 * Qualified Name:     chh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */