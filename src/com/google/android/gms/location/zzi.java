package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public class zzi
  implements Parcelable.Creator<zzh>
{
  static void zza(zzh paramzzh, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzaml, false);
    zzb.zzc(paramParcel, 1000, paramzzh.getVersionCode());
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzh zzdq(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    Object localObject = zzh.zzamk;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localObject = zza.zzc(paramParcel, k, Location.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzh(i, (List)localObject);
  }
  
  public zzh[] zzfm(int paramInt)
  {
    return new zzh[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */