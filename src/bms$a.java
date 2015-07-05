import java.util.Date;

public final class bms$a
{
  public final long a;
  public final bma b;
  public final bmc c;
  public Date d;
  public String e;
  public Date f;
  public String g;
  public Date h;
  public long i;
  public long j;
  public String k;
  public int l = -1;
  
  public bms$a(long paramLong, bma parambma, bmc parambmc)
  {
    a = paramLong;
    b = parambma;
    c = parambmc;
    if (parambmc != null)
    {
      parambma = f;
      int m = 0;
      int n = a.length / 2;
      if (m < n)
      {
        parambmc = parambma.a(m);
        String str = parambma.b(m);
        if ("Date".equalsIgnoreCase(parambmc))
        {
          d = bmv.a(str);
          e = str;
        }
        for (;;)
        {
          m += 1;
          break;
          if ("Expires".equalsIgnoreCase(parambmc))
          {
            h = bmv.a(str);
          }
          else if ("Last-Modified".equalsIgnoreCase(parambmc))
          {
            f = bmv.a(str);
            g = str;
          }
          else if ("ETag".equalsIgnoreCase(parambmc))
          {
            k = str;
          }
          else if ("Age".equalsIgnoreCase(parambmc))
          {
            l = bmt.b(str, -1);
          }
          else if (bmz.b.equalsIgnoreCase(parambmc))
          {
            i = Long.parseLong(str);
          }
          else if (bmz.c.equalsIgnoreCase(parambmc))
          {
            j = Long.parseLong(str);
          }
        }
      }
    }
  }
  
  public static boolean a(bma parambma)
  {
    return (parambma.a("If-Modified-Since") != null) || (parambma.a("If-None-Match") != null);
  }
}

/* Location:
 * Qualified Name:     bms.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */