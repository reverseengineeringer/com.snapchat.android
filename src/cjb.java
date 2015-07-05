import java.util.Locale;

public abstract class cjb
  extends cgh
{
  final cgi i;
  
  public cjb(cgi paramcgi)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("The type must not be null");
    }
    i = paramcgi;
  }
  
  public abstract int a(long paramLong);
  
  public int a(String paramString, Locale paramLocale)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      return j;
    }
    catch (NumberFormatException paramLocale)
    {
      throw new cgo(i, paramString);
    }
  }
  
  public int a(Locale paramLocale)
  {
    int j = h();
    if (j >= 0)
    {
      if (j < 10) {
        return 1;
      }
      if (j < 100) {
        return 2;
      }
      if (j < 1000) {
        return 3;
      }
    }
    return Integer.toString(j).length();
  }
  
  public long a(long paramLong, int paramInt)
  {
    return d().a(paramLong, paramInt);
  }
  
  public long a(long paramLong1, long paramLong2)
  {
    return d().a(paramLong1, paramLong2);
  }
  
  public long a(long paramLong, String paramString, Locale paramLocale)
  {
    return b(paramLong, a(paramString, paramLocale));
  }
  
  public final cgi a()
  {
    return i;
  }
  
  public String a(int paramInt, Locale paramLocale)
  {
    return Integer.toString(paramInt);
  }
  
  public String a(long paramLong, Locale paramLocale)
  {
    return a(a(paramLong), paramLocale);
  }
  
  public final String a(chb paramchb, Locale paramLocale)
  {
    return a(paramchb.a(i), paramLocale);
  }
  
  public int b(long paramLong1, long paramLong2)
  {
    return d().b(paramLong1, paramLong2);
  }
  
  public abstract long b(long paramLong, int paramInt);
  
  public final String b()
  {
    return i.a;
  }
  
  public String b(int paramInt, Locale paramLocale)
  {
    return a(paramInt, paramLocale);
  }
  
  public String b(long paramLong, Locale paramLocale)
  {
    return b(a(paramLong), paramLocale);
  }
  
  public final String b(chb paramchb, Locale paramLocale)
  {
    return b(paramchb.a(i), paramLocale);
  }
  
  public boolean b(long paramLong)
  {
    return false;
  }
  
  public int c(long paramLong)
  {
    return h();
  }
  
  public long c(long paramLong1, long paramLong2)
  {
    return d().c(paramLong1, paramLong2);
  }
  
  public final boolean c()
  {
    return true;
  }
  
  public abstract long d(long paramLong);
  
  public abstract cgm d();
  
  public long e(long paramLong)
  {
    long l2 = d(paramLong);
    long l1 = paramLong;
    if (l2 != paramLong) {
      l1 = a(l2, 1);
    }
    return l1;
  }
  
  public long f(long paramLong)
  {
    long l1 = d(paramLong);
    long l2 = e(paramLong);
    if (paramLong - l1 <= l2 - paramLong) {
      return l1;
    }
    return l2;
  }
  
  public cgm f()
  {
    return null;
  }
  
  public long g(long paramLong)
  {
    long l1 = d(paramLong);
    long l2 = e(paramLong);
    if (l2 - paramLong <= paramLong - l1) {
      return l2;
    }
    return l1;
  }
  
  public abstract int h();
  
  public long h(long paramLong)
  {
    long l1 = d(paramLong);
    long l2 = e(paramLong);
    long l3 = paramLong - l1;
    paramLong = l2 - paramLong;
    if (l3 < paramLong) {}
    do
    {
      return l1;
      if (paramLong < l3) {
        return l2;
      }
    } while ((a(l2) & 0x1) != 0);
    return l2;
  }
  
  public long i(long paramLong)
  {
    return paramLong - d(paramLong);
  }
  
  public String toString()
  {
    return "DateTimeField[" + i.a + ']';
  }
}

/* Location:
 * Qualified Name:     cjb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */