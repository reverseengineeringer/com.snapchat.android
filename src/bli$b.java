final class bli$b
  extends bmd
{
  private final bmg.c a;
  private final bzw b;
  private final String c;
  private final String d;
  
  public bli$b(final bmg.c paramc, String paramString1, String paramString2)
  {
    a = paramc;
    c = paramString1;
    d = paramString2;
    b = cad.a(new caa(c[1])
    {
      public final void close()
      {
        paramc.close();
        super.close();
      }
    });
  }
  
  public final long a()
  {
    long l = -1L;
    try
    {
      if (d != null) {
        l = Long.parseLong(d);
      }
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return -1L;
  }
  
  public final bzw b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     bli.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */