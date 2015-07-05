import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationServices;
import com.snapchat.android.Timber;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@avl
public final class ahr
{
  private static ahr c;
  private static boolean d = false;
  private static Context e;
  private static HandlerThread f;
  private static Looper g;
  final List<ahp> a;
  final aho b;
  private LocationManager h;
  private final ahn i;
  
  private ahr(LocationManager paramLocationManager, ahn paramahn, aho paramaho)
  {
    this(paramLocationManager, paramahn, a(paramLocationManager), paramaho);
  }
  
  private ahr(LocationManager paramLocationManager, ahn paramahn, List<ahp> paramList, aho paramaho)
  {
    h = paramLocationManager;
    a = paramList;
    i = paramahn;
    b = paramaho;
  }
  
  public static ahr a()
  {
    try
    {
      if (!d) {
        throw new IllegalStateException("Location manager has not been initialized");
      }
    }
    finally {}
    if (c == null) {
      c = new ahr((LocationManager)e.getSystemService("location"), new ahn(e), aho.a());
    }
    ahr localahr = c;
    return localahr;
  }
  
  @caq
  private static ArrayList a(LocationManager paramLocationManager)
  {
    ArrayList localArrayList = new ArrayList(3);
    int j = 0;
    for (;;)
    {
      if (j < 2)
      {
        String str = new String[] { "network", "gps" }[j];
        try
        {
          if (paramLocationManager.getProvider(str) != null) {
            localArrayList.add(new ahp(str, paramLocationManager, g));
          }
          j += 1;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          for (;;)
          {
            Timber.h("LocationProvider", localIllegalArgumentException.getMessage(), new Object[0]);
          }
        }
        catch (Exception paramLocationManager)
        {
          Timber.h("LocationProvider", paramLocationManager.getMessage(), new Object[0]);
          return localArrayList;
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            Timber.h("LocationProvider", localSecurityException.getMessage(), new Object[0]);
          }
        }
      }
    }
    paramLocationManager = new ahp("passive", paramLocationManager, g);
    bgp.b(new ahp.1(paramLocationManager));
    localArrayList.add(paramLocationManager);
    return localArrayList;
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      if (!d)
      {
        d = true;
        e = paramContext;
        paramContext = new HandlerThread("Location", 10);
        f = paramContext;
        paramContext.start();
        g = f.getLooper();
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final void b()
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        Object localObject = ahr.this;
        bgp.b();
        Timber.h("LocationProvider", "Start tracking!", new Object[0]);
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
          ((ahp)localIterator.next()).b();
        }
        localObject = b;
        bgp.b();
        if (d == aho.a) {
          d = System.currentTimeMillis();
        }
      }
    });
  }
  
  public final void c()
  {
    bgp.b(new Runnable()
    {
      public final void run()
      {
        ??? = ahr.this;
        bgp.b();
        Timber.h("LocationProvider", "Stop tracking!", new Object[0]);
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext())
        {
          ahp localahp = (ahp)localIterator.next();
          bgp.b();
          e = false;
          synchronized (c)
          {
            if (d)
            {
              boolean bool = a.equals("passive");
              if (bool) {}
            }
            try
            {
              b.removeUpdates(localahp);
              d = false;
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              for (;;)
              {
                Timber.h("LocationListener", localIllegalArgumentException.getMessage(), new Object[0]);
                d = false;
              }
            }
            catch (Exception localException)
            {
              for (;;)
              {
                Timber.h("LocationListener", localException.getMessage(), new Object[0]);
                d = false;
              }
            }
            finally
            {
              d = false;
            }
          }
        }
      }
    });
  }
  
  @caq
  @cgc
  public final Location d()
  {
    bgp.b();
    Object localObject1 = i;
    bgp.b();
    Object localObject2;
    if (a.isConnected())
    {
      localObject1 = a;
      localObject1 = LocationServices.FusedLocationApi.getLastLocation((GoogleApiClient)localObject1);
      if ((localObject1 != null) && (System.currentTimeMillis() - ((Location)localObject1).getTime() < 60000L))
      {
        Object localObject3 = new StringBuilder("Location from device is ");
        if (localObject1 != null) {
          break label189;
        }
        localObject2 = "Null";
        label74:
        Timber.h("LocationProvider", (String)localObject2, new Object[0]);
        localObject3 = a.iterator();
        label101:
        if (!((Iterator)localObject3).hasNext()) {
          break label205;
        }
        localObject2 = ((ahp)((Iterator)localObject3).next()).a();
        if ((localObject1 != null) && ((localObject2 == null) || (((Location)localObject2).getAccuracy() >= ((Location)localObject1).getAccuracy()))) {
          break label207;
        }
        StringBuilder localStringBuilder = new StringBuilder("Location has been updated to ");
        if (localObject2 != null) {
          break label197;
        }
        localObject1 = "Null";
        label161:
        Timber.h("LocationProvider", (String)localObject1, new Object[0]);
        localObject1 = localObject2;
      }
    }
    label189:
    label197:
    label205:
    label207:
    for (;;)
    {
      break label101;
      localObject1 = null;
      break;
      localObject2 = ((Location)localObject1).toString();
      break label74;
      localObject1 = ((Location)localObject2).toString();
      break label161;
      return (Location)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     ahr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */