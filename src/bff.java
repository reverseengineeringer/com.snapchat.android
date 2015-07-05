public final class bff
{
  private static final bff sZero = new bff(0.0D, 0.0D);
  public final double x;
  public final double y;
  
  public bff(double paramDouble1, double paramDouble2)
  {
    x = paramDouble1;
    y = paramDouble2;
  }
  
  public static bff a()
  {
    return sZero;
  }
  
  public final boolean equals(@cgc Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof bff)) {
        return false;
      }
      paramObject = (bff)paramObject;
    } while ((x == x) && (y == y));
    return false;
  }
  
  public final int hashCode()
  {
    return (Double.valueOf(x).hashCode() + 391) * 23 + Double.valueOf(y).hashCode();
  }
  
  public final String toString()
  {
    return "(" + x + ", " + y + ")";
  }
}

/* Location:
 * Qualified Name:     bff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */