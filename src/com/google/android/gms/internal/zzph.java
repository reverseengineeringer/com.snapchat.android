package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class zzph
  implements Parcelable.Creator<zzpg>
{
  static void zza(zzpg paramzzpg, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, zzabx, paramInt, false);
    zzb.zzc(paramParcel, 1000, paramzzpg.getVersionCode());
    zzb.zza(paramParcel, 2, zzanh);
    zzb.zza(paramParcel, 3, zzani);
    zzb.zza(paramParcel, 4, zzanj);
    zzb.zzc(paramParcel, 5, zzank, false);
    zzb.zza(paramParcel, 6, mTag, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzpg zzdv(Parcel paramParcel)
  {
    String str = null;
    boolean bool1 = true;
    boolean bool3 = false;
    int j = zza.zzJ(paramParcel);
    Object localObject = zzpg.zzang;
    boolean bool2 = true;
    LocationRequest localLocationRequest = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localLocationRequest = (LocationRequest)zza.zza(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        bool3 = zza.zzc(paramParcel, k);
        break;
      case 3: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 4: 
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 5: 
        localObject = zza.zzc(paramParcel, k, zzox.CREATOR);
        break;
      case 6: 
        str = zza.zzo(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzpg(i, localLocationRequest, bool3, bool2, bool1, (List)localObject, str);
  }
  
  public zzpg[] zzfu(int paramInt)
  {
    return new zzpg[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */