public final class xc
{
  public final xc.a a;
  public final xe b;
  public final int c;
  
  public xc()
  {
    this(new xc.b(), new xe(), amResolution.b());
  }
  
  private xc(xc.a parama, xe paramxe, int paramInt)
  {
    a = parama;
    b = paramxe;
    c = paramInt;
  }
  
  public static abstract interface a
  {
    public abstract float a(int paramInt);
  }
  
  static final class b
    implements xc.a
  {
    public final float a(int paramInt)
    {
      switch (paramInt)
      {
      default: 
        return 0.0F;
      }
      return 0.75F;
    }
  }
}

/* Location:
 * Qualified Name:     xc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */