import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.snapchat.android.Timber;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@bwr
public final class ahp
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
  
  public ahp(@cgb String paramString, @cgb LocationManager paramLocationManager, Looper paramLooper)
  {
    this(paramString, paramLocationManager, ban.a(), paramLooper);
  }
  
  private ahp(@cgb String paramString, @cgb LocationManager paramLocationManager, Bus paramBus, Looper paramLooper)
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
      Timber.h("LocationListener", localIllegalArgumentException.getMessage(), new Object[0]);
    }
    return false;
  }
  
  @caq
  @cgc
  public final Location a()
  {
    bgp.b();
    Object localObject1 = null;
    long l = System.currentTimeMillis();
    label182:
    label244:
    for (;;)
    {
      Object localObject4;
      synchronized (h)
      {
        Iterator localIterator = h.iterator();
        if (!localIterator.hasNext()) {
          break label182;
        }
        localObject4 = (Location)localIterator.next();
        if (l - ((Location)localObject4).getTime() > 60000L)
        {
          Timber.h("LocationListener", a + " removing location because it is stale " + ((Location)localObject4).toString(), new Object[0]);
          localIterator.remove();
        }
      }
      if ((localObject2 == null) || (((Location)localObject2).getAccuracy() > ((Location)localObject4).getAccuracy()))
      {
        Timber.h("LocationListener", a + " new best location " + ((Location)localObject4).toString(), new Object[0]);
        Object localObject3 = localObject4;
        break label244;
        ??? = new StringBuilder().append(a).append(" has best location of ");
        if (localObject3 == null) {}
        for (localObject4 = "null";; localObject4 = ((Location)localObject3).toString())
        {
          Timber.h("LocationListener", (String)localObject4, new Object[0]);
          return (Location)localObject3;
        }
      }
    }
  }
  
  @caq
  public final void b()
  {
    bgp.b();
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
        Timber.h("LocationListener", localIllegalArgumentException.getMessage(), new Object[0]);
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Timber.h("LocationListener", localException.getMessage(), new Object[0]);
      }
    }
  }
  
  public final void onLocationChanged(Location paramLocation)
  {
    synchronized (h)
    {
      h.add(paramLocation);
      if (paramLocation.hasSpeed()) {
        f.a(new bdu(paramLocation.getSpeed()));
      }
      Timber.h("LocationListener", "New location on: " + a + " location: " + paramLocation.toString(), new Object[0]);
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
 * Qualified Name:     ahp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */