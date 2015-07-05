import java.util.Locale;

final class cjx$n
  extends cjx.f
{
  protected cjx$n(cgi paramcgi, int paramInt, boolean paramBoolean)
  {
    super(paramcgi, paramInt, paramBoolean);
  }
  
  public final int a()
  {
    return b;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    try
    {
      ckb.a(paramStringBuffer, a.a(paramcgf).a(paramLong));
      return;
    }
    catch (RuntimeException paramcgf)
    {
      paramStringBuffer.append(65533);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
  {
    if (paramchb.b(a)) {
      try
      {
        ckb.a(paramStringBuffer, paramchb.a(a));
        return;
      }
      catch (RuntimeException paramchb)
      {
        paramStringBuffer.append(65533);
        return;
      }
    }
    paramStringBuffer.append(65533);
  }
}

/* Location:
 * Qualified Name:     cjx.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */