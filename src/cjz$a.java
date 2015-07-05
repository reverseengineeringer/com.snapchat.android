import java.util.Locale;

final class cjz$a
  implements Comparable<a>
{
  final cgh a;
  final int b;
  final String c;
  final Locale d;
  
  cjz$a(cgh paramcgh, int paramInt)
  {
    a = paramcgh;
    b = paramInt;
    c = null;
    d = null;
  }
  
  cjz$a(cgh paramcgh, String paramString, Locale paramLocale)
  {
    a = paramcgh;
    b = 0;
    c = paramString;
    d = paramLocale;
  }
  
  public final int a(a parama)
  {
    parama = a;
    int i = cjz.a(a.e(), parama.e());
    if (i != 0) {
      return i;
    }
    return cjz.a(a.d(), parama.d());
  }
  
  final long a(long paramLong, boolean paramBoolean)
  {
    if (c == null) {}
    for (paramLong = a.b(paramLong, b);; paramLong = a.a(paramLong, c, d))
    {
      long l = paramLong;
      if (paramBoolean) {
        l = a.d(paramLong);
      }
      return l;
    }
  }
}

/* Location:
 * Qualified Name:     cjz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */