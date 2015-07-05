package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzgp
  implements Parcelable.Creator<zzgo>
{
  static void zza(zzgo paramzzgo, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzwm, false);
    zzb.zza(paramParcel, 3, zzwn, paramInt, false);
    zzb.zza(paramParcel, 4, zzlV, paramInt, false);
    zzb.zza(paramParcel, 5, zzlM, false);
    zzb.zza(paramParcel, 6, applicationInfo, paramInt, false);
    zzb.zza(paramParcel, 7, zzwo, paramInt, false);
    zzb.zza(paramParcel, 8, zzwp, false);
    zzb.zza(paramParcel, 9, zzwq, false);
    zzb.zza(paramParcel, 10, zzwr, false);
    zzb.zza(paramParcel, 11, zzlP, paramInt, false);
    zzb.zza(paramParcel, 12, zzws, false);
    zzb.zzc(paramParcel, 13, zzwt);
    zzb.zzb(paramParcel, 14, zzmf, false);
    zzb.zza(paramParcel, 15, zzwu, false);
    zzb.zza(paramParcel, 17, zzww, paramInt, false);
    zzb.zza(paramParcel, 16, zzwv);
    zzb.zzc(paramParcel, 19, zzwy);
    zzb.zzc(paramParcel, 18, zzwx);
    zzb.zza(paramParcel, 21, zzwA, false);
    zzb.zza(paramParcel, 20, zzwz);
    zzb.zzc(paramParcel, 23, zzwC);
    zzb.zza(paramParcel, 22, zzwB);
    zzb.zza(paramParcel, 25, zzwE);
    zzb.zza(paramParcel, 24, zzwD, false);
    zzb.zza(paramParcel, 26, zzwF, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzgo zzh(Parcel paramParcel)
  {
    int i1 = zza.zzJ(paramParcel);
    int n = 0;
    Bundle localBundle3 = null;
    zzax localzzax = null;
    zzba localzzba = null;
    String str7 = null;
    ApplicationInfo localApplicationInfo = null;
    PackageInfo localPackageInfo = null;
    String str6 = null;
    String str5 = null;
    String str4 = null;
    zzhy localzzhy = null;
    Bundle localBundle2 = null;
    int m = 0;
    ArrayList localArrayList = null;
    Bundle localBundle1 = null;
    boolean bool2 = false;
    Messenger localMessenger = null;
    int k = 0;
    int j = 0;
    float f = 0.0F;
    String str3 = null;
    boolean bool1 = false;
    int i = 0;
    String str2 = null;
    long l = 0L;
    String str1 = null;
    while (paramParcel.dataPosition() < i1)
    {
      int i2 = zza.zzI(paramParcel);
      switch (zza.zzaP(i2))
      {
      default: 
        zza.zzb(paramParcel, i2);
        break;
      case 1: 
        n = zza.zzg(paramParcel, i2);
        break;
      case 2: 
        localBundle3 = zza.zzq(paramParcel, i2);
        break;
      case 3: 
        localzzax = (zzax)zza.zza(paramParcel, i2, zzax.CREATOR);
        break;
      case 4: 
        localzzba = (zzba)zza.zza(paramParcel, i2, zzba.CREATOR);
        break;
      case 5: 
        str7 = zza.zzo(paramParcel, i2);
        break;
      case 6: 
        localApplicationInfo = (ApplicationInfo)zza.zza(paramParcel, i2, ApplicationInfo.CREATOR);
        break;
      case 7: 
        localPackageInfo = (PackageInfo)zza.zza(paramParcel, i2, PackageInfo.CREATOR);
        break;
      case 8: 
        str6 = zza.zzo(paramParcel, i2);
        break;
      case 9: 
        str5 = zza.zzo(paramParcel, i2);
        break;
      case 10: 
        str4 = zza.zzo(paramParcel, i2);
        break;
      case 11: 
        localzzhy = (zzhy)zza.zza(paramParcel, i2, zzhy.CREATOR);
        break;
      case 12: 
        localBundle2 = zza.zzq(paramParcel, i2);
        break;
      case 13: 
        m = zza.zzg(paramParcel, i2);
        break;
      case 14: 
        localArrayList = zza.zzC(paramParcel, i2);
        break;
      case 15: 
        localBundle1 = zza.zzq(paramParcel, i2);
        break;
      case 17: 
        localMessenger = (Messenger)zza.zza(paramParcel, i2, Messenger.CREATOR);
        break;
      case 16: 
        bool2 = zza.zzc(paramParcel, i2);
        break;
      case 19: 
        j = zza.zzg(paramParcel, i2);
        break;
      case 18: 
        k = zza.zzg(paramParcel, i2);
        break;
      case 21: 
        str3 = zza.zzo(paramParcel, i2);
        break;
      case 20: 
        f = zza.zzl(paramParcel, i2);
        break;
      case 23: 
        i = zza.zzg(paramParcel, i2);
        break;
      case 22: 
        bool1 = zza.zzc(paramParcel, i2);
        break;
      case 25: 
        l = zza.zzi(paramParcel, i2);
        break;
      case 24: 
        str2 = zza.zzo(paramParcel, i2);
        break;
      case 26: 
        str1 = zza.zzo(paramParcel, i2);
      }
    }
    if (paramParcel.dataPosition() != i1) {
      throw new zza.zza("Overread allowed size end=" + i1, paramParcel);
    }
    return new zzgo(n, localBundle3, localzzax, localzzba, str7, localApplicationInfo, localPackageInfo, str6, str5, str4, localzzhy, localBundle2, m, localArrayList, localBundle1, bool2, localMessenger, k, j, f, str3, bool1, i, str2, l, str1);
  }
  
  public zzgo[] zzv(int paramInt)
  {
    return new zzgo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */