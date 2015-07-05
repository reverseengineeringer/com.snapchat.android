package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.CameraPosition;

public class zza
  implements Parcelable.Creator<GoogleMapOptions>
{
  static void zza(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramGoogleMapOptions.getVersionCode());
    zzb.zza(paramParcel, 2, paramGoogleMapOptions.zzqh());
    zzb.zza(paramParcel, 3, paramGoogleMapOptions.zzqi());
    zzb.zzc(paramParcel, 4, paramGoogleMapOptions.getMapType());
    zzb.zza(paramParcel, 5, paramGoogleMapOptions.getCamera(), paramInt, false);
    zzb.zza(paramParcel, 6, paramGoogleMapOptions.zzqj());
    zzb.zza(paramParcel, 7, paramGoogleMapOptions.zzqk());
    zzb.zza(paramParcel, 8, paramGoogleMapOptions.zzql());
    zzb.zza(paramParcel, 9, paramGoogleMapOptions.zzqm());
    zzb.zza(paramParcel, 10, paramGoogleMapOptions.zzqn());
    zzb.zza(paramParcel, 11, paramGoogleMapOptions.zzqo());
    zzb.zza(paramParcel, 12, paramGoogleMapOptions.zzqp());
    zzb.zza(paramParcel, 14, paramGoogleMapOptions.zzqq());
    zzb.zzH(paramParcel, i);
  }
  
  public GoogleMapOptions zzdP(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(paramParcel);
    int j = 0;
    byte b10 = 0;
    byte b9 = 0;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b8 = 0;
    byte b7 = 0;
    byte b6 = 0;
    byte b5 = 0;
    byte b4 = 0;
    byte b3 = 0;
    byte b2 = 0;
    byte b1 = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.zza.zzI(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(m))
      {
      case 13: 
      default: 
        com.google.android.gms.common.internal.safeparcel.zza.zzb(paramParcel, m);
        break;
      case 1: 
        j = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, m);
        break;
      case 2: 
        b10 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 3: 
        b9 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 4: 
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)com.google.android.gms.common.internal.safeparcel.zza.zza(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b8 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 7: 
        b7 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 8: 
        b6 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 9: 
        b5 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 10: 
        b4 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 11: 
        b3 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 12: 
        b2 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
        break;
      case 14: 
        b1 = com.google.android.gms.common.internal.safeparcel.zza.zze(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b10, b9, i, localCameraPosition, b8, b7, b6, b5, b4, b3, b2, b1);
  }
  
  public GoogleMapOptions[] zzfS(int paramInt)
  {
    return new GoogleMapOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */