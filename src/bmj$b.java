final class bmj$b
  extends bne
{
  private final bnh.c a;
  private final cax b;
  private final String c;
  private final String d;
  
  public bmj$b(final bnh.c paramc, String paramString1, String paramString2)
  {
    a = paramc;
    c = paramString1;
    d = paramString2;
    b = cbe.a(new cbb(c[1])
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
  
  public final cax b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     bmj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */