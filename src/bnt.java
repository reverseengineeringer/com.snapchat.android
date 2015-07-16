import java.util.Date;

public final class bnt
{
  public final bnb a;
  public final bnd b;
  
  private bnt(bnb parambnb, bnd parambnd)
  {
    a = parambnb;
    b = parambnd;
  }
  
  public static boolean a(bnd parambnd, bnb parambnb)
  {
    switch (c)
    {
    }
    do
    {
      return false;
    } while (((parambnd.a("Expires") == null) && (ge == -1) && (!gg) && (!gf)) || (gd) || (dd));
    return true;
  }
  
  public static final class a
  {
    public final long a;
    public final bnb b;
    public final bnd c;
    public Date d;
    public String e;
    public Date f;
    public String g;
    public Date h;
    public long i;
    public long j;
    public String k;
    public int l = -1;
    
    public a(long paramLong, bnb parambnb, bnd parambnd)
    {
      a = paramLong;
      b = parambnb;
      c = parambnd;
      if (parambnd != null)
      {
        parambnb = f;
        int m = 0;
        int n = a.length / 2;
        if (m < n)
        {
          parambnd = parambnb.a(m);
          String str = parambnb.b(m);
          if ("Date".equalsIgnoreCase(parambnd))
          {
            d = bnw.a(str);
            e = str;
          }
          for (;;)
          {
            m += 1;
            break;
            if ("Expires".equalsIgnoreCase(parambnd))
            {
              h = bnw.a(str);
            }
            else if ("Last-Modified".equalsIgnoreCase(parambnd))
            {
              f = bnw.a(str);
              g = str;
            }
            else if ("ETag".equalsIgnoreCase(parambnd))
            {
              k = str;
            }
            else if ("Age".equalsIgnoreCase(parambnd))
            {
              l = bnu.b(str, -1);
            }
            else if (boa.b.equalsIgnoreCase(parambnd))
            {
              i = Long.parseLong(str);
            }
            else if (boa.c.equalsIgnoreCase(parambnd))
            {
              j = Long.parseLong(str);
            }
          }
        }
      }
    }
    
    public static boolean a(bnb parambnb)
    {
      return (parambnb.a("If-Modified-Since") != null) || (parambnb.a("If-None-Match") != null);
    }
  }
}

/* Location:
 * Qualified Name:     bnt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */