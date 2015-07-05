package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzfa
  implements Parcelable.Creator<zzfb>
{
  static void zza(zzfb paramzzfb, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 3, paramzzfb.zzdt(), false);
    zzb.zza(paramParcel, 4, paramzzfb.zzdu(), false);
    zzb.zza(paramParcel, 5, paramzzfb.zzdv(), false);
    zzb.zza(paramParcel, 6, paramzzfb.zzds(), false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzfb zzg(Parcel paramParcel)
  {
    IBinder localIBinder1 = null;
    int j = zza.zzJ(paramParcel);
    int i = 0;
    IBinder localIBinder2 = null;
    IBinder localIBinder3 = null;
    IBinder localIBinder4 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      case 2: 
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 3: 
        localIBinder4 = zza.zzp(paramParcel, k);
        break;
      case 4: 
        localIBinder3 = zza.zzp(paramParcel, k);
        break;
      case 5: 
        localIBinder2 = zza.zzp(paramParcel, k);
        break;
      case 6: 
        localIBinder1 = zza.zzp(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new zzfb(i, localIBinder4, localIBinder3, localIBinder2, localIBinder1);
  }
  
  public zzfb[] zzr(int paramInt)
  {
    return new zzfb[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */