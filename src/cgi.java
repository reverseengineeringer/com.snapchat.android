import java.io.Serializable;

public abstract class cgi
  implements Serializable
{
  private static final cgi b = new cgi.a("era", (byte)1, cgn.l(), null);
  private static final cgi c = new cgi.a("yearOfEra", (byte)2, cgn.j(), cgn.l());
  private static final cgi d = new cgi.a("centuryOfEra", (byte)3, cgn.k(), cgn.l());
  private static final cgi e = new cgi.a("yearOfCentury", (byte)4, cgn.j(), cgn.k());
  private static final cgi f = new cgi.a("year", (byte)5, cgn.j(), null);
  private static final cgi g = new cgi.a("dayOfYear", (byte)6, cgn.f(), cgn.j());
  private static final cgi h = new cgi.a("monthOfYear", (byte)7, cgn.i(), cgn.j());
  private static final cgi i = new cgi.a("dayOfMonth", (byte)8, cgn.f(), cgn.i());
  private static final cgi j = new cgi.a("weekyearOfCentury", (byte)9, cgn.h(), cgn.k());
  private static final cgi k = new cgi.a("weekyear", (byte)10, cgn.h(), null);
  private static final cgi l = new cgi.a("weekOfWeekyear", (byte)11, cgn.g(), cgn.h());
  private static final cgi m = new cgi.a("dayOfWeek", (byte)12, cgn.f(), cgn.g());
  private static final cgi n = new cgi.a("halfdayOfDay", (byte)13, cgn.e(), cgn.f());
  private static final cgi o = new cgi.a("hourOfHalfday", (byte)14, cgn.d(), cgn.e());
  private static final cgi p = new cgi.a("clockhourOfHalfday", (byte)15, cgn.d(), cgn.e());
  private static final cgi q = new cgi.a("clockhourOfDay", (byte)16, cgn.d(), cgn.f());
  private static final cgi r = new cgi.a("hourOfDay", (byte)17, cgn.d(), cgn.f());
  private static final cgi s = new cgi.a("minuteOfDay", (byte)18, cgn.c(), cgn.f());
  private static final cgi t = new cgi.a("minuteOfHour", (byte)19, cgn.c(), cgn.d());
  private static final cgi u = new cgi.a("secondOfDay", (byte)20, cgn.b(), cgn.f());
  private static final cgi v = new cgi.a("secondOfMinute", (byte)21, cgn.b(), cgn.c());
  private static final cgi w = new cgi.a("millisOfDay", (byte)22, cgn.a(), cgn.f());
  private static final cgi x = new cgi.a("millisOfSecond", (byte)23, cgn.a(), cgn.b());
  public final String a;
  
  protected cgi(String paramString)
  {
    a = paramString;
  }
  
  public static cgi a()
  {
    return x;
  }
  
  public static cgi b()
  {
    return w;
  }
  
  public static cgi c()
  {
    return v;
  }
  
  public static cgi d()
  {
    return u;
  }
  
  public static cgi e()
  {
    return t;
  }
  
  public static cgi f()
  {
    return s;
  }
  
  public static cgi g()
  {
    return r;
  }
  
  public static cgi h()
  {
    return q;
  }
  
  public static cgi i()
  {
    return o;
  }
  
  public static cgi j()
  {
    return p;
  }
  
  public static cgi k()
  {
    return n;
  }
  
  public static cgi l()
  {
    return m;
  }
  
  public static cgi m()
  {
    return i;
  }
  
  public static cgi n()
  {
    return g;
  }
  
  public static cgi o()
  {
    return l;
  }
  
  public static cgi p()
  {
    return k;
  }
  
  public static cgi q()
  {
    return j;
  }
  
  public static cgi r()
  {
    return h;
  }
  
  public static cgi s()
  {
    return f;
  }
  
  public static cgi t()
  {
    return c;
  }
  
  public static cgi u()
  {
    return e;
  }
  
  public static cgi v()
  {
    return d;
  }
  
  public static cgi w()
  {
    return b;
  }
  
  public abstract cgh a(cgf paramcgf);
  
  public String toString()
  {
    return a;
  }
  
  public abstract cgn x();
  
  public abstract cgn y();
  
  static final class a
    extends cgi
  {
    private final byte b;
    private final transient cgn c;
    private final transient cgn d;
    
    a(String paramString, byte paramByte, cgn paramcgn1, cgn paramcgn2)
    {
      super();
      b = paramByte;
      c = paramcgn1;
      d = paramcgn2;
    }
    
    public final cgh a(cgf paramcgf)
    {
      paramcgf = cgj.a(paramcgf);
      switch (b)
      {
      default: 
        throw new InternalError();
      case 1: 
        return paramcgf.K();
      case 2: 
        return paramcgf.F();
      case 3: 
        return paramcgf.I();
      case 4: 
        return paramcgf.G();
      case 5: 
        return paramcgf.E();
      case 6: 
        return paramcgf.v();
      case 7: 
        return paramcgf.C();
      case 8: 
        return paramcgf.u();
      case 9: 
        return paramcgf.A();
      case 10: 
        return paramcgf.z();
      case 11: 
        return paramcgf.x();
      case 12: 
        return paramcgf.t();
      case 13: 
        return paramcgf.r();
      case 14: 
        return paramcgf.p();
      case 15: 
        return paramcgf.q();
      case 16: 
        return paramcgf.n();
      case 17: 
        return paramcgf.m();
      case 18: 
        return paramcgf.k();
      case 19: 
        return paramcgf.j();
      case 20: 
        return paramcgf.h();
      case 21: 
        return paramcgf.g();
      case 22: 
        return paramcgf.e();
      }
      return paramcgf.d();
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof a)) {
          break;
        }
      } while (b == b);
      return false;
      return false;
    }
    
    public final int hashCode()
    {
      return 1 << b;
    }
    
    public final cgn x()
    {
      return c;
    }
    
    public final cgn y()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     cgi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */