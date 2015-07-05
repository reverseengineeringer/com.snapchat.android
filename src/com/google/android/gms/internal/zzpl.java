package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzpl
  implements Parcelable.Creator<zzpk>
{
  static void zza(zzpk paramzzpk, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramzzpk.getRequestId(), false);
    zzb.zzc(paramParcel, 1000, paramzzpk.getVersionCode());
    zzb.zza(paramParcel, 2, paramzzpk.getExpirationTime());
    zzb.zza(paramParcel, 3, paramzzpk.zzpB());
    zzb.zza(paramParcel, 4, paramzzpk.getLatitude());
    zzb.zza(paramParcel, 5, paramzzpk.getLongitude());
    zzb.zza(paramParcel, 6, paramzzpk.zzpC());
    zzb.zzc(paramParcel, 7, paramzzpk.zzpD());
    zzb.zzc(paramParcel, 8, paramzzpk.getNotificationResponsiveness());
    zzb.zzc(paramParcel, 9, paramzzpk.zzpE());
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzpk zzdx(Parcel paramParcel)
  {
    int n = zza.zzJ(paramParcel);
    int m = 0;
    String str = null;
    int k = 0;
    short s = 0;
    double d2 = 0.0D;
    double d1 = 0.0D;
    float f = 0.0F;
    long l = 0L;
    int j = 0;
    int i = -1;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = zza.zzI(paramParcel);
      switch (zza.zzaP(i1))
      {
      default: 
        zza.zzb(paramParcel, i1);
        break;
      case 1: 
        str = zza.zzo(paramParcel, i1);
        break;
      case 1000: 
        m = zza.zzg(paramParcel, i1);
        break;
      case 2: 
        l = zza.zzi(paramParcel, i1);
        break;
      case 3: 
        s = zza.zzf(paramParcel, i1);
        break;
      case 4: 
        d2 = zza.zzm(paramParcel, i1);
        break;
      case 5: 
        d1 = zza.zzm(paramParcel, i1);
        break;
      case 6: 
        f = zza.zzl(paramParcel, i1);
        break;
      case 7: 
        k = zza.zzg(paramParcel, i1);
        break;
      case 8: 
        j = zza.zzg(paramParcel, i1);
        break;
      case 9: 
        i = zza.zzg(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new zza.zza("Overread allowed size end=" + n, paramParcel);
    }
    return new zzpk(m, str, k, s, d2, d1, f, l, j, i);
  }
  
  public zzpk[] zzfy(int paramInt)
  {
    return new zzpk[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */