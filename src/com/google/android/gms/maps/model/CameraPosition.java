package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.internal.zzaa;

public final class CameraPosition
  implements SafeParcelable
{
  public static final zza CREATOR = new zza();
  public final float bearing;
  public final LatLng target;
  public final float tilt;
  public final float zoom;
  private final int zzFG;
  
  CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    zzx.zzb(paramLatLng, "null camera target");
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Tilt needs to be between 0 and 90 inclusive");
      zzFG = paramInt;
      target = paramLatLng;
      zoom = paramFloat1;
      tilt = (paramFloat2 + 0.0F);
      paramFloat1 = paramFloat3;
      if (paramFloat3 <= 0.0D) {
        paramFloat1 = paramFloat3 % 360.0F + 360.0F;
      }
      bearing = (paramFloat1 % 360.0F);
      return;
    }
  }
  
  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  public static Builder builder(CameraPosition paramCameraPosition)
  {
    return new Builder(paramCameraPosition);
  }
  
  public static CameraPosition createFromAttributes(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    paramContext = paramContext.getResources().obtainAttributes(paramAttributeSet, R.styleable.MapAttrs);
    if (paramContext.hasValue(R.styleable.MapAttrs_cameraTargetLat)) {}
    for (float f1 = paramContext.getFloat(R.styleable.MapAttrs_cameraTargetLat, 0.0F);; f1 = 0.0F)
    {
      if (paramContext.hasValue(R.styleable.MapAttrs_cameraTargetLng)) {}
      for (float f2 = paramContext.getFloat(R.styleable.MapAttrs_cameraTargetLng, 0.0F);; f2 = 0.0F)
      {
        paramAttributeSet = new LatLng(f1, f2);
        Builder localBuilder = builder();
        localBuilder.target(paramAttributeSet);
        if (paramContext.hasValue(R.styleable.MapAttrs_cameraZoom)) {
          localBuilder.zoom(paramContext.getFloat(R.styleable.MapAttrs_cameraZoom, 0.0F));
        }
        if (paramContext.hasValue(R.styleable.MapAttrs_cameraBearing)) {
          localBuilder.bearing(paramContext.getFloat(R.styleable.MapAttrs_cameraBearing, 0.0F));
        }
        if (paramContext.hasValue(R.styleable.MapAttrs_cameraTilt)) {
          localBuilder.tilt(paramContext.getFloat(R.styleable.MapAttrs_cameraTilt, 0.0F));
        }
        return localBuilder.build();
      }
    }
  }
  
  public static final CameraPosition fromLatLngZoom(LatLng paramLatLng, float paramFloat)
  {
    return new CameraPosition(paramLatLng, paramFloat, 0.0F, 0.0F);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof CameraPosition)) {
        return false;
      }
      paramObject = (CameraPosition)paramObject;
    } while ((target.equals(target)) && (Float.floatToIntBits(zoom) == Float.floatToIntBits(zoom)) && (Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { target, Float.valueOf(zoom), Float.valueOf(tilt), Float.valueOf(bearing) });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("target", target).zza("zoom", Float.valueOf(zoom)).zza("tilt", Float.valueOf(tilt)).zza("bearing", Float.valueOf(bearing)).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzb.zza(this, paramParcel, paramInt);
      return;
    }
    zza.zza(this, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    private LatLng zzaqR;
    private float zzaqS;
    private float zzaqT;
    private float zzaqU;
    
    public Builder() {}
    
    public Builder(CameraPosition paramCameraPosition)
    {
      zzaqR = target;
      zzaqS = zoom;
      zzaqT = tilt;
      zzaqU = bearing;
    }
    
    public final Builder bearing(float paramFloat)
    {
      zzaqU = paramFloat;
      return this;
    }
    
    public final CameraPosition build()
    {
      return new CameraPosition(zzaqR, zzaqS, zzaqT, zzaqU);
    }
    
    public final Builder target(LatLng paramLatLng)
    {
      zzaqR = paramLatLng;
      return this;
    }
    
    public final Builder tilt(float paramFloat)
    {
      zzaqT = paramFloat;
      return this;
    }
    
    public final Builder zoom(float paramFloat)
    {
      zzaqS = paramFloat;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */