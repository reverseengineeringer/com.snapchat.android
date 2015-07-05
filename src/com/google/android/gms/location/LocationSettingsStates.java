package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;

public class LocationSettingsStates
  implements SafeParcelable
{
  public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new zzk();
  private final int zzFG;
  private final boolean zzamq;
  private final boolean zzamr;
  private final boolean zzams;
  private final boolean zzamt;
  private final boolean zzamu;
  private final boolean zzamv;
  
  LocationSettingsStates(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    zzFG = paramInt;
    zzamq = paramBoolean1;
    zzamr = paramBoolean2;
    zzams = paramBoolean3;
    zzamt = paramBoolean4;
    zzamu = paramBoolean5;
    zzamv = paramBoolean6;
  }
  
  public static LocationSettingsStates fromIntent(Intent paramIntent)
  {
    return (LocationSettingsStates)zzc.zza(paramIntent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getVersionCode()
  {
    return zzFG;
  }
  
  public boolean isBlePresent()
  {
    return zzamv;
  }
  
  public boolean isBleUsable()
  {
    return zzams;
  }
  
  public boolean isGpsPresent()
  {
    return zzamt;
  }
  
  public boolean isGpsUsable()
  {
    return zzamq;
  }
  
  public boolean isLocationPresent()
  {
    return (zzamt) || (zzamu);
  }
  
  public boolean isLocationUsable()
  {
    return (zzamq) || (zzamr);
  }
  
  public boolean isNetworkLocationPresent()
  {
    return zzamu;
  }
  
  public boolean isNetworkLocationUsable()
  {
    return zzamr;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzk.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsStates
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */