import java.io.Serializable;

public abstract class chj
  implements Serializable
{
  private static final chj b = new chj.a("era", (byte)1, cho.l(), null);
  private static final chj c = new chj.a("yearOfEra", (byte)2, cho.j(), cho.l());
  private static final chj d = new chj.a("centuryOfEra", (byte)3, cho.k(), cho.l());
  private static final chj e = new chj.a("yearOfCentury", (byte)4, cho.j(), cho.k());
  private static final chj f = new chj.a("year", (byte)5, cho.j(), null);
  private static final chj g = new chj.a("dayOfYear", (byte)6, cho.f(), cho.j());
  private static final chj h = new chj.a("monthOfYear", (byte)7, cho.i(), cho.j());
  private static final chj i = new chj.a("dayOfMonth", (byte)8, cho.f(), cho.i());
  private static final chj j = new chj.a("weekyearOfCentury", (byte)9, cho.h(), cho.k());
  private static final chj k = new chj.a("weekyear", (byte)10, cho.h(), null);
  private static final chj l = new chj.a("weekOfWeekyear", (byte)11, cho.g(), cho.h());
  private static final chj m = new chj.a("dayOfWeek", (byte)12, cho.f(), cho.g());
  private static final chj n = new chj.a("halfdayOfDay", (byte)13, cho.e(), cho.f());
  private static final chj o = new chj.a("hourOfHalfday", (byte)14, cho.d(), cho.e());
  private static final chj p = new chj.a("clockhourOfHalfday", (byte)15, cho.d(), cho.e());
  private static final chj q = new chj.a("clockhourOfDay", (byte)16, cho.d(), cho.f());
  private static final chj r = new chj.a("hourOfDay", (byte)17, cho.d(), cho.f());
  private static final chj s = new chj.a("minuteOfDay", (byte)18, cho.c(), cho.f());
  private static final chj t = new chj.a("minuteOfHour", (byte)19, cho.c(), cho.d());
  private static final chj u = new chj.a("secondOfDay", (byte)20, cho.b(), cho.f());
  private static final chj v = new chj.a("secondOfMinute", (byte)21, cho.b(), cho.c());
  private static final chj w = new chj.a("millisOfDay", (byte)22, cho.a(), cho.f());
  private static final chj x = new chj.a("millisOfSecond", (byte)23, cho.a(), cho.b());
  public final String a;
  
  protected chj(String paramString)
  {
    a = paramString;
  }
  
  public static chj a()
  {
    return x;
  }
  
  public static chj b()
  {
    return w;
  }
  
  public static chj c()
  {
    return v;
  }
  
  public static chj d()
  {
    return u;
  }
  
  public static chj e()
  {
    return t;
  }
  
  public static chj f()
  {
    return s;
  }
  
  public static chj g()
  {
    return r;
  }
  
  public static chj h()
  {
    return q;
  }
  
  public static chj i()
  {
    return o;
  }
  
  public static chj j()
  {
    return p;
  }
  
  public static chj k()
  {
    return n;
  }
  
  public static chj l()
  {
    return m;
  }
  
  public static chj m()
  {
    return i;
  }
  
  public static chj n()
  {
    return g;
  }
  
  public static chj o()
  {
    return l;
  }
  
  public static chj p()
  {
    return k;
  }
  
  public static chj q()
  {
    return j;
  }
  
  public static chj r()
  {
    return h;
  }
  
  public static chj s()
  {
    return f;
  }
  
  public static chj t()
  {
    return c;
  }
  
  public static chj u()
  {
    return e;
  }
  
  public static chj v()
  {
    return d;
  }
  
  public static chj w()
  {
    return b;
  }
  
  public abstract chi a(chg paramchg);
  
  public String toString()
  {
    return a;
  }
  
  public abstract cho x();
  
  public abstract cho y();
  
  static final class a
    extends chj
  {
    private final byte b;
    private final transient cho c;
    private final transient cho d;
    
    a(String paramString, byte paramByte, cho paramcho1, cho paramcho2)
    {
      super();
      b = paramByte;
      c = paramcho1;
      d = paramcho2;
    }
    
    public final chi a(chg paramchg)
    {
      paramchg = chk.a(paramchg);
      switch (b)
      {
      default: 
        throw new InternalError();
      case 1: 
        return paramchg.K();
      case 2: 
        return paramchg.F();
      case 3: 
        return paramchg.I();
      case 4: 
        return paramchg.G();
      case 5: 
        return paramchg.E();
      case 6: 
        return paramchg.v();
      case 7: 
        return paramchg.C();
      case 8: 
        return paramchg.u();
      case 9: 
        return paramchg.A();
      case 10: 
        return paramchg.z();
      case 11: 
        return paramchg.x();
      case 12: 
        return paramchg.t();
      case 13: 
        return paramchg.r();
      case 14: 
        return paramchg.p();
      case 15: 
        return paramchg.q();
      case 16: 
        return paramchg.n();
      case 17: 
        return paramchg.m();
      case 18: 
        return paramchg.k();
      case 19: 
        return paramchg.j();
      case 20: 
        return paramchg.h();
      case 21: 
        return paramchg.g();
      case 22: 
        return paramchg.e();
      }
      return paramchg.d();
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
    
    public final cho x()
    {
      return c;
    }
    
    public final cho y()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     chj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */