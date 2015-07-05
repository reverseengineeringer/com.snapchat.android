public final class xe
{
  private final int a;
  
  public xe()
  {
    this(amResolution.b());
  }
  
  private xe(int paramInt)
  {
    a = paramInt;
  }
  
  public final float a(int paramInt1, int paramInt2)
  {
    int i = paramInt2 / a;
    paramInt2 %= a;
    if (paramInt1 == i) {
      return (a - paramInt2) / a;
    }
    if (paramInt1 == i + 1) {
      return paramInt2 / a;
    }
    return 0.0F;
  }
}

/* Location:
 * Qualified Name:     xe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */