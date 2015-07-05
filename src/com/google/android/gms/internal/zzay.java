package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzay
  implements Parcelable.Creator<zzax>
{
  static void zza(zzax paramzzax, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzoL);
    zzb.zza(paramParcel, 3, extras, false);
    zzb.zzc(paramParcel, 4, zzoM);
    zzb.zzb(paramParcel, 5, zzoN, false);
    zzb.zza(paramParcel, 6, zzoO);
    zzb.zzc(paramParcel, 7, zzoP);
    zzb.zza(paramParcel, 8, zzoQ);
    zzb.zza(paramParcel, 9, zzoR, false);
    zzb.zza(paramParcel, 10, zzoS, paramInt, false);
    zzb.zza(paramParcel, 11, zzoT, paramInt, false);
    zzb.zza(paramParcel, 12, zzoU, false);
    zzb.zza(paramParcel, 13, zzoV, false);
    zzb.zza(paramParcel, 14, zzoW, false);
    zzb.zzb(paramParcel, 15, zzoX, false);
    zzb.zza(paramParcel, 16, zzoY, false);
    zzb.zzH(paramParcel, i);
  }
  
  public zzax zzb(Parcel paramParcel)
  {
    int m = zza.zzJ(paramParcel);
    int k = 0;
    long l = 0L;
    Bundle localBundle3 = null;
    int j = 0;
    ArrayList localArrayList2 = null;
    boolean bool2 = false;
    int i = 0;
    boolean bool1 = false;
    String str3 = null;
    zzbs localzzbs = null;
    Location localLocation = null;
    String str2 = null;
    Bundle localBundle2 = null;
    Bundle localBundle1 = null;
    ArrayList localArrayList1 = null;
    String str1 = null;
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
        l = zza.zzi(paramParcel, n);
        break;
      case 3: 
        localBundle3 = zza.zzq(paramParcel, n);
        break;
      case 4: 
        j = zza.zzg(paramParcel, n);
        break;
      case 5: 
        localArrayList2 = zza.zzC(paramParcel, n);
        break;
      case 6: 
        bool2 = zza.zzc(paramParcel, n);
        break;
      case 7: 
        i = zza.zzg(paramParcel, n);
        break;
      case 8: 
        bool1 = zza.zzc(paramParcel, n);
        break;
      case 9: 
        str3 = zza.zzo(paramParcel, n);
        break;
      case 10: 
        localzzbs = (zzbs)zza.zza(paramParcel, n, zzbs.CREATOR);
        break;
      case 11: 
        localLocation = (Location)zza.zza(paramParcel, n, Location.CREATOR);
        break;
      case 12: 
        str2 = zza.zzo(paramParcel, n);
        break;
      case 13: 
        localBundle2 = zza.zzq(paramParcel, n);
        break;
      case 14: 
        localBundle1 = zza.zzq(paramParcel, n);
        break;
      case 15: 
        localArrayList1 = zza.zzC(paramParcel, n);
        break;
      case 16: 
        str1 = zza.zzo(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzax(k, l, localBundle3, j, localArrayList2, bool2, i, bool1, str3, localzzbs, localLocation, str2, localBundle2, localBundle1, localArrayList1, str1);
  }
  
  public zzax[] zzf(int paramInt)
  {
    return new zzax[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */