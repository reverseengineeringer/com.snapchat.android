import java.util.Locale;

final class cky$n
  extends cky.f
{
  protected cky$n(chj paramchj, int paramInt, boolean paramBoolean)
  {
    super(paramchj, paramInt, paramBoolean);
  }
  
  public final int a()
  {
    return b;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
  {
    try
    {
      clc.a(paramStringBuffer, a.a(paramchg).a(paramLong));
      return;
    }
    catch (RuntimeException paramchg)
    {
      paramStringBuffer.append(65533);
    }
  }
  
  public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
  {
    if (paramcic.b(a)) {
      try
      {
        clc.a(paramStringBuffer, paramcic.a(a));
        return;
      }
      catch (RuntimeException paramcic)
      {
        paramStringBuffer.append(65533);
        return;
      }
    }
    paramStringBuffer.append(65533);
  }
}

/* Location:
 * Qualified Name:     cky.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */