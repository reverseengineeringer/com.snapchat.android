import java.util.Locale;

class cky$g
  extends cky.f
{
  protected final int d;
  
  protected cky$g(chj paramchj, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    super(paramchj, paramInt1, paramBoolean);
    d = paramInt2;
  }
  
  public final int a()
  {
    return b;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
  {
    try
    {
      clc.a(paramStringBuffer, a.a(paramchg).a(paramLong), d);
      return;
    }
    catch (RuntimeException paramchg)
    {
      cky.a(paramStringBuffer, d);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
  {
    if (paramcic.b(a)) {
      try
      {
        clc.a(paramStringBuffer, paramcic.a(a), d);
        return;
      }
      catch (RuntimeException paramcic) {}
    }
    cky.a(paramStringBuffer, d);
  }
}

/* Location:
 * Qualified Name:     cky.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */