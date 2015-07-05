package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class LocationSettingsResultCreator
  implements Parcelable.Creator<LocationSettingsResult>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void zza(LocationSettingsResult paramLocationSettingsResult, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramLocationSettingsResult.getStatus(), paramInt, false);
    zzb.zzc(paramParcel, 1000, paramLocationSettingsResult.getVersionCode());
    zzb.zza(paramParcel, 2, paramLocationSettingsResult.getLocationSettingsStates(), paramInt, false);
    zzb.zzH(paramParcel, i);
  }
  
  public LocationSettingsResult createFromParcel(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    Status localStatus = null;
    int i = 0;
    LocationSettingsStates localLocationSettingsStates = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localStatus = (Status)zza.zza(paramParcel, k, Status.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localLocationSettingsStates = (LocationSettingsStates)zza.zza(paramParcel, k, LocationSettingsStates.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsResult(i, localStatus, localLocationSettingsStates);
  }
  
  public LocationSettingsResult[] newArray(int paramInt)
  {
    return new LocationSettingsResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationSettingsResultCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */