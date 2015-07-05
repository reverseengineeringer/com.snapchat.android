public final class cjr
  extends cjf
{
  private final cgf a;
  private final int b;
  private transient int c;
  
  public cjr(cgf paramcgf, cgh paramcgh)
  {
    this(paramcgf, paramcgh, (byte)0);
  }
  
  private cjr(cgf paramcgf, cgh paramcgh, byte paramByte)
  {
    super(paramcgh);
    a = paramcgf;
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
    cjh.a(this, paramInt, c, h());
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
 * Qualified Name:     cjr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */