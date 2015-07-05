import java.util.Locale;

final class cjx$a
  implements cjy, cka
{
  private final char a;
  
  cjx$a(char paramChar)
  {
    a = paramChar;
  }
  
  public final int a()
  {
    return 1;
  }
  
  public final int a(cjz paramcjz, String paramString, int paramInt)
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
    return 1;
  }
}

/* Location:
 * Qualified Name:     cjx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */