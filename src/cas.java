public final class cas
  extends cab
{
  public cas()
  {
    super("-", 5, (byte)0);
  }
  
  public final double a(double paramDouble)
  {
    return -paramDouble;
  }
  
  public final double a(double paramDouble1, double paramDouble2)
  {
    return new Double(paramDouble1 - paramDouble2).doubleValue();
  }
}

/* Location:
 * Qualified Name:     cas
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */