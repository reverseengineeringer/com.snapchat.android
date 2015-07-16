public final class ckr
  extends ckg
{
  private final chg a;
  private final int b;
  private transient int c;
  
  public ckr(chg paramchg, chi paramchi)
  {
    this(paramchg, paramchi, (byte)0);
  }
  
  private ckr(chg paramchg, chi paramchi, byte paramByte)
  {
    super(paramchi);
    a = paramchg;
    paramByte = super.g();
    if (paramByte < 0) {
      c = (paramByte - 1);
    }
    for (;;)
    {
      b = 0;
      return;
      if (paramByte == 0) {
        c = 1;
      } else {
        c = paramByte;
      }
    }
  }
  
  public final int a(long paramLong)
  {
    int j = super.a(paramLong);
    int i = j;
    if (j <= b) {
      i = j - 1;
    }
    return i;
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, c, h());
    int i = paramInt;
    if (paramInt <= b)
    {
      if (paramInt == b) {
        throw new chp(chj.s(), Integer.valueOf(paramInt), null, null);
      }
      i = paramInt + 1;
    }
    return super.b(paramLong, i);
  }
  
  public final int g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     ckr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */