import java.util.Locale;

public final class cjw
{
  final cka a;
  final cjy b;
  public final Locale c;
  public final boolean d;
  public final cgk e;
  public final Integer f;
  public final int g;
  private final cgf h;
  
  public cjw(cka paramcka, cjy paramcjy)
  {
    a = paramcka;
    b = paramcjy;
    c = null;
    d = false;
    h = null;
    e = null;
    f = null;
    g = 2000;
  }
  
  private cjw(cka paramcka, cjy paramcjy, Locale paramLocale, boolean paramBoolean, cgf paramcgf, cgk paramcgk, Integer paramInteger, int paramInt)
  {
    a = paramcka;
    b = paramcjy;
    c = paramLocale;
    d = paramBoolean;
    h = paramcgf;
    e = paramcgk;
    f = paramInteger;
    g = paramInt;
  }
  
  private cka c()
  {
    cka localcka = a;
    if (localcka == null) {
      throw new UnsupportedOperationException("Printing not supported");
    }
    return localcka;
  }
  
  public final long a(String paramString)
  {
    cjy localcjy = b();
    cjz localcjz = new cjz(b(h), c, f, g);
    int j = localcjy.a(localcjz, paramString, 0);
    int i;
    if (j >= 0)
    {
      i = j;
      if (j >= paramString.length()) {
        return localcjz.a(paramString);
      }
    }
    else
    {
      i = j ^ 0xFFFFFFFF;
    }
    throw new IllegalArgumentException(ckb.b(paramString, i));
  }
  
  public final cjw a()
  {
    cgk localcgk = cgk.a;
    if (e == localcgk) {
      return this;
    }
    return new cjw(a, b, c, false, h, localcgk, f, g);
  }
  
  public final cjw a(cgf paramcgf)
  {
    if (h == paramcgf) {
      return this;
    }
    return new cjw(a, b, c, d, paramcgf, e, f, g);
  }
  
  public final String a(cgz paramcgz)
  {
    StringBuffer localStringBuffer = new StringBuffer(c().a());
    a(localStringBuffer, cgj.a(paramcgz), cgj.b(paramcgz));
    return localStringBuffer.toString();
  }
  
  public final String a(chb paramchb)
  {
    StringBuffer localStringBuffer = new StringBuffer(c().a());
    cka localcka = c();
    if (paramchb == null) {
      throw new IllegalArgumentException("The partial must not be null");
    }
    localcka.a(localStringBuffer, paramchb, c);
    return localStringBuffer.toString();
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, cgf paramcgf)
  {
    cka localcka = c();
    cgf localcgf = b(paramcgf);
    cgk localcgk = localcgf.a();
    int j = localcgk.b(paramLong);
    long l2 = j + paramLong;
    long l1 = l2;
    int i = j;
    paramcgf = localcgk;
    if ((paramLong ^ l2) < 0L)
    {
      l1 = l2;
      i = j;
      paramcgf = localcgk;
      if ((j ^ paramLong) >= 0L)
      {
        paramcgf = cgk.a;
        i = 0;
        l1 = paramLong;
      }
    }
    localcka.a(paramStringBuffer, l1, localcgf.b(), i, paramcgf, c);
  }
  
  public final cgf b(cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf);
    if (h != null) {
      paramcgf = h;
    }
    cgf localcgf = paramcgf;
    if (e != null) {
      localcgf = paramcgf.a(e);
    }
    return localcgf;
  }
  
  public final cjy b()
  {
    cjy localcjy = b;
    if (localcjy == null) {
      throw new UnsupportedOperationException("Parsing not supported");
    }
    return localcjy;
  }
}

/* Location:
 * Qualified Name:     cjw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */