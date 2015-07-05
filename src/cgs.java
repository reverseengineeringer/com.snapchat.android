import java.io.Serializable;
import org.joda.convert.ToString;

public final class cgs
  extends chh
  implements chb, Serializable
{
  public final long a;
  public final cgf b;
  
  public cgs()
  {
    this(cgj.a(), cic.M());
  }
  
  public cgs(byte paramByte)
  {
    this(0L, cic.M());
  }
  
  public cgs(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    this(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, cic.L());
  }
  
  private cgs(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf).b();
    long l = paramcgf.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    b = paramcgf;
    a = l;
  }
  
  private cgs(long paramLong, cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf);
    a = paramcgf.a().a(cgk.a, paramLong);
    b = paramcgf.b();
  }
  
  public static cgs c()
  {
    return new cgs();
  }
  
  public final int a()
  {
    return 4;
  }
  
  public final int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IndexOutOfBoundsException("Invalid index: " + paramInt);
    case 0: 
      return b.E().a(a);
    case 1: 
      return b.C().a(a);
    case 2: 
      return b.u().a(a);
    }
    return b.e().a(a);
  }
  
  public final int a(cgi paramcgi)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }
    return paramcgi.a(b).a(a);
  }
  
  public final int a(chb paramchb)
  {
    if (this == paramchb) {
      return 0;
    }
    if ((paramchb instanceof cgs))
    {
      cgs localcgs = (cgs)paramchb;
      if (b.equals(b))
      {
        if (a < a) {
          return -1;
        }
        if (a == a) {
          return 0;
        }
        return 1;
      }
    }
    return super.a(paramchb);
  }
  
  protected final cgh a(int paramInt, cgf paramcgf)
  {
    switch (paramInt)
    {
    default: 
      throw new IndexOutOfBoundsException("Invalid index: " + paramInt);
    case 0: 
      return paramcgf.E();
    case 1: 
      return paramcgf.C();
    case 2: 
      return paramcgf.u();
    }
    return paramcgf.e();
  }
  
  public final cgs a(long paramLong)
  {
    if (paramLong == a) {
      return this;
    }
    return new cgs(paramLong, b);
  }
  
  public final cgf b()
  {
    return b;
  }
  
  public final cgs b(int paramInt)
  {
    if (paramInt == 0) {
      return this;
    }
    return a(b.i().a(a, paramInt));
  }
  
  public final boolean b(cgi paramcgi)
  {
    if (paramcgi == null) {
      return false;
    }
    return paramcgi.a(b).c();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cgs))
    {
      cgs localcgs = (cgs)paramObject;
      if (b.equals(b)) {
        return a == a;
      }
    }
    return super.equals(paramObject);
  }
  
  @ToString
  public final String toString()
  {
    return ckc.a.b().a(this);
  }
}

/* Location:
 * Qualified Name:     cgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */