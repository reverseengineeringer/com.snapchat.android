import java.io.Serializable;

public abstract class cho
  implements Serializable
{
  static final cho a = new cho.a("eras", (byte)1);
  static final cho b = new cho.a("centuries", (byte)2);
  static final cho c = new cho.a("weekyears", (byte)3);
  static final cho d = new cho.a("years", (byte)4);
  static final cho e = new cho.a("months", (byte)5);
  static final cho f = new cho.a("weeks", (byte)6);
  static final cho g = new cho.a("days", (byte)7);
  static final cho h = new cho.a("halfdays", (byte)8);
  static final cho i = new cho.a("hours", (byte)9);
  static final cho j = new cho.a("minutes", (byte)10);
  static final cho k = new cho.a("seconds", (byte)11);
  static final cho l = new cho.a("millis", (byte)12);
  public final String m;
  
  protected cho(String paramString)
  {
    m = paramString;
  }
  
  public static cho a()
  {
    return l;
  }
  
  public static cho b()
  {
    return k;
  }
  
  public static cho c()
  {
    return j;
  }
  
  public static cho d()
  {
    return i;
  }
  
  public static cho e()
  {
    return h;
  }
  
  public static cho f()
  {
    return g;
  }
  
  public static cho g()
  {
    return f;
  }
  
  public static cho h()
  {
    return c;
  }
  
  public static cho i()
  {
    return e;
  }
  
  public static cho j()
  {
    return d;
  }
  
  public static cho k()
  {
    return b;
  }
  
  public static cho l()
  {
    return a;
  }
  
  public abstract chn a(chg paramchg);
  
  public String toString()
  {
    return m;
  }
  
  static final class a
    extends cho
  {
    private final byte n;
    
    a(String paramString, byte paramByte)
    {
      super();
      n = paramByte;
    }
    
    public final chn a(chg paramchg)
    {
      paramchg = chk.a(paramchg);
      switch (n)
      {
      default: 
        throw new InternalError();
      case 1: 
        return paramchg.J();
      case 2: 
        return paramchg.H();
      case 3: 
        return paramchg.y();
      case 4: 
        return paramchg.D();
      case 5: 
        return paramchg.B();
      case 6: 
        return paramchg.w();
      case 7: 
        return paramchg.s();
      case 8: 
        return paramchg.o();
      case 9: 
        return paramchg.l();
      case 10: 
        return paramchg.i();
      case 11: 
        return paramchg.f();
      }
      return paramchg.c();
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
      } while (n == n);
      return false;
      return false;
    }
    
    public final int hashCode()
    {
      return 1 << n;
    }
  }
}

/* Location:
 * Qualified Name:     cho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */