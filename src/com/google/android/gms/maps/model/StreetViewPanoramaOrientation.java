package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;

public class StreetViewPanoramaOrientation
  implements SafeParcelable
{
  public static final zzt CREATOR = new zzt();
  public final float bearing;
  public final float tilt;
  private final int zzFG;
  
  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2)
  {
    this(1, paramFloat1, paramFloat2);
  }
  
  StreetViewPanoramaOrientation(int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((-90.0F <= paramFloat1) && (paramFloat1 <= 90.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Tilt needs to be between -90 and 90 inclusive");
      zzFG = paramInt;
      tilt = (0.0F + paramFloat1);
      paramFloat1 = paramFloat2;
      if (paramFloat2 <= 0.0D) {
        paramFloat1 = paramFloat2 % 360.0F + 360.0F;
      }
      bearing = (paramFloat1 % 360.0F);
      return;
    }
  }
  
  public static Builder builder()
  {
    return new Builder();
  }
  
  public static Builder builder(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
  {
    return new Builder(paramStreetViewPanoramaOrientation);
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
      if (!(paramObject instanceof StreetViewPanoramaOrientation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaOrientation)paramObject;
    } while ((Float.floatToIntBits(tilt) == Float.floatToIntBits(tilt)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Float.valueOf(tilt), Float.valueOf(bearing) });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("tilt", Float.valueOf(tilt)).zza("bearing", Float.valueOf(bearing)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzt.zza(this, paramParcel, paramInt);
  }
  
  public static final class Builder
  {
    public float bearing;
    public float tilt;
    
    public Builder() {}
    
    public Builder(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
    {
      bearing = bearing;
      tilt = tilt;
    }
    
    public final Builder bearing(float paramFloat)
    {
      bearing = paramFloat;
      return this;
    }
    
    public final StreetViewPanoramaOrientation build()
    {
      return new StreetViewPanoramaOrientation(tilt, bearing);
    }
    
    public final Builder tilt(float paramFloat)
    {
      tilt = paramFloat;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaOrientation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */