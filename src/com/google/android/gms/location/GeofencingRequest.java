package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzpk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GeofencingRequest> CREATOR = new zza();
  public static final int INITIAL_TRIGGER_DWELL = 4;
  public static final int INITIAL_TRIGGER_ENTER = 1;
  public static final int INITIAL_TRIGGER_EXIT = 2;
  private final int zzFG;
  private final List<zzpk> zzalY;
  private final int zzalZ;
  
  GeofencingRequest(int paramInt1, List<zzpk> paramList, int paramInt2)
  {
    zzFG = paramInt1;
    zzalY = paramList;
    zzalZ = paramInt2;
  }
  
  private GeofencingRequest(List<zzpk> paramList, int paramInt)
  {
    this(1, paramList, paramInt);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<Geofence> getGeofences()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(zzalY);
    return localArrayList;
  }
  
  public int getInitialTrigger()
  {
    return zzalZ;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zza.zza(this, paramParcel, paramInt);
  }
  
  public List<zzpk> zzpp()
  {
    return zzalY;
  }
  
  public static final class Builder
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.GeofencingRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */