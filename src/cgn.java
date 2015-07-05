import java.io.Serializable;

public abstract class cgn
  implements Serializable
{
  static final cgn a = new cgn.a("eras", (byte)1);
  static final cgn b = new cgn.a("centuries", (byte)2);
  static final cgn c = new cgn.a("weekyears", (byte)3);
  static final cgn d = new cgn.a("years", (byte)4);
  static final cgn e = new cgn.a("months", (byte)5);
  static final cgn f = new cgn.a("weeks", (byte)6);
  static final cgn g = new cgn.a("days", (byte)7);
  static final cgn h = new cgn.a("halfdays", (byte)8);
  static final cgn i = new cgn.a("hours", (byte)9);
  static final cgn j = new cgn.a("minutes", (byte)10);
  static final cgn k = new cgn.a("seconds", (byte)11);
  static final cgn l = new cgn.a("millis", (byte)12);
  public final String m;
  
  protected cgn(String paramString)
  {
    m = paramString;
  }
  
  public static cgn a()
  {
    return l;
  }
  
  public static cgn b()
  {
    return k;
  }
  
  public static cgn c()
  {
    return j;
  }
  
  public static cgn d()
  {
    return i;
  }
  
  public static cgn e()
  {
    return h;
  }
  
  public static cgn f()
  {
    return g;
  }
  
  public static cgn g()
  {
    return f;
  }
  
  public static cgn h()
  {
    return c;
  }
  
  public static cgn i()
  {
    return e;
  }
  
  public static cgn j()
  {
    return d;
  }
  
  public static cgn k()
  {
    return b;
  }
  
  public static cgn l()
  {
    return a;
  }
  
  public abstract cgm a(cgf paramcgf);
  
  public String toString()
  {
    return m;
  }
  
  static final class a
    extends cgn
  {
    private final byte n;
    
    a(String paramString, byte paramByte)
    {
      super();
      n = paramByte;
    }
    
    public final cgm a(cgf paramcgf)
    {
      paramcgf = cgj.a(paramcgf);
      switch (n)
      {
      default: 
        throw new InternalError();
      case 1: 
        return paramcgf.J();
      case 2: 
        return paramcgf.H();
      case 3: 
        return paramcgf.y();
      case 4: 
        return paramcgf.D();
      case 5: 
        return paramcgf.B();
      case 6: 
        return paramcgf.w();
      case 7: 
        return paramcgf.s();
      case 8: 
        return paramcgf.o();
      case 9: 
        return paramcgf.l();
      case 10: 
        return paramcgf.i();
      case 11: 
        return paramcgf.f();
      }
      return paramcgf.c();
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
 * Qualified Name:     cgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */