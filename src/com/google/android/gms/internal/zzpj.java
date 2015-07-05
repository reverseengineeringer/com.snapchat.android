package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzpj
  implements Parcelable.Creator<zzpi>
{
  static void zza(zzpi paramzzpi, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, zzanl);
    zzb.zzc(paramParcel, 1000, paramzzpi.getVersionCode());
    zzb.zza(paramParcel, 2, zzanm, paramInt, false);
    zzb.zza(paramParcel, 3, paramzzpi.zzpz(), false);
    zzb.zza(paramParcel, 4, mPendingIntent, paramInt, false);
    zzb.zza(paramParcel, 5, paramzzpi.zzpA(), false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzpi zzdw(Parcel paramParcel)
  {
    IBinder localIBinder1 = null;
    int k = zza.zzJ(paramParcel);
    int j = 0;
    int i = 1;
    PendingIntent localPendingIntent = null;
    IBinder localIBinder2 = null;
    zzpg localzzpg = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        i = zza.zzg(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        localzzpg = (zzpg)zza.zza(paramParcel, m, zzpg.CREATOR);
        break;
      case 3: 
        localIBinder2 = zza.zzp(paramParcel, m);
        break;
      case 4: 
        localPendingIntent = (PendingIntent)zza.zza(paramParcel, m, PendingIntent.CREATOR);
        break;
      case 5: 
        localIBinder1 = zza.zzp(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new zzpi(j, i, localzzpg, localIBinder2, localPendingIntent, localIBinder1);
  }
  
  public zzpi[] zzfv(int paramInt)
  {
    return new zzpi[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */