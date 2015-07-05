package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.zza.zzb;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzk.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationStatusCodes;
import com.google.android.gms.location.zzf.zza;
import com.google.android.gms.location.zzf.zzb;
import java.util.List;

public class zzpf
  extends zzow
{
  private final zzpe zzamX = new zzpe(paramContext, zzamz);
  private final zzot zzamY = zzot.zza(paramContext, paramString3, paramString4, zzamz);
  
  public zzpf(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2)
  {
    this(paramContext, paramLooper, paramString1, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2, null);
  }
  
  public zzpf(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3)
  {
    this(paramContext, paramLooper, paramString1, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2, paramString3, null);
  }
  
  public zzpf(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3, String paramString4)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2);
  }
  
  public void disconnect()
  {
    synchronized (zzamX)
    {
      boolean bool = isConnected();
      if (!bool) {}
    }
    try
    {
      zzamX.removeAllListeners();
      zzamX.zzpy();
      super.disconnect();
      return;
      localObject = finally;
      throw ((Throwable)localObject);
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void zzW(boolean paramBoolean)
  {
    zzamX.zzW(paramBoolean);
  }
  
  public void zza(long paramLong, PendingIntent paramPendingIntent)
  {
    zzfc();
    zzx.zzl(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "detectionIntervalMillis must be >= 0");
      ((zzpc)zzjb()).zza(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void zza(PendingIntent paramPendingIntent)
  {
    zzfc();
    zzx.zzl(paramPendingIntent);
    ((zzpc)zzjb()).zza(paramPendingIntent);
  }
  
  public void zza(PendingIntent paramPendingIntent, zzf.zzb paramzzb)
  {
    zzfc();
    zzx.zzb(paramPendingIntent, "PendingIntent must be specified.");
    zzx.zzb(paramzzb, "OnRemoveGeofencesResultListener not provided.");
    if (paramzzb == null) {}
    for (paramzzb = null;; paramzzb = new zzb(paramzzb, this))
    {
      ((zzpc)zzjb()).zza(paramPendingIntent, paramzzb, getContext().getPackageName());
      return;
    }
  }
  
  public void zza(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, zzf.zza paramzza)
  {
    zzfc();
    zzx.zzb(paramGeofencingRequest, "geofencingRequest can't be null.");
    zzx.zzb(paramPendingIntent, "PendingIntent must be specified.");
    zzx.zzb(paramzza, "OnAddGeofencesResultListener not provided.");
    if (paramzza == null) {}
    for (paramzza = null;; paramzza = new zzb(paramzza, this))
    {
      ((zzpc)zzjb()).zza(paramGeofencingRequest, paramPendingIntent, paramzza);
      return;
    }
  }
  
  public void zza(LocationListener paramLocationListener)
  {
    zzamX.zza(paramLocationListener);
  }
  
  public void zza(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    synchronized (zzamX)
    {
      zzamX.zza(paramLocationRequest, paramLocationListener, paramLooper);
      return;
    }
  }
  
  public void zza(LocationSettingsRequest paramLocationSettingsRequest, zza.zzb<LocationSettingsResult> paramzzb, String paramString)
  {
    boolean bool2 = true;
    zzfc();
    if (paramLocationSettingsRequest != null)
    {
      bool1 = true;
      zzx.zzb(bool1, "locationSettingsRequest can't be null nor empty.");
      if (paramzzb == null) {
        break label67;
      }
    }
    label67:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zzb(bool1, "listener can't be null.");
      paramzzb = new zzd(paramzzb);
      ((zzpc)zzjb()).zza(paramLocationSettingsRequest, paramzzb, paramString);
      return;
      bool1 = false;
      break;
    }
  }
  
  public void zza(List<String> paramList, zzf.zzb paramzzb)
  {
    zzfc();
    boolean bool;
    String[] arrayOfString;
    if ((paramList != null) && (paramList.size() > 0))
    {
      bool = true;
      zzx.zzb(bool, "geofenceRequestIds can't be null nor empty.");
      zzx.zzb(paramzzb, "OnRemoveGeofencesResultListener not provided.");
      arrayOfString = (String[])paramList.toArray(new String[0]);
      if (paramzzb != null) {
        break label81;
      }
    }
    label81:
    for (paramList = null;; paramList = new zzb(paramzzb, this))
    {
      ((zzpc)zzjb()).zza(arrayOfString, paramList, getContext().getPackageName());
      return;
      bool = false;
      break;
    }
  }
  
  public void zzb(Location paramLocation)
  {
    zzamX.zzb(paramLocation);
  }
  
  public void zzb(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    zzamX.zzb(paramLocationRequest, paramPendingIntent);
  }
  
  public void zzd(PendingIntent paramPendingIntent)
  {
    zzamX.zzd(paramPendingIntent);
  }
  
  public Location zzpx()
  {
    return zzamX.zzpx();
  }
  
  final class zza
    extends zzk<zzpc>.zzc<zzf.zza>
  {
    private final int zzLs;
    private final String[] zzamZ;
    
    public zza(zzf.zza paramzza, int paramInt, String[] paramArrayOfString)
    {
      super(paramzza);
      zzLs = LocationStatusCodes.zzfq(paramInt);
      zzamZ = paramArrayOfString;
    }
    
    protected final void zza(zzf.zza paramzza)
    {
      if (paramzza != null) {
        paramzza.zza(zzLs, zzamZ);
      }
    }
    
    protected final void zzjf() {}
  }
  
  static final class zzb
    extends zzpb.zza
  {
    private zzf.zza zzanb;
    private zzf.zzb zzanc;
    private zzpf zzand;
    
    public zzb(zzf.zza paramzza, zzpf paramzzpf)
    {
      zzanb = paramzza;
      zzanc = null;
      zzand = paramzzpf;
    }
    
    public zzb(zzf.zzb paramzzb, zzpf paramzzpf)
    {
      zzanc = paramzzb;
      zzanb = null;
      zzand = paramzzpf;
    }
    
    public final void zza(int paramInt, String[] paramArrayOfString)
    {
      if (zzand == null)
      {
        Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
        return;
      }
      zzpf localzzpf1 = zzand;
      zzpf localzzpf2 = zzand;
      localzzpf2.getClass();
      localzzpf1.zza(new zzpf.zza(localzzpf2, zzanb, paramInt, paramArrayOfString));
      zzand = null;
      zzanb = null;
      zzanc = null;
    }
    
    public final void zzb(int paramInt, PendingIntent paramPendingIntent)
    {
      if (zzand == null)
      {
        Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
        return;
      }
      zzpf localzzpf1 = zzand;
      zzpf localzzpf2 = zzand;
      localzzpf2.getClass();
      localzzpf1.zza(new zzpf.zzc(localzzpf2, 1, zzanc, paramInt, paramPendingIntent));
      zzand = null;
      zzanb = null;
      zzanc = null;
    }
    
    public final void zzb(int paramInt, String[] paramArrayOfString)
    {
      if (zzand == null)
      {
        Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
        return;
      }
      zzpf localzzpf1 = zzand;
      zzpf localzzpf2 = zzand;
      localzzpf2.getClass();
      localzzpf1.zza(new zzpf.zzc(localzzpf2, 2, zzanc, paramInt, paramArrayOfString));
      zzand = null;
      zzanb = null;
      zzanc = null;
    }
  }
  
  final class zzc
    extends zzk<zzpc>.zzc<zzf.zzb>
  {
    private final PendingIntent mPendingIntent;
    private final int zzLs;
    private final String[] zzamZ;
    private final int zzane;
    
    public zzc(int paramInt1, zzf.zzb paramzzb, int paramInt2, PendingIntent paramPendingIntent)
    {
      super(paramzzb);
      if (paramInt1 == 1) {}
      for (;;)
      {
        zzb.zzN(bool);
        zzane = paramInt1;
        zzLs = LocationStatusCodes.zzfq(paramInt2);
        mPendingIntent = paramPendingIntent;
        zzamZ = null;
        return;
        bool = false;
      }
    }
    
    public zzc(int paramInt1, zzf.zzb paramzzb, int paramInt2, String[] paramArrayOfString)
    {
      super(paramzzb);
      if (paramInt1 == 2) {}
      for (boolean bool = true;; bool = false)
      {
        zzb.zzN(bool);
        zzane = paramInt1;
        zzLs = LocationStatusCodes.zzfq(paramInt2);
        zzamZ = paramArrayOfString;
        mPendingIntent = null;
        return;
      }
    }
    
    protected final void zza(zzf.zzb paramzzb)
    {
      if (paramzzb != null) {}
      switch (zzane)
      {
      default: 
        Log.wtf("LocationClientImpl", "Unsupported action: " + zzane);
        return;
      case 1: 
        paramzzb.zzb(zzLs, mPendingIntent);
        return;
      }
      paramzzb.zzb(zzLs, zzamZ);
    }
    
    protected final void zzjf() {}
  }
  
  static final class zzd
    extends zzpd.zza
  {
    private zza.zzb<LocationSettingsResult> zzanf;
    
    public zzd(zza.zzb<LocationSettingsResult> paramzzb)
    {
      if (paramzzb != null) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zzb(bool, "listener can't be null.");
        zzanf = paramzzb;
        return;
      }
    }
    
    public final void zza(LocationSettingsResult paramLocationSettingsResult)
    {
      zzanf.zzd(paramLocationSettingsResult);
      zzanf = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */