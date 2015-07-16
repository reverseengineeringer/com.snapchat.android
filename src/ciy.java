import java.util.Locale;
import java.util.TreeMap;

final class ciy
  extends ckc
{
  private final cim a;
  
  ciy(cim paramcim)
  {
    super(chj.w());
    a = paramcim;
  }
  
  public final int a(long paramLong)
  {
    if (a.a(paramLong) <= 0) {
      return 0;
    }
    return 1;
  }
  
  public final int a(Locale paramLocale)
  {
    return aj;
  }
  
  public final long a(long paramLong, String paramString, Locale paramLocale)
  {
    paramLocale = (Integer)ag.get(paramString);
    if (paramLocale != null) {
      return b(paramLong, paramLocale.intValue());
    }
    throw new chp(chj.w(), paramString);
  }
  
  public final String a(int paramInt, Locale paramLocale)
  {
    return aa[paramInt];
  }
  
  public final long b(long paramLong, int paramInt)
  {
    cki.a(this, paramInt, 0, 1);
    long l = paramLong;
    if (a(paramLong) != paramInt)
    {
      paramInt = a.a(paramLong);
      l = a.d(paramLong, -paramInt);
    }
    return l;
  }
  
  public final long d(long paramLong)
  {
    if (a(paramLong) == 1) {
      return a.d(0L, 1);
    }
    return Long.MIN_VALUE;
  }
  
  public final chn d()
  {
    return cku.a(cho.l());
  }
  
  public final long e(long paramLong)
  {
    if (a(paramLong) == 0) {
      return a.d(0L, 1);
    }
    return Long.MAX_VALUE;
  }
  
  public final chn e()
  {
    return null;
  }
  
  public final long f(long paramLong)
  {
    return d(paramLong);
  }
  
  public final int g()
  {
    return 0;
  }
  
  public final long g(long paramLong)
  {
    return d(paramLong);
  }
  
  public final int h()
  {
    return 1;
  }
  
  public final long h(long paramLong)
  {
    return d(paramLong);
  }
}

/* Location:
 * Qualified Name:     ciy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */