package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;

public final class CircleOptions
  implements SafeParcelable
{
  public static final zzc CREATOR = new zzc();
  private final int zzFG;
  private LatLng zzaqW = null;
  private double zzaqX = 0.0D;
  private float zzaqY = 10.0F;
  private int zzaqZ = -16777216;
  private int zzara = 0;
  private float zzarb = 0.0F;
  private boolean zzarc = true;
  
  public CircleOptions()
  {
    zzFG = 1;
  }
  
  CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    zzFG = paramInt1;
    zzaqW = paramLatLng;
    zzaqX = paramDouble;
    zzaqY = paramFloat1;
    zzaqZ = paramInt2;
    zzara = paramInt3;
    zzarb = paramFloat2;
    zzarc = paramBoolean;
  }
  
  public final CircleOptions center(LatLng paramLatLng)
  {
    zzaqW = paramLatLng;
    return this;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final CircleOptions fillColor(int paramInt)
  {
    zzara = paramInt;
    return this;
  }
  
  public final LatLng getCenter()
  {
    return zzaqW;
  }
  
  public final int getFillColor()
  {
    return zzara;
  }
  
  public final double getRadius()
  {
    return zzaqX;
  }
  
  public final int getStrokeColor()
  {
    return zzaqZ;
  }
  
  public final float getStrokeWidth()
  {
    return zzaqY;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final float getZIndex()
  {
    return zzarb;
  }
  
  public final boolean isVisible()
  {
    return zzarc;
  }
  
  public final CircleOptions radius(double paramDouble)
  {
    zzaqX = paramDouble;
    return this;
  }
  
  public final CircleOptions strokeColor(int paramInt)
  {
    zzaqZ = paramInt;
    return this;
  }
  
  public final CircleOptions strokeWidth(float paramFloat)
  {
    zzaqY = paramFloat;
    return this;
  }
  
  public final CircleOptions visible(boolean paramBoolean)
  {
    zzarc = paramBoolean;
    return this;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzd.zza(this, paramParcel, paramInt);
      return;
    }
    zzc.zza(this, paramParcel, paramInt);
  }
  
  public final CircleOptions zIndex(float paramFloat)
  {
    zzarb = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */