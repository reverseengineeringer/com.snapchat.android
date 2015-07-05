import android.location.Location;
import com.snapchat.android.Timber;
import java.util.Iterator;
import java.util.List;

public final class ahs
  implements pt.a
{
  private static ahs e = new ahs();
  public final aid a;
  public final ajq b;
  public Location c = null;
  public String d = "{}";
  private final ahr f;
  private final tw g;
  private final aht h;
  private cgs i = new cgs((byte)0);
  
  private ahs()
  {
    this(ahr.a(), aid.a(), new tw(), aht.a(), ajq.a());
  }
  
  private ahs(@cgb ahr paramahr, @cgb aid paramaid, @cgb tw paramtw, @cgb aht paramaht, @cgb ajq paramajq)
  {
    f = paramahr;
    a = paramaid;
    g = paramtw;
    h = paramaht;
    b = paramajq;
  }
  
  public static ahs c()
  {
    return e;
  }
  
  public final void a()
  {
    aie localaie = a.a;
    cgs localcgs = cgs.c();
    boolean bool = e.b(2).c(localcgs);
    e = localcgs;
    if (bool) {
      localaie.a();
    }
  }
  
  @caq
  public final void a(@cgb aka paramaka)
  {
    bgp.b();
    aht localaht = h;
    synchronized (a)
    {
      b = paramaka;
      return;
    }
  }
  
  public final void a(@cgb final String paramString)
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        b(paramString);
      }
    });
  }
  
  @caq
  public final void a(@cgb List<aiv> paramList)
  {
    bgp.b();
    Timber.c("LocationRequestController", "onReceivedGeofiltersData", new Object[0]);
    aid localaid = a;
    Timber.c("GeofilterProviderImpl", "onReceivedGeofiltersData " + paramList.size(), new Object[0]);
    a.d();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      aiv localaiv = (aiv)paramList.next();
      aie localaie = a;
      e = cgs.c();
      d.add(localaiv);
    }
    a.a();
  }
  
  public final void b()
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        d();
      }
    });
  }
  
  @caq
  public final void b(@cgb String paramString)
  {
    bgp.b();
    d = paramString;
    paramString = f.d();
    if ((paramString != null) && (c != null) && (paramString.getAccuracy() < c.getAccuracy())) {
      d();
    }
  }
  
  public final void b(@cgb List<ajc> paramList)
  {
    b.a(paramList);
  }
  
  @caq
  public final void c(@cgb List<aiv> paramList)
  {
    bgp.b();
    Timber.c("LocationRequestController", "onReceivedCachableGeofiltersData", new Object[0]);
    aid localaid = a;
    Timber.c("GeofilterProviderImpl", "onReceivedCachableGeofiltersData " + paramList.size(), new Object[0]);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      aiv localaiv = (aiv)paramList.next();
      b.a(localaiv);
    }
  }
  
  @caq
  protected final void d()
  {
    boolean bool2 = true;
    Location localLocation1;
    boolean bool1;
    label60:
    label106:
    label126:
    try
    {
      bgp.b();
      localLocation1 = f.d();
      Timber.h("LocationRequestController", "App is requestion to update geofilters", new Object[0]);
      if (localLocation1 == null)
      {
        Timber.h("LocationRequestController", "No location to update with", new Object[0]);
        return;
      }
      if (i != null) {
        break label178;
      }
      bool1 = true;
    }
    finally {}
    Timber.h("LocationRequestController", "currentLocationIsValid: " + bool1, new Object[0]);
    if (bool1) {
      if (c != null) {
        if (localLocation1 == null)
        {
          break label463;
          if (!bool1) {
            break label508;
          }
          if (c == null) {
            break label469;
          }
          if (localLocation1 != null) {
            break label336;
          }
          break label469;
        }
      }
    }
    for (;;)
    {
      Timber.h("LocationRequestController", "isCurrentLocationBetter " + bool1, new Object[0]);
      if (bool1)
      {
        Timber.h("LocationRequestController", "Current location is better", new Object[0]);
        break;
        label178:
        cgs localcgs1 = new cgs();
        cgs localcgs2 = i;
        localcgs2 = localcgs2.a(b.f().a(a, 120));
        Timber.h("LocationRequestController", "Now: " + localcgs1 + " aged: " + localcgs2, new Object[0]);
        bool1 = localcgs1.b(localcgs2);
        break label452;
        float f1 = c.distanceTo(localLocation2);
        float f2 = c.getAccuracy();
        float f3 = localLocation2.getAccuracy();
        if (f1 <= f2) {
          break label490;
        }
        if (f1 > f3) {
          break label496;
        }
        break label490;
        label306:
        Timber.h("LocationRequestController", "currentLocationAndNewLocationAreClose:" + bool1, new Object[0]);
        break label106;
        label336:
        if (c.getAccuracy() > localLocation2.getAccuracy()) {
          break label502;
        }
      }
      label452:
      label463:
      label469:
      label472:
      label490:
      label496:
      label502:
      for (bool1 = true;; bool1 = false)
      {
        Timber.h("LocationRequestController", "currentLocationHasBetterAccuracy:" + bool1, new Object[0]);
        break label472;
        Timber.h("LocationRequestController", "Creating request with location: " + localLocation2.toString(), new Object[0]);
        i = new cgs();
        c = localLocation2;
        new pt(this, localLocation2, d).f();
        break;
        if (!bool1)
        {
          bool1 = true;
          break label60;
          bool1 = false;
          break label106;
          bool1 = false;
          if (!bool1) {
            break label508;
          }
          bool1 = bool2;
          break label126;
        }
        bool1 = false;
        break label60;
        bool1 = true;
        break label306;
        bool1 = false;
        break label306;
      }
      label508:
      bool1 = false;
    }
  }
}

/* Location:
 * Qualified Name:     ahs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */