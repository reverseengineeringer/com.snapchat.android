public final class xy
{
  public final xy.a a;
  public final ya b;
  public final int c;
  
  public xy()
  {
    this(new xy.b(), new ya(), amResolution.b());
  }
  
  private xy(xy.a parama, ya paramya, int paramInt)
  {
    a = parama;
    b = paramya;
    c = paramInt;
  }
  
  public static abstract interface a
  {
    public abstract float a(int paramInt);
  }
  
  static final class b
    implements xy.a
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
 * Qualified Name:     xy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */