package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzj
  implements Parcelable.Creator<LocationSettingsRequest>
{
  static void zza(LocationSettingsRequest paramLocationSettingsRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramLocationSettingsRequest.zzme(), false);
    zzb.zzc(paramParcel, 1000, paramLocationSettingsRequest.getVersionCode());
    zzb.zza(paramParcel, 2, paramLocationSettingsRequest.zzps());
    zzb.zza(paramParcel, 3, paramLocationSettingsRequest.zzpt());
    zzb.zzH(paramParcel, paramInt);
  }
  
  public LocationSettingsRequest zzdr(Parcel paramParcel)
  {
    boolean bool2 = false;
    int j = zza.zzJ(paramParcel);
    ArrayList localArrayList = null;
    int i = 0;
    boolean bool1 = false;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localArrayList = zza.zzc(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 3: 
        bool2 = zza.zzc(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsRequest(i, localArrayList, bool1, bool2);
  }
  
  public LocationSettingsRequest[] zzfn(int paramInt)
  {
    return new LocationSettingsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */