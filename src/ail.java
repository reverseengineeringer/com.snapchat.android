import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@bxs
public final class ail
  implements LocationListener
{
  final String a;
  final LocationManager b;
  Object c = new Object();
  boolean d = false;
  volatile boolean e = false;
  private final Bus f;
  private final Looper g;
  private List<Location> h = new ArrayList();
  
  public ail(@chc String paramString, @chc LocationManager paramLocationManager, Looper paramLooper)
  {
    this(paramString, paramLocationManager, bbo.a(), paramLooper);
  }
  
  private ail(@chc String paramString, @chc LocationManager paramLocationManager, Bus paramBus, Looper paramLooper)
  {
    a = paramString;
    b = paramLocationManager;
    f = paramBus;
    g = paramLooper;
  }
  
  private boolean c()
  {
    try
    {
      boolean bool = b.isProviderEnabled(a);
      return bool;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.getMessage();
    }
    return false;
  }
  
  @cbr
  @chd
  public final Location a()
  {
    bhp.b();
    Object localObject1 = null;
    long l = System.currentTimeMillis();
    label160:
    label211:
    for (;;)
    {
      Object localObject4;
      synchronized (h)
      {
        Iterator localIterator = h.iterator();
        if (!localIterator.hasNext()) {
          break label160;
        }
        localObject4 = (Location)localIterator.next();
        if (l - ((Location)localObject4).getTime() > 60000L)
        {
          new StringBuilder().append(a).append(" removing location because it is stale ").append(((Location)localObject4).toString());
          localIterator.remove();
        }
      }
      if ((localObject2 == null) || (((Location)localObject2).getAccuracy() > ((Location)localObject4).getAccuracy()))
      {
        new StringBuilder().append(a).append(" new best location ").append(((Location)localObject4).toString());
        Object localObject3 = localObject4;
        break label211;
        ??? = new StringBuilder().append(a).append(" has best location of ");
        if (localObject3 == null) {}
        for (localObject4 = "null";; localObject4 = ((Location)localObject3).toString())
        {
          ((StringBuilder)???).append((String)localObject4);
          return (Location)localObject3;
        }
      }
    }
  }
  
  @cbr
  public final void b()
  {
    bhp.b();
    e = true;
    synchronized (c)
    {
      if (!d)
      {
        boolean bool = c();
        if (!bool) {}
      }
    }
    try
    {
      b.requestLocationUpdates(a, 1000L, 0.0F, this, g);
      d = true;
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        localIllegalArgumentException.getMessage();
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.getMessage();
      }
    }
  }
  
  public final void onLocationChanged(Location paramLocation)
  {
    synchronized (h)
    {
      h.add(paramLocation);
      if (paramLocation.hasSpeed()) {
        f.a(new beu(paramLocation.getSpeed()));
      }
      new StringBuilder("New location on: ").append(a).append(" location: ").append(paramLocation.toString());
      return;
    }
  }
  
  public final void onProviderDisabled(String arg1)
  {
    synchronized (c)
    {
      d = false;
      return;
    }
  }
  
  public final void onProviderEnabled(String paramString)
  {
    if (e) {
      b();
    }
  }
  
  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     ail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */