package com.google.android.gms.location;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzpk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class GeofencingRequest$Builder
{
  private final List<zzpk> zzalY = new ArrayList();
  private int zzalZ = 5;
  
  public static int zzfg(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public final Builder addGeofence(Geofence paramGeofence)
  {
    zzx.zzb(paramGeofence, "geofence can't be null.");
    zzx.zzb(paramGeofence instanceof zzpk, "Geofence must be created using Geofence.Builder.");
    zzalY.add((zzpk)paramGeofence);
    return this;
  }
  
  public final Builder addGeofences(List<Geofence> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    for (;;)
    {
      return this;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Geofence localGeofence = (Geofence)paramList.next();
        if (localGeofence != null) {
          addGeofence(localGeofence);
        }
      }
    }
  }
  
  public final GeofencingRequest build()
  {
    if (!zzalY.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "No geofence has been added to this request.");
      return new GeofencingRequest(zzalY, zzalZ, null);
    }
  }
  
  public final Builder setInitialTrigger(int paramInt)
  {
    zzalZ = zzfg(paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */