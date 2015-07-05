package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class LocationSettingsResult
  implements Result, SafeParcelable
{
  public static final LocationSettingsResultCreator CREATOR = new LocationSettingsResultCreator();
  private final int zzFG;
  private final Status zzHb;
  private final LocationSettingsStates zzamp;
  
  LocationSettingsResult(int paramInt, Status paramStatus, LocationSettingsStates paramLocationSettingsStates)
  {
    zzFG = paramInt;
    zzHb = paramStatus;
    zzamp = paramLocationSettingsStates;
  }
  
  public LocationSettingsResult(Status paramStatus)
  {
    this(1, paramStatus, null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public LocationSettingsStates getLocationSettingsStates()
  {
    return zzamp;
  }
  
  public Status getStatus()
  {
    return zzHb;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    LocationSettingsResultCreator.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */