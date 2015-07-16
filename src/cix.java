import java.util.Locale;
import java.util.TreeMap;

final class cix
  extends ckn
{
  private final cim b;
  
  cix(cim paramcim, chn paramchn)
  {
    super(chj.l(), paramchn);
    b = paramcim;
  }
  
  public final int a(long paramLong)
  {
    return cim.d(paramLong);
  }
  
  protected final int a(String paramString, Locale paramLocale)
  {
    paramLocale = (Integer)ah.get(paramString);
    if (paramLocale != null) {
      return paramLocale.intValue();
    }
    throw new chp(chj.l(), paramString);
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
  
  public final chn e()
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
 * Qualified Name:     cix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */