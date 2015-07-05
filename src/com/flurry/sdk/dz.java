package com.flurry.sdk;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;

public class dz
  implements dq.a, ey.a
{
  private static final String c = dz.class.getSimpleName();
  private static dz q;
  boolean a = false;
  boolean b;
  private final int d = 3;
  private final long e = 10000L;
  private final long f = 90000L;
  private final long g = 0L;
  private long h = 0L;
  private LocationManager i;
  private Criteria j;
  private Location k;
  private a l = new a();
  private String m;
  private int n = 0;
  private int o = 0;
  private volatile Location p;
  
  private dz()
  {
    dq localdq = dp.a();
    j = ((Criteria)localdq.a("LocationCriteria"));
    localdq.a("LocationCriteria", this);
    el.a(4, c, "initSettings, LocationCriteria = " + j);
    b = ((Boolean)localdq.a("ReportLocation")).booleanValue();
    localdq.a("ReportLocation", this);
    el.a(4, c, "initSettings, ReportLocation = " + b);
  }
  
  public static dz a()
  {
    try
    {
      if (q == null) {
        q = new dz();
      }
      dz localdz = q;
      return localdz;
    }
    finally {}
  }
  
  private void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      i.requestLocationUpdates(paramString, 10000L, 0.0F, l, Looper.getMainLooper());
    }
  }
  
  private Location b(String paramString)
  {
    Location localLocation = null;
    if (!TextUtils.isEmpty(paramString)) {
      localLocation = i.getLastKnownLocation(paramString);
    }
    return localLocation;
  }
  
  private void i()
  {
    i.removeUpdates(l);
    a = false;
    o = 0;
    h = 0L;
    m();
    el.a(4, c, "LocationProvider stopped");
  }
  
  private void j()
  {
    if (!b) {}
    do
    {
      do
      {
        return;
      } while (p != null);
      localObject = do.a().b();
    } while ((((Context)localObject).checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) && (((Context)localObject).checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0));
    i();
    Object localObject = k();
    a((String)localObject);
    k = b((String)localObject);
    h = (System.currentTimeMillis() + 90000L);
    l();
    a = true;
    el.a(4, c, "LocationProvider started");
  }
  
  private String k()
  {
    Criteria localCriteria = j;
    Object localObject = localCriteria;
    if (localCriteria == null) {
      localObject = new Criteria();
    }
    if (TextUtils.isEmpty(m)) {}
    for (localObject = i.getBestProvider((Criteria)localObject, true);; localObject = m)
    {
      el.a(4, c, "provider = " + (String)localObject);
      return (String)localObject;
    }
  }
  
  private void l()
  {
    el.a(4, c, "Register location timer");
    ex.a().a(this);
  }
  
  private void m()
  {
    el.a(4, c, "Unregister location timer");
    ex.a().b(this);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    p = new Location("Explicit");
    p.setLatitude(paramFloat1);
    p.setLongitude(paramFloat2);
  }
  
  public void a(ey paramey)
  {
    if ((h > 0L) && (h < System.currentTimeMillis()))
    {
      el.a(4, c, "No location received in 90 seconds , stopping LocationManager");
      i();
    }
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("LocationCriteria"))
    {
      j = ((Criteria)paramObject);
      el.a(4, c, "onSettingUpdate, LocationCriteria = " + j);
      if (a) {
        j();
      }
    }
    do
    {
      return;
      if (!paramString.equals("ReportLocation")) {
        break label134;
      }
      b = ((Boolean)paramObject).booleanValue();
      el.a(4, c, "onSettingUpdate, ReportLocation = " + b);
      if (!b) {
        break;
      }
    } while ((a) || (n <= 0));
    j();
    return;
    i();
    return;
    label134:
    el.a(6, c, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key.");
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 144	com/flurry/sdk/dz:i	Landroid/location/LocationManager;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokestatic 177	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   18: invokevirtual 180	com/flurry/sdk/do:b	()Landroid/content/Context;
    //   21: ldc_w 266
    //   24: invokevirtual 269	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   27: checkcast 152	android/location/LocationManager
    //   30: putfield 144	com/flurry/sdk/dz:i	Landroid/location/LocationManager;
    //   33: goto -22 -> 11
    //   36: astore_1
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_1
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	dz
    //   6	2	1	localLocationManager	LocationManager
    //   36	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   14	33	36	finally
  }
  
  public void c()
  {
    try
    {
      el.a(4, c, "Location provider subscribed");
      n += 1;
      if ((!a) && (o < 3)) {
        j();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_4
    //   3: getstatic 46	com/flurry/sdk/dz:c	Ljava/lang/String;
    //   6: ldc_w 273
    //   9: invokestatic 113	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 68	com/flurry/sdk/dz:n	I
    //   16: ifgt +17 -> 33
    //   19: bipush 6
    //   21: getstatic 46	com/flurry/sdk/dz:c	Ljava/lang/String;
    //   24: ldc_w 275
    //   27: invokestatic 113	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   30: aload_0
    //   31: monitorexit
    //   32: return
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 68	com/flurry/sdk/dz:n	I
    //   38: iconst_1
    //   39: isub
    //   40: putfield 68	com/flurry/sdk/dz:n	I
    //   43: aload_0
    //   44: getfield 68	com/flurry/sdk/dz:n	I
    //   47: ifne -17 -> 30
    //   50: aload_0
    //   51: invokespecial 162	com/flurry/sdk/dz:i	()V
    //   54: goto -24 -> 30
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	dz
    //   57	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	57	finally
    //   33	54	57	finally
  }
  
  public void e()
  {
    p = null;
  }
  
  public Location f()
  {
    Location localLocation = null;
    if (p != null) {
      return p;
    }
    if (b)
    {
      localLocation = b(k());
      if (localLocation != null) {
        k = localLocation;
      }
      localLocation = k;
    }
    el.a(4, c, "getLocation() = " + localLocation);
    return localLocation;
  }
  
  public void g()
  {
    n = 0;
    i();
  }
  
  class a
    implements LocationListener
  {
    public a() {}
    
    public void onLocationChanged(Location paramLocation)
    {
      if (paramLocation != null) {
        dz.a(dz.this, paramLocation);
      }
      el.a(4, dz.h(), "Location received");
      if (dz.a(dz.this) >= 3)
      {
        el.a(4, dz.h(), "Max location reports reached, stopping");
        dz.b(dz.this);
      }
    }
    
    public void onProviderDisabled(String paramString) {}
    
    public void onProviderEnabled(String paramString) {}
    
    public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */