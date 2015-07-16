import java.util.List;
import org.joda.convert.ToString;

public final class chm
  extends cij
{
  public static final chm a = new chm(0);
  public static final chm b = new chm(1);
  public static final chm c = new chm(2);
  public static final chm d = new chm(3);
  public static final chm e = new chm(4);
  public static final chm f = new chm(5);
  public static final chm g = new chm(6);
  public static final chm h = new chm(7);
  public static final chm i = new chm(Integer.MAX_VALUE);
  public static final chm j = new chm(Integer.MIN_VALUE);
  private static final clf l;
  
  static
  {
    Object localObject1;
    if (cle.a == null)
    {
      localObject1 = new clg();
      ((clg)localObject1).b();
      localObject2 = new clg.d("P");
      ((clg)localObject1).a((cli)localObject2, (clh)localObject2);
      ((clg)localObject1).a(0);
      localObject1 = ((clg)localObject1).a("Y");
      ((clg)localObject1).a(1);
      localObject1 = ((clg)localObject1).a("M");
      ((clg)localObject1).a(2);
      localObject1 = ((clg)localObject1).a("W");
      ((clg)localObject1).a(3);
      clg localclg = ((clg)localObject1).a("D");
      localclg.b();
      localObject1 = a;
      if (((List)localObject1).size() == 0)
      {
        localObject1 = new clg.f("T", "T", clg.d.a, clg.d.a);
        localclg.a((cli)localObject1, (clh)localObject1);
        localclg.a(4);
        localObject1 = localclg.a("H");
        ((clg)localObject1).a(5);
        localObject1 = ((clg)localObject1).a("M");
        ((clg)localObject1).a(9);
        cle.a = ((clg)localObject1).a("S").a();
      }
    }
    else
    {
      localObject1 = cle.a;
      localObject2 = chv.a();
      if (localObject2 != d) {
        break label444;
      }
      label298:
      l = (clf)localObject1;
      return;
    }
    Object localObject2 = null;
    int k = ((List)localObject1).size();
    label312:
    k -= 1;
    if (k >= 0) {
      if ((((List)localObject1).get(k) instanceof clg.f))
      {
        localObject2 = (clg.f)((List)localObject1).get(k);
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
      localObject2 = clg.a((List)localObject1);
      ((List)localObject1).clear();
      localObject2 = new clg.f("T", "T", (cli)localObject2[0], (clh)localObject2[1]);
      ((List)localObject1).add(localObject2);
      ((List)localObject1).add(localObject2);
      break;
      label444:
      localObject1 = new clf(a, b, c, (chv)localObject2);
      break label298;
    }
  }
  
  private chm(int paramInt)
  {
    super(paramInt);
  }
  
  public static chm a(cia paramcia1, cia paramcia2)
  {
    cho localcho = cho.f();
    if ((paramcia1 == null) || (paramcia2 == null)) {
      throw new IllegalArgumentException("ReadableInstant objects must not be null");
    }
    int k = localcho.a(chk.b(paramcia1)).b(paramcia2.c(), paramcia1.c());
    switch (k)
    {
    default: 
      return new chm(k);
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
  
  public final cho a()
  {
    return cho.f();
  }
  
  public final chv b()
  {
    return chv.a();
  }
  
  @ToString
  public final String toString()
  {
    return "P" + String.valueOf(k) + "D";
  }
}

/* Location:
 * Qualified Name:     chm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */