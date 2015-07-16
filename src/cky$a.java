import java.util.Locale;

final class cky$a
  implements ckz, clb
{
  private final char a;
  
  cky$a(char paramChar)
  {
    a = paramChar;
  }
  
  public final int a()
  {
    return 1;
  }
  
  public final int a(cla paramcla, String paramString, int paramInt)
  {
    if (paramInt >= paramString.length()) {
      return paramInt ^ 0xFFFFFFFF;
    }
    char c2 = paramString.charAt(paramInt);
    char c1 = a;
    if (c2 != c1)
    {
      c2 = Character.toUpperCase(c2);
      c1 = Character.toUpperCase(c1);
      if ((c2 != c1) && (Character.toLowerCase(c2) != Character.toLowerCase(c1))) {
        return paramInt ^ 0xFFFFFFFF;
      }
    }
    return paramInt + 1;
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
    return 1;
  }
}

/* Location:
 * Qualified Name:     cky.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */