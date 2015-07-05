import java.util.Locale;

final class chl$a
  extends cjl
{
  chl$a()
  {
    super(cgi.k(), chl.U(), chl.V());
  }
  
  public final int a(Locale paramLocale)
  {
    return am;
  }
  
  public final long a(long paramLong, String paramString, Locale paramLocale)
  {
    paramLocale = af;
    int i = paramLocale.length;
    int j;
    do
    {
      j = i - 1;
      if (j < 0) {
        break;
      }
      i = j;
    } while (!paramLocale[j].equalsIgnoreCase(paramString));
    return b(paramLong, j);
    throw new cgo(cgi.k(), paramString);
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return af[paramInt];
  }
}

/* Location:
 * Qualified Name:     chl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */