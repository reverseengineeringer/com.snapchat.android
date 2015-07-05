package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzf
  implements Parcelable.Creator<DataHolder>
{
  static void zza(DataHolder paramDataHolder, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zza(paramParcel, 1, paramDataHolder.zziz(), false);
    zzb.zzc(paramParcel, 1000, paramDataHolder.getVersionCode());
    zzb.zza(paramParcel, 2, paramDataHolder.zziA(), paramInt, false);
    zzb.zzc(paramParcel, 3, paramDataHolder.getStatusCode());
    zzb.zza(paramParcel, 4, paramDataHolder.zziu(), false);
    zzb.zzH(paramParcel, i);
  }
  
  public DataHolder zzA(Parcel paramParcel)
  {
    int i = 0;
    Bundle localBundle = null;
    int k = zza.zzJ(paramParcel);
    CursorWindow[] arrayOfCursorWindow = null;
    String[] arrayOfString = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzI(paramParcel);
      switch (zza.zzaP(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        arrayOfString = zza.zzA(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        arrayOfCursorWindow = (CursorWindow[])zza.zzb(paramParcel, m, CursorWindow.CREATOR);
        break;
      case 3: 
        i = zza.zzg(paramParcel, m);
        break;
      case 4: 
        localBundle = zza.zzq(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    paramParcel = new DataHolder(j, arrayOfString, arrayOfCursorWindow, i, localBundle);
    paramParcel.zziy();
    return paramParcel;
  }
  
  public DataHolder[] zzaz(int paramInt)
  {
    return new DataHolder[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */