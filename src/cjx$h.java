import java.util.Locale;

final class cjx$h
  implements cjy, cka
{
  private final String a;
  
  cjx$h(String paramString)
  {
    a = paramString;
  }
  
  public final int a()
  {
    return a.length();
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
  {
    if (paramString.regionMatches(true, paramInt, a, 0, a.length())) {
      return a.length() + paramInt;
    }
    return paramInt ^ 0xFFFFFFFF;
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf, int paramInt, cgk paramcgk, Locale paramLocale)
  {
    paramStringBuffer.append(a);
  }
  
  public final void a(StringBuffer paramStringBuffer, chb paramchb, Locale paramLocale)
  {
    paramStringBuffer.append(a);
  }
  
  public final int b()
  {
    return a.length();
  }
}

/* Location:
 * Qualified Name:     cjx.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */