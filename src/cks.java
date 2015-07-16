public final class cks
  extends ckg
{
  private final chg a;
  private final int b;
  private transient int c;
  
  public cks(chg paramchg, chi paramchi)
  {
    this(paramchg, paramchi, (byte)0);
  }
  
  private cks(chg paramchg, chi paramchi, byte paramByte)
  {
    super(paramchi);
    a = paramchg;
    paramByte = super.g();
    if (paramByte < 0) {
      c = (paramByte + 1);
    }
    for (;;)
    {
      b = 0;
      return;
      if (paramByte == 1) {
        c = 0;
      } else {
        c = paramByte;
      }
    }
  }
  
  public final int a(long paramLong)
  {
    int j = super.a(paramLong);
    int i = j;
    if (j < b) {
      i = j + 1;
    }
    return i;
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, c, h());
    int i = paramInt;
    if (paramInt <= b) {
      i = paramInt - 1;
    }
    return super.b(paramLong, i);
  }
  
  public final int g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     cks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */