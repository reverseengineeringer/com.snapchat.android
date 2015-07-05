package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class zzgr
  implements Parcelable.Creator<zzgq>
{
  static void zza(zzgq paramzzgq, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, versionCode);
    zzb.zza(paramParcel, 2, zzus, false);
    zzb.zza(paramParcel, 3, zzwG, false);
    zzb.zzb(paramParcel, 4, zzst, false);
    zzb.zzc(paramParcel, 5, errorCode);
    zzb.zzb(paramParcel, 6, zzsu, false);
    zzb.zza(paramParcel, 7, zzwH);
    zzb.zza(paramParcel, 8, zzwI);
    zzb.zza(paramParcel, 9, zzwJ);
    zzb.zzb(paramParcel, 10, zzwK, false);
    zzb.zza(paramParcel, 11, zzsx);
    zzb.zzc(paramParcel, 12, orientation);
    zzb.zza(paramParcel, 13, zzwL, false);
    zzb.zza(paramParcel, 14, zzwM);
    zzb.zza(paramParcel, 15, zzwN, false);
    zzb.zza(paramParcel, 19, zzwP, false);
    zzb.zza(paramParcel, 18, zzwO);
    zzb.zza(paramParcel, 21, zzwQ, false);
    zzb.zza(paramParcel, 23, zzwS);
    zzb.zza(paramParcel, 22, zzwR);
    zzb.zza(paramParcel, 25, zzwT);
    zzb.zza(paramParcel, 24, zzwv);
    zzb.zza(paramParcel, 26, zzwU);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public zzgq zzi(Parcel paramParcel)
  {
    int m = zza.zzJ(paramParcel);
    int k = 0;
    String str6 = null;
    String str5 = null;
    ArrayList localArrayList3 = null;
    int j = 0;
    ArrayList localArrayList2 = null;
    long l4 = 0L;
    boolean bool7 = false;
    long l3 = 0L;
    ArrayList localArrayList1 = null;
    long l2 = 0L;
    int i = 0;
    String str4 = null;
    long l1 = 0L;
    String str3 = null;
    boolean bool6 = false;
    String str2 = null;
    String str1 = null;
    boolean bool5 = false;
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = false;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      case 16: 
      case 17: 
      case 20: 
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        str6 = zza.zzo(paramParcel, n);
        break;
      case 3: 
        str5 = zza.zzo(paramParcel, n);
        break;
      case 4: 
        localArrayList3 = zza.zzC(paramParcel, n);
        break;
      case 5: 
        j = zza.zzg(paramParcel, n);
        break;
      case 6: 
        localArrayList2 = zza.zzC(paramParcel, n);
        break;
      case 7: 
        l4 = zza.zzi(paramParcel, n);
        break;
      case 8: 
        bool7 = zza.zzc(paramParcel, n);
        break;
      case 9: 
        l3 = zza.zzi(paramParcel, n);
        break;
      case 10: 
        localArrayList1 = zza.zzC(paramParcel, n);
        break;
      case 11: 
        l2 = zza.zzi(paramParcel, n);
        break;
      case 12: 
        i = zza.zzg(paramParcel, n);
        break;
      case 13: 
        str4 = zza.zzo(paramParcel, n);
        break;
      case 14: 
        l1 = zza.zzi(paramParcel, n);
        break;
      case 15: 
        str3 = zza.zzo(paramParcel, n);
        break;
      case 19: 
        str2 = zza.zzo(paramParcel, n);
        break;
      case 18: 
        bool6 = zza.zzc(paramParcel, n);
        break;
      case 21: 
        str1 = zza.zzo(paramParcel, n);
        break;
      case 23: 
        bool4 = zza.zzc(paramParcel, n);
        break;
      case 22: 
        bool5 = zza.zzc(paramParcel, n);
        break;
      case 25: 
        bool2 = zza.zzc(paramParcel, n);
        break;
      case 24: 
        bool3 = zza.zzc(paramParcel, n);
        break;
      case 26: 
        bool1 = zza.zzc(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new zzgq(k, str6, str5, localArrayList3, j, localArrayList2, l4, bool7, l3, localArrayList1, l2, i, str4, l1, str3, bool6, str2, str1, bool5, bool4, bool3, bool2, bool1);
  }
  
  public zzgq[] zzw(int paramInt)
  {
    return new zzgq[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */