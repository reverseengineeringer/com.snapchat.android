import java.util.List;
import org.joda.convert.ToString;

public final class cgl
  extends chi
{
  public static final cgl a = new cgl(0);
  public static final cgl b = new cgl(1);
  public static final cgl c = new cgl(2);
  public static final cgl d = new cgl(3);
  public static final cgl e = new cgl(4);
  public static final cgl f = new cgl(5);
  public static final cgl g = new cgl(6);
  public static final cgl h = new cgl(7);
  public static final cgl i = new cgl(Integer.MAX_VALUE);
  public static final cgl j = new cgl(Integer.MIN_VALUE);
  private static final cke l;
  
  static
  {
    Object localObject1;
    if (ckd.a == null)
    {
      localObject1 = new ckf();
      ((ckf)localObject1).b();
      localObject2 = new ckf.d("P");
      ((ckf)localObject1).a((ckh)localObject2, (ckg)localObject2);
      ((ckf)localObject1).a(0);
      localObject1 = ((ckf)localObject1).a("Y");
      ((ckf)localObject1).a(1);
      localObject1 = ((ckf)localObject1).a("M");
      ((ckf)localObject1).a(2);
      localObject1 = ((ckf)localObject1).a("W");
      ((ckf)localObject1).a(3);
      ckf localckf = ((ckf)localObject1).a("D");
      localckf.b();
      localObject1 = a;
      if (((List)localObject1).size() == 0)
      {
        localObject1 = new ckf.f("T", "T", ckf.d.a, ckf.d.a);
        localckf.a((ckh)localObject1, (ckg)localObject1);
        localckf.a(4);
        localObject1 = localckf.a("H");
        ((ckf)localObject1).a(5);
        localObject1 = ((ckf)localObject1).a("M");
        ((ckf)localObject1).a(9);
        ckd.a = ((ckf)localObject1).a("S").a();
      }
    }
    else
    {
      localObject1 = ckd.a;
      localObject2 = cgu.a();
      if (localObject2 != d) {
        break label444;
      }
      label298:
      l = (cke)localObject1;
      return;
    }
    Object localObject2 = null;
    int k = ((List)localObject1).size();
    label312:
    k -= 1;
    if (k >= 0) {
      if ((((List)localObject1).get(k) instanceof ckf.f))
      {
        localObject2 = (ckf.f)((List)localObject1).get(k);
        localObject1 = ((List)localObject1).subList(k + 1, ((List)localObject1).size());
      }
    }
    for (;;)
    {
      if ((localObject2 != null) && (((List)localObject1).size() == 0))
      {
        throw new IllegalStateException("Cannot have two adjacent separators");
        k -= 1;
        break label312;
      }
      localObject2 = ckf.a((List)localObject1);
      ((List)localObject1).clear();
      localObject2 = new ckf.f("T", "T", (ckh)localObject2[0], (ckg)localObject2[1]);
      ((List)localObject1).add(localObject2);
      ((List)localObject1).add(localObject2);
      break;
      label444:
      localObject1 = new cke(a, b, c, (cgu)localObject2);
      break label298;
    }
  }
  
  private cgl(int paramInt)
  {
    super(paramInt);
  }
  
  public static cgl a(cgz paramcgz1, cgz paramcgz2)
  {
    cgn localcgn = cgn.f();
    if ((paramcgz1 == null) || (paramcgz2 == null)) {
      throw new IllegalArgumentException("ReadableInstant objects must not be null");
    }
    int k = localcgn.a(cgj.b(paramcgz1)).b(paramcgz2.c(), paramcgz1.c());
    switch (k)
    {
    default: 
      return new cgl(k);
    case 0: 
      return a;
    case 1: 
      return b;
    case 2: 
      return c;
    case 3: 
      return d;
    case 4: 
      return e;
    case 5: 
      return f;
    case 6: 
      return g;
    case 7: 
      return h;
    case 2147483647: 
      return i;
    }
    return j;
  }
  
  public final cgn a()
  {
    return cgn.f();
  }
  
  public final cgu b()
  {
    return cgu.a();
  }
  
  @ToString
  public final String toString()
  {
    return "P" + String.valueOf(k) + "D";
  }
}

/* Location:
 * Qualified Name:     cgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */