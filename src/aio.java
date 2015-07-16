import android.location.Location;
import java.util.Iterator;
import java.util.List;

public final class aio
  implements qk.a
{
  private static aio e = new aio();
  public final aiz a;
  public final akk b;
  public Location c = null;
  public String d = "{}";
  private final ain f;
  private final um g;
  private final aip h;
  private cht i = new cht((byte)0);
  
  private aio()
  {
    this(ain.a(), aiz.a(), new um(), aip.a(), akk.a());
  }
  
  private aio(@chc ain paramain, @chc aiz paramaiz, @chc um paramum, @chc aip paramaip, @chc akk paramakk)
  {
    f = paramain;
    a = paramaiz;
    g = paramum;
    h = paramaip;
    b = paramakk;
  }
  
  public static aio c()
  {
    return e;
  }
  
  public final void a()
  {
    aja localaja = a.a;
    cht localcht = cht.c();
    boolean bool = e.b(2).c(localcht);
    e = localcht;
    if (bool) {
      localaja.a();
    }
  }
  
  @cbr
  public final void a(@chc akv paramakv)
  {
    bhp.b();
    aip localaip = h;
    synchronized (a)
    {
      b = paramakv;
      return;
    }
  }
  
  public final void a(@chc final String paramString)
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        b(paramString);
      }
    });
  }
  
  @cbr
  public final void a(@chc List<ajr> paramList)
  {
    bhp.b();
    aiz localaiz = a;
    new StringBuilder("onReceivedGeofiltersData ").append(paramList.size());
    a.d();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ajr localajr = (ajr)paramList.next();
      aja localaja = a;
      e = cht.c();
      d.add(localajr);
    }
    a.a();
  }
  
  public final void b()
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        d();
      }
    });
  }
  
  @cbr
  public final void b(@chc String paramString)
  {
    bhp.b();
    d = paramString;
    paramString = f.d();
    if ((paramString != null) && (c != null) && (paramString.getAccuracy() < c.getAccuracy())) {
      d();
    }
  }
  
  public final void b(@chc List<ajy> paramList)
  {
    b.a(paramList);
  }
  
  @cbr
  public final void c(@chc List<ajr> paramList)
  {
    bhp.b();
    aiz localaiz = a;
    new StringBuilder("onReceivedCachableGeofiltersData ").append(paramList.size());
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      ajr localajr = (ajr)paramList.next();
      b.a(localajr);
    }
  }
  
  @cbr
  protected final void d()
  {
    int k = 1;
    Location localLocation1;
    boolean bool;
    label38:
    int j;
    try
    {
      bhp.b();
      localLocation1 = f.d();
      if (localLocation1 == null) {
        return;
      }
      if (i != null) {
        break label145;
      }
      bool = true;
    }
    finally {}
    if (j != 0)
    {
      if (c == null) {
        break label310;
      }
      if (localLocation1 == null) {
        break label310;
      }
    }
    for (;;)
    {
      label58:
      if (j != 0)
      {
        if (c == null) {
          break label316;
        }
        if (localLocation1 == null) {
          break label316;
        }
      }
      for (;;)
      {
        label78:
        if (j != 0) {
          break label329;
        }
        new StringBuilder("Creating request with location: ").append(localLocation1.toString());
        i = new cht();
        c = localLocation1;
        new qk(this, localLocation1, d).execute();
        break;
        label145:
        cht localcht1 = new cht();
        cht localcht2 = i;
        localcht2 = localcht2.a(b.f().a(a, 120));
        new StringBuilder("Now: ").append(localcht1).append(" aged: ").append(localcht2);
        bool = localcht1.b(localcht2);
        break label299;
        float f1 = c.distanceTo(localLocation2);
        float f2 = c.getAccuracy();
        float f3 = localLocation2.getAccuracy();
        if (f1 <= f2) {
          break label337;
        }
        if (f1 > f3) {
          break label343;
        }
        break label337;
        f1 = c.getAccuracy();
        f2 = localLocation2.getAccuracy();
        if (f1 <= f2) {
          j = 1;
        }
        label299:
        label310:
        label316:
        for (j = 0; j == 0; j = 0)
        {
          j = 0;
          break label78;
          if (bool) {
            break label331;
          }
          j = 1;
          break;
          j = 0;
          break label58;
        }
        j = k;
      }
      label329:
      break;
      label331:
      j = 0;
      break label38;
      label337:
      j = 1;
      continue;
      label343:
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     aio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */