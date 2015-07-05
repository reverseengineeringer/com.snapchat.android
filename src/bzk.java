public final class bzk
  extends bza
{
  public bzk()
  {
    super("<", 4);
  }
  
  public final double a(double paramDouble1, double paramDouble2)
  {
    if (paramDouble1 < paramDouble2) {
      return 1.0D;
    }
    return 0.0D;
  }
  
  public final String a(String paramString1, String paramString2)
  {
    if (paramString1.compareTo(paramString2) < 0) {
      return "1.0";
    }
    return "0.0";
  }
}

/* Location:
 * Qualified Name:     bzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */