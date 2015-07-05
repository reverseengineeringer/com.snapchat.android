package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzk
  implements Parcelable.Creator<MarkerOptions>
{
  static void zza(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramMarkerOptions.getVersionCode());
    zzb.zza(paramParcel, 2, paramMarkerOptions.getPosition(), paramInt, false);
    zzb.zza(paramParcel, 3, paramMarkerOptions.getTitle(), false);
    zzb.zza(paramParcel, 4, paramMarkerOptions.getSnippet(), false);
    zzb.zza(paramParcel, 5, paramMarkerOptions.zzqI(), false);
    zzb.zza(paramParcel, 6, paramMarkerOptions.getAnchorU());
    zzb.zza(paramParcel, 7, paramMarkerOptions.getAnchorV());
    zzb.zza(paramParcel, 8, paramMarkerOptions.isDraggable());
    zzb.zza(paramParcel, 9, paramMarkerOptions.isVisible());
    zzb.zza(paramParcel, 10, paramMarkerOptions.isFlat());
    zzb.zza(paramParcel, 11, paramMarkerOptions.getRotation());
    zzb.zza(paramParcel, 12, paramMarkerOptions.getInfoWindowAnchorU());
    zzb.zza(paramParcel, 13, paramMarkerOptions.getInfoWindowAnchorV());
    zzb.zza(paramParcel, 14, paramMarkerOptions.getAlpha());
    zzb.zzH(paramParcel, i);
  }
  
  public MarkerOptions zzdX(Parcel paramParcel)
  {
    int j = zza.zzJ(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    String str2 = null;
    String str1 = null;
    IBinder localIBinder = null;
    float f6 = 0.0F;
    float f5 = 0.0F;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = false;
    float f4 = 0.0F;
    float f3 = 0.5F;
    float f2 = 0.0F;
    float f1 = 1.0F;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzI(paramParcel);
      switch (zza.zzaP(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localLatLng = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        str2 = zza.zzo(paramParcel, k);
        break;
      case 4: 
        str1 = zza.zzo(paramParcel, k);
        break;
      case 5: 
        localIBinder = zza.zzp(paramParcel, k);
        break;
      case 6: 
        f6 = zza.zzl(paramParcel, k);
        break;
      case 7: 
        f5 = zza.zzl(paramParcel, k);
        break;
      case 8: 
        bool3 = zza.zzc(paramParcel, k);
        break;
      case 9: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 10: 
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 11: 
        f4 = zza.zzl(paramParcel, k);
        break;
      case 12: 
        f3 = zza.zzl(paramParcel, k);
        break;
      case 13: 
        f2 = zza.zzl(paramParcel, k);
        break;
      case 14: 
        f1 = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new MarkerOptions(i, localLatLng, str2, str1, localIBinder, f6, f5, bool3, bool2, bool1, f4, f3, f2, f1);
  }
  
  public MarkerOptions[] zzga(int paramInt)
  {
    return new MarkerOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */