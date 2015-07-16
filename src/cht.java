import java.io.Serializable;
import org.joda.convert.ToString;

public final class cht
  extends cii
  implements cic, Serializable
{
  public final long a;
  public final chg b;
  
  public cht()
  {
    this(chk.a(), cjd.M());
  }
  
  public cht(byte paramByte)
  {
    this(0L, cjd.M());
  }
  
  public cht(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    this(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, cjd.L());
  }
  
  private cht(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, chg paramchg)
  {
    paramchg = chk.a(paramchg).b();
    long l = paramchg.a(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
    b = paramchg;
    a = l;
  }
  
  private cht(long paramLong, chg paramchg)
  {
    paramchg = chk.a(paramchg);
    a = paramchg.a().a(chl.a, paramLong);
    b = paramchg.b();
  }
  
  public static cht c()
  {
    return new cht();
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
  
  public final int a(chj paramchj)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }
    return paramchj.a(b).a(a);
  }
  
  public final int a(cic paramcic)
  {
    if (this == paramcic) {
      return 0;
    }
    if ((paramcic instanceof cht))
    {
      cht localcht = (cht)paramcic;
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
    return super.a(paramcic);
  }
  
  protected final chi a(int paramInt, chg paramchg)
  {
    switch (paramInt)
    {
    default: 
      throw new IndexOutOfBoundsException("Invalid index: " + paramInt);
    case 0: 
      return paramchg.E();
    case 1: 
      return paramchg.C();
    case 2: 
      return paramchg.u();
    }
    return paramchg.e();
  }
  
  public final cht a(long paramLong)
  {
    if (paramLong == a) {
      return this;
    }
    return new cht(paramLong, b);
  }
  
  public final chg b()
  {
    return b;
  }
  
  public final cht b(int paramInt)
  {
    if (paramInt == 0) {
      return this;
    }
    return a(b.i().a(a, paramInt));
  }
  
  public final boolean b(chj paramchj)
  {
    if (paramchj == null) {
      return false;
    }
    return paramchj.a(b).c();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cht))
    {
      cht localcht = (cht)paramObject;
      if (b.equals(b)) {
        return a == a;
      }
    }
    return super.equals(paramObject);
  }
  
  @ToString
  public final String toString()
  {
    return cld.a.b().a(this);
  }
}

/* Location:
 * Qualified Name:     cht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */