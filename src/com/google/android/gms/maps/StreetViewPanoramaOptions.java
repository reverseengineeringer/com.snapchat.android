package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final zzc CREATOR = new zzc();
  private final int zzFG;
  private Boolean zzapK;
  private Boolean zzapQ = Boolean.valueOf(true);
  private Boolean zzaqA = Boolean.valueOf(true);
  private Boolean zzaqB = Boolean.valueOf(true);
  private StreetViewPanoramaCamera zzaqv;
  private String zzaqw;
  private LatLng zzaqx;
  private Integer zzaqy;
  private Boolean zzaqz = Boolean.valueOf(true);
  
  public StreetViewPanoramaOptions()
  {
    zzFG = 1;
  }
  
  StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    zzFG = paramInt;
    zzaqv = paramStreetViewPanoramaCamera;
    zzaqx = paramLatLng;
    zzaqy = paramInteger;
    zzaqw = paramString;
    zzaqz = zza.zza(paramByte1);
    zzapQ = zza.zza(paramByte2);
    zzaqA = zza.zza(paramByte3);
    zzaqB = zza.zza(paramByte4);
    zzapK = zza.zza(paramByte5);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Boolean getPanningGesturesEnabled()
  {
    return zzaqA;
  }
  
  public final String getPanoramaId()
  {
    return zzaqw;
  }
  
  public final LatLng getPosition()
  {
    return zzaqx;
  }
  
  public final Integer getRadius()
  {
    return zzaqy;
  }
  
  public final Boolean getStreetNamesEnabled()
  {
    return zzaqB;
  }
  
  public final StreetViewPanoramaCamera getStreetViewPanoramaCamera()
  {
    return zzaqv;
  }
  
  public final Boolean getUseViewLifecycleInFragment()
  {
    return zzapK;
  }
  
  public final Boolean getUserNavigationEnabled()
  {
    return zzaqz;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final Boolean getZoomGesturesEnabled()
  {
    return zzapQ;
  }
  
  public final StreetViewPanoramaOptions panningGesturesEnabled(boolean paramBoolean)
  {
    zzaqA = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
  {
    zzaqv = paramStreetViewPanoramaCamera;
    return this;
  }
  
  public final StreetViewPanoramaOptions panoramaId(String paramString)
  {
    zzaqw = paramString;
    return this;
  }
  
  public final StreetViewPanoramaOptions position(LatLng paramLatLng)
  {
    zzaqx = paramLatLng;
    return this;
  }
  
  public final StreetViewPanoramaOptions position(LatLng paramLatLng, Integer paramInteger)
  {
    zzaqx = paramLatLng;
    zzaqy = paramInteger;
    return this;
  }
  
  public final StreetViewPanoramaOptions streetNamesEnabled(boolean paramBoolean)
  {
    zzaqB = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    zzapK = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final StreetViewPanoramaOptions userNavigationEnabled(boolean paramBoolean)
  {
    zzaqz = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzc.zza(this, paramParcel, paramInt);
  }
  
  public final StreetViewPanoramaOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    zzapQ = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  final byte zzqi()
  {
    return zza.zzd(zzapK);
  }
  
  final byte zzqm()
  {
    return zza.zzd(zzapQ);
  }
  
  final byte zzqw()
  {
    return zza.zzd(zzaqz);
  }
  
  final byte zzqx()
  {
    return zza.zzd(zzaqA);
  }
  
  final byte zzqy()
  {
    return zza.zzd(zzaqB);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */