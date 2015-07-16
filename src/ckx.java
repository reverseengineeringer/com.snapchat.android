import java.util.Locale;

public final class ckx
{
  final clb a;
  final ckz b;
  public final Locale c;
  public final boolean d;
  public final chl e;
  public final Integer f;
  public final int g;
  private final chg h;
  
  public ckx(clb paramclb, ckz paramckz)
  {
    a = paramclb;
    b = paramckz;
    c = null;
    d = false;
    h = null;
    e = null;
    f = null;
    g = 2000;
  }
  
  private ckx(clb paramclb, ckz paramckz, Locale paramLocale, boolean paramBoolean, chg paramchg, chl paramchl, Integer paramInteger, int paramInt)
  {
    a = paramclb;
    b = paramckz;
    c = paramLocale;
    d = paramBoolean;
    h = paramchg;
    e = paramchl;
    f = paramInteger;
    g = paramInt;
  }
  
  private clb c()
  {
    clb localclb = a;
    if (localclb == null) {
      throw new UnsupportedOperationException("Printing not supported");
    }
    return localclb;
  }
  
  public final long a(String paramString)
  {
    ckz localckz = b();
    cla localcla = new cla(b(h), c, f, g);
    int j = localckz.a(localcla, paramString, 0);
    int i;
    if (j >= 0)
    {
      i = j;
      if (j >= paramString.length()) {
        return localcla.a(paramString);
      }
    }
    else
    {
      i = j ^ 0xFFFFFFFF;
    }
    throw new IllegalArgumentException(clc.b(paramString, i));
  }
  
  public final ckx a()
  {
    chl localchl = chl.a;
    if (e == localchl) {
      return this;
    }
    return new ckx(a, b, c, false, h, localchl, f, g);
  }
  
  public final ckx a(chg paramchg)
  {
    if (h == paramchg) {
      return this;
    }
    return new ckx(a, b, c, d, paramchg, e, f, g);
  }
  
  public final String a(cia paramcia)
  {
    StringBuffer localStringBuffer = new StringBuffer(c().a());
    a(localStringBuffer, chk.a(paramcia), chk.b(paramcia));
    return localStringBuffer.toString();
  }
  
  public final String a(cic paramcic)
  {
    StringBuffer localStringBuffer = new StringBuffer(c().a());
    clb localclb = c();
    if (paramcic == null) {
      throw new IllegalArgumentException("The partial must not be null");
    }
    localclb.a(localStringBuffer, paramcic, c);
    return localStringBuffer.toString();
  }
  
  public final void a(StringBuffer paramStringBuffer, long paramLong, chg paramchg)
  {
    clb localclb = c();
    chg localchg = b(paramchg);
    chl localchl = localchg.a();
    int j = localchl.b(paramLong);
    long l2 = j + paramLong;
    long l1 = l2;
    int i = j;
    paramchg = localchl;
    if ((paramLong ^ l2) < 0L)
    {
      l1 = l2;
      i = j;
      paramchg = localchl;
      if ((j ^ paramLong) >= 0L)
      {
        paramchg = chl.a;
        i = 0;
        l1 = paramLong;
      }
    }
    localclb.a(paramStringBuffer, l1, localchg.b(), i, paramchg, c);
  }
  
  public final chg b(chg paramchg)
  {
    paramchg = chk.a(paramchg);
    if (h != null) {
      paramchg = h;
    }
    chg localchg = paramchg;
    if (e != null) {
      localchg = paramchg.a(e);
    }
    return localchg;
  }
  
  public final ckz b()
  {
    ckz localckz = b;
    if (localckz == null) {
      throw new UnsupportedOperationException("Parsing not supported");
    }
    return localckz;
  }
}

/* Location:
 * Qualified Name:     ckx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */