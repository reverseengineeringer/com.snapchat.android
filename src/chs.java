import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.joda.convert.ToString;

public final class chs
  extends cii
  implements cic, Serializable
{
  private static final Set<cho> c;
  public final long a;
  public final chg b;
  private volatile transient int d;
  
  static
  {
    HashSet localHashSet = new HashSet();
    c = localHashSet;
    localHashSet.add(cho.f());
    c.add(cho.g());
    c.add(cho.i());
    c.add(cho.h());
    c.add(cho.j());
    c.add(cho.k());
    c.add(cho.l());
  }
  
  public chs()
  {
    this(chk.a(), cjd.M());
  }
  
  public chs(long paramLong)
  {
    this(paramLong, cjd.M());
  }
  
  public chs(long paramLong, chg paramchg)
  {
    paramchg = chk.a(paramchg);
    paramLong = paramchg.a().a(chl.a, paramLong);
    paramchg = paramchg.b();
    a = paramchg.u().d(paramLong);
    b = paramchg;
  }
  
  public final int a()
  {
    return 3;
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
    }
    return b.u().a(a);
  }
  
  public final int a(chj paramchj)
  {
    if (paramchj == null) {
      throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }
    if (!b(paramchj)) {
      throw new IllegalArgumentException("Field '" + paramchj + "' is not supported");
    }
    return paramchj.a(b).a(a);
  }
  
  public final int a(cic paramcic)
  {
    if (this == paramcic) {
      return 0;
    }
    if ((paramcic instanceof chs))
    {
      chs localchs = (chs)paramcic;
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
  
  public final chh a(chl paramchl)
  {
    paramchl = chk.a(paramchl);
    chg localchg = b.a(paramchl);
    long l = paramchl.e(a + 21600000L);
    return new chh(localchg.u().d(l), localchg);
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
    }
    return paramchg.u();
  }
  
  public final chg b()
  {
    return b;
  }
  
  public final boolean b(chj paramchj)
  {
    if (paramchj == null) {}
    cho localcho;
    do
    {
      return false;
      localcho = paramchj.x();
    } while ((!c.contains(localcho)) && (localcho.a(b).d() < b.s().d()));
    return paramchj.a(b).c();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof chs))
    {
      chs localchs = (chs)paramObject;
      if (b.equals(b)) {
        return a == a;
      }
    }
    return super.equals(paramObject);
  }
  
  public final int hashCode()
  {
    int j = d;
    int i = j;
    if (j == 0)
    {
      i = super.hashCode();
      d = i;
    }
    return i;
  }
  
  @ToString
  public final String toString()
  {
    return cld.a.c().a(this);
  }
}

/* Location:
 * Qualified Name:     chs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */