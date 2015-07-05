package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class zzf
{
  static void zza(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzK(paramParcel);
    zzb.zzc(paramParcel, 1, paramGroundOverlayOptions.getVersionCode());
    zzb.zza(paramParcel, 2, paramGroundOverlayOptions.zzqH(), false);
    zzb.zza(paramParcel, 3, paramGroundOverlayOptions.getLocation(), paramInt, false);
    zzb.zza(paramParcel, 4, paramGroundOverlayOptions.getWidth());
    zzb.zza(paramParcel, 5, paramGroundOverlayOptions.getHeight());
    zzb.zza(paramParcel, 6, paramGroundOverlayOptions.getBounds(), paramInt, false);
    zzb.zza(paramParcel, 7, paramGroundOverlayOptions.getBearing());
    zzb.zza(paramParcel, 8, paramGroundOverlayOptions.getZIndex());
    zzb.zza(paramParcel, 9, paramGroundOverlayOptions.isVisible());
    zzb.zza(paramParcel, 10, paramGroundOverlayOptions.getTransparency());
    zzb.zza(paramParcel, 11, paramGroundOverlayOptions.getAnchorU());
    zzb.zza(paramParcel, 12, paramGroundOverlayOptions.getAnchorV());
    zzb.zzH(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */