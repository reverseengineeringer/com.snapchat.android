public final class cac
  extends cab
{
  public cac()
  {
    super("+", 5, (byte)0);
  }
  
  public final double a(double paramDouble)
  {
    return paramDouble;
  }
  
  public final double a(double paramDouble1, double paramDouble2)
  {
    return new Double(paramDouble1 + paramDouble2).doubleValue();
  }
  
  public final String a(String paramString1, String paramString2)
  {
    return new String(paramString1.substring(0, paramString1.length() - 1) + paramString2.substring(1, paramString2.length()));
  }
}

/* Location:
 * Qualified Name:     cac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */