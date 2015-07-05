import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.joda.convert.ToString;

public final class cgr
  extends chh
  implements chb, Serializable
{
  private static final Set<cgn> c;
  public final long a;
  public final cgf b;
  private volatile transient int d;
  
  static
  {
    HashSet localHashSet = new HashSet();
    c = localHashSet;
    localHashSet.add(cgn.f());
    c.add(cgn.g());
    c.add(cgn.i());
    c.add(cgn.h());
    c.add(cgn.j());
    c.add(cgn.k());
    c.add(cgn.l());
  }
  
  public cgr()
  {
    this(cgj.a(), cic.M());
  }
  
  public cgr(long paramLong)
  {
    this(paramLong, cic.M());
  }
  
  public cgr(long paramLong, cgf paramcgf)
  {
    paramcgf = cgj.a(paramcgf);
    paramLong = paramcgf.a().a(cgk.a, paramLong);
    paramcgf = paramcgf.b();
    a = paramcgf.u().d(paramLong);
    b = paramcgf;
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
  
  public final int a(cgi paramcgi)
  {
    if (paramcgi == null) {
      throw new IllegalArgumentException("The DateTimeFieldType must not be null");
    }
    if (!b(paramcgi)) {
      throw new IllegalArgumentException("Field '" + paramcgi + "' is not supported");
    }
    return paramcgi.a(b).a(a);
  }
  
  public final int a(chb paramchb)
  {
    if (this == paramchb) {
      return 0;
    }
    if ((paramchb instanceof cgr))
    {
      cgr localcgr = (cgr)paramchb;
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
  
  public final cgg a(cgk paramcgk)
  {
    paramcgk = cgj.a(paramcgk);
    cgf localcgf = b.a(paramcgk);
    long l = paramcgk.e(a + 21600000L);
    return new cgg(localcgf.u().d(l), localcgf);
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
    }
    return paramcgf.u();
  }
  
  public final cgf b()
  {
    return b;
  }
  
  public final boolean b(cgi paramcgi)
  {
    if (paramcgi == null) {}
    cgn localcgn;
    do
    {
      return false;
      localcgn = paramcgi.x();
    } while ((!c.contains(localcgn)) && (localcgn.a(b).d() < b.s().d()));
    return paramcgi.a(b).c();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof cgr))
    {
      cgr localcgr = (cgr)paramObject;
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
    return ckc.a.c().a(this);
  }
}

/* Location:
 * Qualified Name:     cgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */