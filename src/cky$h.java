import java.util.Locale;

final class cky$h
  implements ckz, clb
{
  private final String a;
  
  cky$h(String paramString)
  {
    a = paramString;
  }
  
  public final int a()
  {
    return a.length();
  }
  
  public final int a(cla paramcla, String paramString, int paramInt)
  {
    if (paramString.regionMatches(true, paramInt, a, 0, a.length())) {
      return a.length() + paramInt;
    }
    return paramInt ^ 0xFFFFFFFF;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg, int paramInt, chl paramchl, Locale paramLocale)
  {
    paramStringBuffer.append(a);
  }
  
  public final void a(StringBuffer paramStringBuffer, cic paramcic, Locale paramLocale)
  {
    paramStringBuffer.append(a);
  }
  
  public final int b()
  {
    return a.length();
  }
}

/* Location:
 * Qualified Name:     cky.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */