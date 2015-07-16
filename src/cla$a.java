import java.util.Locale;

final class cla$a
  implements Comparable<a>
{
  final chi a;
  final int b;
  final String c;
  final Locale d;
  
  cla$a(chi paramchi, int paramInt)
  {
    a = paramchi;
    b = paramInt;
    c = null;
    d = null;
  }
  
  cla$a(chi paramchi, String paramString, Locale paramLocale)
  {
    a = paramchi;
    b = 0;
    c = paramString;
    d = paramLocale;
  }
  
  public final int a(a parama)
  {
    parama = a;
    int i = cla.a(a.e(), parama.e());
    if (i != 0) {
      return i;
    }
    return cla.a(a.d(), parama.d());
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
 * Qualified Name:     cla.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */