import java.util.Locale;
import java.util.TreeMap;

final class chw
  extends cjm
{
  private final chl b;
  
  chw(chl paramchl, cgm paramcgm)
  {
    super(cgi.l(), paramcgm);
    b = paramchl;
  }
  
  public final int a(long paramLong)
  {
    return chl.d(paramLong);
  }
  
  protected final int a(String paramString, Locale paramLocale)
  {
    paramLocale = (Integer)ah.get(paramString);
    if (paramLocale != null) {
      return paramLocale.intValue();
    }
    throw new cgo(cgi.l(), paramString);
  }
  
  public final int a(Locale paramLocale)
  {
    return ak;
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return ab[paramInt];
  }
  
  public final String b(int paramInt, Locale paramLocale)
  {
    return ac[paramInt];
  }
  
  public final cgm e()
  {
    return b.d;
  }
  
  public final int g()
  {
    return 1;
  }
  
  public final int h()
  {
    return 7;
  }
}

/* Location:
 * Qualified Name:     chw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */