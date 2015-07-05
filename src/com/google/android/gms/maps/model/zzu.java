package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzu
  implements Parcelable.Creator<Tile>
{
  static void zza(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramTile.getVersionCode());
    zzb.zzc(paramParcel, 2, width);
    zzb.zzc(paramParcel, 3, height);
    zzb.zza(paramParcel, 4, data, false);
    zzb.zzH(paramParcel, paramInt);
  }
  
  public Tile zzee(Parcel paramParcel)
  {
    int k = 0;
    int m = zza.zzJ(paramParcel);
    byte[] arrayOfByte = null;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzI(paramParcel);
      switch (zza.zzaP(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        i = zza.zzg(paramParcel, n);
        break;
      case 2: 
        j = zza.zzg(paramParcel, n);
        break;
      case 3: 
        k = zza.zzg(paramParcel, n);
        break;
      case 4: 
        arrayOfByte = zza.zzr(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new Tile(i, j, k, arrayOfByte);
  }
  
  public Tile[] zzgh(int paramInt)
  {
    return new Tile[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */