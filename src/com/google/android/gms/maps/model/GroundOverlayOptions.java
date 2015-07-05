package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;
import com.google.android.gms.maps.internal.zzaa;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final zze CREATOR = new zze();
  public static final float NO_DIMENSION = -1.0F;
  private final int zzFG;
  private float zzaqU;
  private float zzarb;
  private boolean zzarc = true;
  private BitmapDescriptor zzare;
  private LatLng zzarf;
  private float zzarg;
  private float zzarh;
  private LatLngBounds zzari;
  private float zzarj = 0.0F;
  private float zzark = 0.5F;
  private float zzarl = 0.5F;
  
  public GroundOverlayOptions()
  {
    zzFG = 1;
  }
  
  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    zzFG = paramInt;
    zzare = new BitmapDescriptor(zzd.zza.zzau(paramIBinder));
    zzarf = paramLatLng;
    zzarg = paramFloat1;
    zzarh = paramFloat2;
    zzari = paramLatLngBounds;
    zzaqU = paramFloat3;
    zzarb = paramFloat4;
    zzarc = paramBoolean;
    zzarj = paramFloat5;
    zzark = paramFloat6;
    zzarl = paramFloat7;
  }
  
  private GroundOverlayOptions zza(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    zzarf = paramLatLng;
    zzarg = paramFloat1;
    zzarh = paramFloat2;
    return this;
  }
  
  public final GroundOverlayOptions anchor(float paramFloat1, float paramFloat2)
  {
    zzark = paramFloat1;
    zzarl = paramFloat2;
    return this;
  }
  
  public final GroundOverlayOptions bearing(float paramFloat)
  {
    zzaqU = ((paramFloat % 360.0F + 360.0F) % 360.0F);
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final float getAnchorU()
  {
    return zzark;
  }
  
  public final float getAnchorV()
  {
    return zzarl;
  }
  
  public final float getBearing()
  {
    return zzaqU;
  }
  
  public final LatLngBounds getBounds()
  {
    return zzari;
  }
  
  public final float getHeight()
  {
    return zzarh;
  }
  
  public final BitmapDescriptor getImage()
  {
    return zzare;
  }
  
  public final LatLng getLocation()
  {
    return zzarf;
  }
  
  public final float getTransparency()
  {
    return zzarj;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final float getWidth()
  {
    return zzarg;
  }
  
  public final float getZIndex()
  {
    return zzarb;
  }
  
  public final GroundOverlayOptions image(BitmapDescriptor paramBitmapDescriptor)
  {
    zzare = paramBitmapDescriptor;
    return this;
  }
  
  public final boolean isVisible()
  {
    return zzarc;
  }
  
  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat)
  {
    boolean bool2 = true;
    if (zzari == null)
    {
      bool1 = true;
      zzx.zza(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label59;
      }
      bool1 = true;
      label24:
      zzx.zzb(bool1, "Location must be specified");
      if (paramFloat < 0.0F) {
        break label64;
      }
    }
    label59:
    label64:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zzb(bool1, "Width must be non-negative");
      return zza(paramLatLng, paramFloat, -1.0F);
      bool1 = false;
      break;
      bool1 = false;
      break label24;
    }
  }
  
  public final GroundOverlayOptions position(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = true;
    if (zzari == null)
    {
      bool1 = true;
      zzx.zza(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label81;
      }
      bool1 = true;
      label27:
      zzx.zzb(bool1, "Location must be specified");
      if (paramFloat1 < 0.0F) {
        break label87;
      }
      bool1 = true;
      label43:
      zzx.zzb(bool1, "Width must be non-negative");
      if (paramFloat2 < 0.0F) {
        break label93;
      }
    }
    label81:
    label87:
    label93:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zzb(bool1, "Height must be non-negative");
      return zza(paramLatLng, paramFloat1, paramFloat2);
      bool1 = false;
      break;
      bool1 = false;
      break label27;
      bool1 = false;
      break label43;
    }
  }
  
  public final GroundOverlayOptions positionFromBounds(LatLngBounds paramLatLngBounds)
  {
    if (zzarf == null) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Position has already been set using position: " + zzarf);
      zzari = paramLatLngBounds;
      return this;
    }
  }
  
  public final GroundOverlayOptions transparency(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Transparency must be in the range [0..1]");
      zzarj = paramFloat;
      return this;
    }
  }
  
  public final GroundOverlayOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzf.zza(this, paramParcel, paramInt);
      return;
    }
    zze.zza(this, paramParcel, paramInt);
  }
  
  public final GroundOverlayOptions zIndex(float paramFloat)
  {
    zzarb = paramFloat;
    return this;
  }
  
  final IBinder zzqH()
  {
    return zzare.zzqe().asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */