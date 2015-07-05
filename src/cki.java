public final class cki
  extends cgk
{
  private static final int d;
  private final cgk e;
  private final cki.a[] f = new cki.a[d + 1];
  
  static
  {
    try
    {
      Integer localInteger = Integer.getInteger("org.joda.time.tz.CachedDateTimeZone.size");
      if (localInteger == null)
      {
        i = 512;
        d = i - 1;
        return;
      }
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        Object localObject = null;
        continue;
        int i = ((Integer)localObject).intValue() - 1;
        int j = 0;
        while (i > 0)
        {
          j += 1;
          i >>= 1;
        }
        i = 1 << j;
      }
    }
  }
  
  private cki(cgk paramcgk)
  {
    super(c);
    e = paramcgk;
  }
  
  public static cki a(cgk paramcgk)
  {
    if ((paramcgk instanceof cki)) {
      return (cki)paramcgk;
    }
    return new cki(paramcgk);
  }
  
  private cki.a h(long paramLong)
  {
    int i = (int)(paramLong >> 32);
    cki.a[] arrayOfa = f;
    int j = i & d;
    Object localObject2 = arrayOfa[j];
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if ((int)(a >> 32) == i) {}
    }
    else
    {
      long l1 = 0xFFFFFFFF00000000 & paramLong;
      localObject1 = new cki.a(e, l1);
      localObject2 = localObject1;
      long l2;
      for (paramLong = l1;; paramLong = l2)
      {
        l2 = e.f(paramLong);
        if ((l2 == paramLong) || (l2 > (l1 | 0xFFFFFFFF))) {
          break;
        }
        cki.a locala = new cki.a(e, l2);
        c = locala;
        localObject2 = locala;
      }
      arrayOfa[j] = localObject1;
    }
    return (cki.a)localObject1;
  }
  
  public final String a(long paramLong)
  {
    for (cki.a locala = h(paramLong);; locala = c) {
      if ((c == null) || (paramLong < c.a))
      {
        if (d == null) {
          d = b.a(a);
        }
        return d;
      }
    }
  }
  
  public final int b(long paramLong)
  {
    for (cki.a locala = h(paramLong);; locala = c) {
      if ((c == null) || (paramLong < c.a))
      {
        if (e == Integer.MIN_VALUE) {
          e = b.b(a);
        }
        return e;
      }
    }
  }
  
  public final boolean c()
  {
    return e.c();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cki)) {
      return e.equals(e);
    }
    return false;
  }
  
  public final long f(long paramLong)
  {
    return e.f(paramLong);
  }
  
  public final long g(long paramLong)
  {
    return e.g(paramLong);
  }
  
  public final int hashCode()
  {
    return e.hashCode();
  }
  
  static final class a
  {
    public final long a;
    public final cgk b;
    a c;
    String d;
    int e = Integer.MIN_VALUE;
    private int f = Integer.MIN_VALUE;
    
    a(cgk paramcgk, long paramLong)
    {
      a = paramLong;
      b = paramcgk;
    }
  }
}

/* Location:
 * Qualified Name:     cki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */