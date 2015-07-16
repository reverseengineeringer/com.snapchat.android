public final class bgf
{
  private static final bgf sZero = new bgf(0.0D, 0.0D);
  public final double x;
  public final double y;
  
  public bgf(double paramDouble1, double paramDouble2)
  {
    x = paramDouble1;
    y = paramDouble2;
  }
  
  public static bgf a()
  {
    return sZero;
  }
  
  public final boolean equals(@chd Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof bgf)) {
        return false;
      }
      paramObject = (bgf)paramObject;
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
 * Qualified Name:     bgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */