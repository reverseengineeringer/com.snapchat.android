package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;

public class StreetViewPanoramaCamera
  implements SafeParcelable
{
  public static final zzq CREATOR = new zzq();
  public final float bearing;
  public final float tilt;
  public final float zoom;
  private final int zzFG;
  private StreetViewPanoramaOrientation zzarF;
  
  public StreetViewPanoramaCamera(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramFloat1, paramFloat2, paramFloat3);
  }
  
  StreetViewPanoramaCamera(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    boolean bool;
    if ((-90.0F <= paramFloat2) && (paramFloat2 <= 90.0F))
    {
      bool = true;
      zzx.zzb(bool, "Tilt needs to be between -90 and 90 inclusive");
      zzFG = paramInt;
      float f = paramFloat1;
      if (paramFloat1 <= 0.0D) {
        f = 0.0F;
      }
      zoom = f;
      tilt = (paramFloat2 + 0.0F);
      if (paramFloat3 > 0.0D) {
        break label114;
      }
    }
    label114:
    for (paramFloat1 = paramFloat3 % 360.0F + 360.0F;; paramFloat1 = paramFloat3)
    {
      bearing = (paramFloat1 % 360.0F);
      zzarF = new StreetViewPanoramaOrientation.Builder().tilt(paramFloat2).bearing(paramFloat3).build();
      return;
      bool = false;
      break;
    }
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  public static Builder builder(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
  {
    return new Builder(paramStreetViewPanoramaCamera);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof StreetViewPanoramaCamera)) {
        return false;
      }
      paramObject = (StreetViewPanoramaCamera)paramObject;
    } while ((Float.floatToIntBits(zoom) == Float.floatToIntBits(zoom)) && (Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  public StreetViewPanoramaOrientation getOrientation()
  {
    return zzarF;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Float.valueOf(zoom), Float.valueOf(tilt), Float.valueOf(bearing) });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("zoom", Float.valueOf(zoom)).zza("tilt", Float.valueOf(tilt)).zza("bearing", Float.valueOf(bearing)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzq.zza(this, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    public float bearing;
    public float tilt;
    public float zoom;
    
    public Builder() {}
    
    public Builder(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
    {
      zoom = zoom;
      bearing = bearing;
      tilt = tilt;
    }
    
    public final Builder bearing(float paramFloat)
    {
      bearing = paramFloat;
      return this;
    }
    
    public final StreetViewPanoramaCamera build()
    {
      return new StreetViewPanoramaCamera(zoom, tilt, bearing);
    }
    
    public final Builder orientation(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    {
      tilt = tilt;
      bearing = bearing;
      return this;
    }
    
    public final Builder tilt(float paramFloat)
    {
      tilt = paramFloat;
      return this;
    }
    
    public final Builder zoom(float paramFloat)
    {
      zoom = paramFloat;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaCamera
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */