package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zzd.zza;
import com.google.android.gms.maps.internal.zzaa;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final zzk CREATOR = new zzk();
  private float mAlpha = 1.0F;
  private final int zzFG;
  private String zzSy;
  private LatLng zzaqx;
  private boolean zzarc = true;
  private float zzark = 0.5F;
  private float zzarl = 1.0F;
  private String zzart;
  private BitmapDescriptor zzaru;
  private boolean zzarv;
  private boolean zzarw = false;
  private float zzarx = 0.0F;
  private float zzary = 0.5F;
  private float zzarz = 0.0F;
  
  public MarkerOptions()
  {
    zzFG = 1;
  }
  
  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    zzFG = paramInt;
    zzaqx = paramLatLng;
    zzSy = paramString1;
    zzart = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new BitmapDescriptor(zzd.zza.zzau(paramIBinder)))
    {
      zzaru = paramLatLng;
      zzark = paramFloat1;
      zzarl = paramFloat2;
      zzarv = paramBoolean1;
      zzarc = paramBoolean2;
      zzarw = paramBoolean3;
      zzarx = paramFloat3;
      zzary = paramFloat4;
      zzarz = paramFloat5;
      mAlpha = paramFloat6;
      return;
    }
  }
  
  public final MarkerOptions alpha(float paramFloat)
  {
    mAlpha = paramFloat;
    return this;
  }
  
  public final MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    zzark = paramFloat1;
    zzarl = paramFloat2;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final MarkerOptions draggable(boolean paramBoolean)
  {
    zzarv = paramBoolean;
    return this;
  }
  
  public final MarkerOptions flat(boolean paramBoolean)
  {
    zzarw = paramBoolean;
    return this;
  }
  
  public final float getAlpha()
  {
    return mAlpha;
  }
  
  public final float getAnchorU()
  {
    return zzark;
  }
  
  public final float getAnchorV()
  {
    return zzarl;
  }
  
  public final BitmapDescriptor getIcon()
  {
    return zzaru;
  }
  
  public final float getInfoWindowAnchorU()
  {
    return zzary;
  }
  
  public final float getInfoWindowAnchorV()
  {
    return zzarz;
  }
  
  public final LatLng getPosition()
  {
    return zzaqx;
  }
  
  public final float getRotation()
  {
    return zzarx;
  }
  
  public final String getSnippet()
  {
    return zzart;
  }
  
  public final String getTitle()
  {
    return zzSy;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    zzaru = paramBitmapDescriptor;
    return this;
  }
  
  public final MarkerOptions infoWindowAnchor(float paramFloat1, float paramFloat2)
  {
    zzary = paramFloat1;
    zzarz = paramFloat2;
    return this;
  }
  
  public final boolean isDraggable()
  {
    return zzarv;
  }
  
  public final boolean isFlat()
  {
    return zzarw;
  }
  
  public final boolean isVisible()
  {
    return zzarc;
  }
  
  public final MarkerOptions position(LatLng paramLatLng)
  {
    zzaqx = paramLatLng;
    return this;
  }
  
  public final MarkerOptions rotation(float paramFloat)
  {
    zzarx = paramFloat;
    return this;
  }
  
  public final MarkerOptions snippet(String paramString)
  {
    zzart = paramString;
    return this;
  }
  
  public final MarkerOptions title(String paramString)
  {
    zzSy = paramString;
    return this;
  }
  
  public final MarkerOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzl.zza(this, paramParcel, paramInt);
      return;
    }
    zzk.zza(this, paramParcel, paramInt);
  }
  
  final IBinder zzqI()
  {
    if (zzaru == null) {
      return null;
    }
    return zzaru.zzqe().asBinder();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */