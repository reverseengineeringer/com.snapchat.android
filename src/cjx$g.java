import java.util.Locale;

class cjx$g
  extends cjx.f
{
  protected final int d;
  
  protected cjx$g(cgi paramcgi, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    super(paramcgi, paramInt1, paramBoolean);
    d = paramInt2;
  }
  
  public final int a()
  {
    return b;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    try
    {
      ckb.a(paramStringBuffer, a.a(paramcgf).a(paramLong), d);
      return;
    }
    catch (RuntimeException paramcgf)
    {
      cjx.a(paramStringBuffer, d);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
  {
    if (paramchb.b(a)) {
      try
      {
        ckb.a(paramStringBuffer, paramchb.a(a), d);
        return;
      }
      catch (RuntimeException paramchb) {}
    }
    cjx.a(paramStringBuffer, d);
  }
}

/* Location:
 * Qualified Name:     cjx.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */