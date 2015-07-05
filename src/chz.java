import java.util.Locale;
import java.util.TreeMap;

final class chz
  extends chp
{
  chz(chl paramchl)
  {
    super(paramchl);
  }
  
  protected final int a(String paramString, Locale paramLocale)
  {
    paramLocale = (Integer)ai.get(paramString);
    if (paramLocale != null) {
      return paramLocale.intValue();
    }
    throw new cgo(cgi.r(), paramString);
  }
  
  public final int a(Locale paramLocale)
  {
    return al;
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return ad[paramInt];
  }
  
  public final String b(int paramInt, Locale paramLocale)
  {
    return ae[paramInt];
  }
}

/* Location:
 * Qualified Name:     chz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */