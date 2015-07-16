import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationServices;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@awj
public final class ain
{
  private static ain c;
  private static boolean d = false;
  private static Context e;
  private static HandlerThread f;
  private static Looper g;
  final List<ail> a;
  final aik b;
  private LocationManager h;
  private final aij i;
  
  private ain(LocationManager paramLocationManager, aij paramaij, aik paramaik)
  {
    this(paramLocationManager, paramaij, a(paramLocationManager), paramaik);
  }
  
  private ain(LocationManager paramLocationManager, aij paramaij, List<ail> paramList, aik paramaik)
  {
    h = paramLocationManager;
    a = paramList;
    i = paramaij;
    b = paramaik;
  }
  
  public static ain a()
  {
    try
    {
      if (!d) {
        throw new IllegalStateException("Location manager has not been initialized");
      }
    }
    finally {}
    if (c == null) {
      c = new ain((LocationManager)e.getSystemService("location"), new aij(e), aik.a());
    }
    ain localain = c;
    return localain;
  }
  
  @cbr
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
            localArrayList.add(new ail(str, paramLocationManager, g));
          }
          j += 1;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          for (;;)
          {
            localIllegalArgumentException.getMessage();
          }
        }
        catch (Exception paramLocationManager)
        {
          paramLocationManager.getMessage();
          return localArrayList;
        }
        catch (SecurityException localSecurityException)
        {
          for (;;)
          {
            localSecurityException.getMessage();
          }
        }
      }
    }
    paramLocationManager = new ail("passive", paramLocationManager, g);
    bhp.b(new ail.1(paramLocationManager));
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
    bhp.b(new Runnable()
    {
      public final void run()
      {
        Object localObject = ain.this;
        bhp.b();
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
          ((ail)localIterator.next()).b();
        }
        localObject = b;
        bhp.b();
        if (d == aik.a) {
          d = System.currentTimeMillis();
        }
      }
    });
  }
  
  public final void c()
  {
    bhp.b(new Runnable()
    {
      public final void run()
      {
        ??? = ain.this;
        bhp.b();
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext())
        {
          ail localail = (ail)localIterator.next();
          bhp.b();
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
              b.removeUpdates(localail);
              d = false;
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              for (;;)
              {
                localIllegalArgumentException.getMessage();
                d = false;
              }
            }
            catch (Exception localException)
            {
              for (;;)
              {
                localException.getMessage();
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
  
  @cbr
  @chd
  public final Location d()
  {
    bhp.b();
    Object localObject1 = i;
    bhp.b();
    Object localObject2;
    if (a.isConnected())
    {
      localObject1 = a;
      localObject1 = LocationServices.FusedLocationApi.getLastLocation((GoogleApiClient)localObject1);
      if ((localObject1 != null) && (System.currentTimeMillis() - ((Location)localObject1).getTime() < 60000L))
      {
        Object localObject3 = new StringBuilder("Location from device is ");
        if (localObject1 != null) {
          break label167;
        }
        localObject2 = "Null";
        label74:
        ((StringBuilder)localObject3).append((String)localObject2);
        localObject3 = a.iterator();
        label90:
        if (!((Iterator)localObject3).hasNext()) {
          break label183;
        }
        localObject2 = ((ail)((Iterator)localObject3).next()).a();
        if ((localObject1 != null) && ((localObject2 == null) || (((Location)localObject2).getAccuracy() >= ((Location)localObject1).getAccuracy()))) {
          break label185;
        }
        StringBuilder localStringBuilder = new StringBuilder("Location has been updated to ");
        if (localObject2 != null) {
          break label175;
        }
        localObject1 = "Null";
        label150:
        localStringBuilder.append((String)localObject1);
        localObject1 = localObject2;
      }
    }
    label167:
    label175:
    label183:
    label185:
    for (;;)
    {
      break label90;
      localObject1 = null;
      break;
      localObject2 = ((Location)localObject1).toString();
      break label74;
      localObject1 = ((Location)localObject2).toString();
      break label150;
      return (Location)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     ain
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */