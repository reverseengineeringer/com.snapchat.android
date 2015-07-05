package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzen
  implements Parcelable.Creator<zzeo>
{
  static void zza(zzeo paramzzeo, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzun, paramInt, false);
    zzb.zza(paramParcel, 3, paramzzeo.zzdi(), false);
    zzb.zza(paramParcel, 4, paramzzeo.zzdj(), false);
    zzb.zza(paramParcel, 5, paramzzeo.zzdk(), false);
    zzb.zza(paramParcel, 6, paramzzeo.zzdl(), false);
    zzb.zza(paramParcel, 7, zzus, false);
    zzb.zza(paramParcel, 8, zzut);
    zzb.zza(paramParcel, 9, zzuu, false);
    zzb.zza(paramParcel, 10, paramzzeo.zzdn(), false);
    zzb.zzc(paramParcel, 11, orientation);
    zzb.zzc(paramParcel, 12, zzuw);
    zzb.zza(paramParcel, 13, zztR, false);
    zzb.zza(paramParcel, 14, zzlP, paramInt, false);
    zzb.zza(paramParcel, 15, paramzzeo.zzdm(), false);
    zzb.zza(paramParcel, 17, zzuz, paramInt, false);
    zzb.zza(paramParcel, 16, zzuy, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzeo zzf(Parcel paramParcel)
  {
    int m = zza.zzJ(paramParcel);
    int k = 0;
    zzek localzzek = null;
    IBinder localIBinder6 = null;
    IBinder localIBinder5 = null;
    IBinder localIBinder4 = null;
    IBinder localIBinder3 = null;
    String str4 = null;
    boolean bool = false;
    String str3 = null;
    IBinder localIBinder2 = null;
    int j = 0;
    int i = 0;
    String str2 = null;
    zzhy localzzhy = null;
    IBinder localIBinder1 = null;
    String str1 = null;
    zzx localzzx = null;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        localzzek = (zzek)zza.zza(paramParcel, n, zzek.CREATOR);
        break;
      case 3: 
        localIBinder6 = zza.zzp(paramParcel, n);
        break;
      case 4: 
        localIBinder5 = zza.zzp(paramParcel, n);
        break;
      case 5: 
        localIBinder4 = zza.zzp(paramParcel, n);
        break;
      case 6: 
        localIBinder3 = zza.zzp(paramParcel, n);
        break;
      case 7: 
        str4 = zza.zzo(paramParcel, n);
        break;
      case 8: 
        bool = zza.zzc(paramParcel, n);
        break;
      case 9: 
        str3 = zza.zzo(paramParcel, n);
        break;
      case 10: 
        localIBinder2 = zza.zzp(paramParcel, n);
        break;
      case 11: 
        j = zza.zzg(paramParcel, n);
        break;
      case 12: 
        i = zza.zzg(paramParcel, n);
        break;
      case 13: 
        str2 = zza.zzo(paramParcel, n);
        break;
      case 14: 
        localzzhy = (zzhy)zza.zza(paramParcel, n, zzhy.CREATOR);
        break;
      case 15: 
        localIBinder1 = zza.zzp(paramParcel, n);
        break;
      case 17: 
        localzzx = (zzx)zza.zza(paramParcel, n, zzx.CREATOR);
        break;
      case 16: 
        str1 = zza.zzo(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzeo(k, localzzek, localIBinder6, localIBinder5, localIBinder4, localIBinder3, str4, bool, str3, localIBinder2, j, i, str2, localzzhy, localIBinder1, str1, localzzx);
  }
  
  public zzeo[] zzq(int paramInt)
  {
    return new zzeo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */