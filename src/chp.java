public final class chp
  extends IllegalArgumentException
{
  public String a;
  private final chj b;
  private final cho c;
  private final String d;
  private final Number e;
  private final String f;
  private final Number g;
  private final Number h;
  
  public chp(chj paramchj, Number paramNumber1, Number paramNumber2, Number paramNumber3)
  {
    super(a(a, paramNumber1, paramNumber2, paramNumber3, null));
    b = paramchj;
    c = null;
    d = a;
    e = paramNumber1;
    f = null;
    g = paramNumber2;
    h = paramNumber3;
    a = super.getMessage();
  }
  
  public chp(chj paramchj, Number paramNumber, String paramString)
  {
    super(a(a, paramNumber, null, null, paramString));
    b = paramchj;
    c = null;
    d = a;
    e = paramNumber;
    f = null;
    g = null;
    h = null;
    a = super.getMessage();
  }
  
  public chp(chj paramchj, String paramString) {}
  
  private static String a(String paramString1, Number paramNumber1, Number paramNumber2, Number paramNumber3, String paramString2)
  {
    paramString1 = new StringBuilder("Value ").append(paramNumber1).append(" for ").append(paramString1).append(' ');
    if (paramNumber2 == null) {
      if (paramNumber3 == null) {
        paramString1.append("is not supported");
      }
    }
    for (;;)
    {
      if (paramString2 != null) {
        paramString1.append(": ").append(paramString2);
      }
      return paramString1.toString();
      paramString1.append("must not be larger than ").append(paramNumber3);
      continue;
      if (paramNumber3 == null) {
        paramString1.append("must not be smaller than ").append(paramNumber2);
      } else {
        paramString1.append("must be in the range [").append(paramNumber2).append(',').append(paramNumber3).append(']');
      }
    }
  }
  
  public final String getMessage()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     chp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */