package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.zzaa;

public final class LatLng
  implements SafeParcelable
{
  public static final zzi CREATOR = new zzi();
  public final double latitude;
  public final double longitude;
  private final int zzFG;
  
  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }
  
  LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    zzFG = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D)) {}
    for (longitude = paramDouble2;; longitude = (((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D))
    {
      latitude = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
      return;
    }
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
      if (!(paramObject instanceof LatLng)) {
        return false;
      }
      paramObject = (LatLng)paramObject;
    } while ((Double.doubleToLongBits(latitude) == Double.doubleToLongBits(latitude)) && (Double.doubleToLongBits(longitude) == Double.doubleToLongBits(longitude)));
    return false;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    long l = Double.doubleToLongBits(latitude);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(longitude);
    return (i + 31) * 31 + (int)(l ^ l >>> 32);
  }
  
  public final String toString()
  {
    return "lat/lng: (" + latitude + "," + longitude + ")";
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzj.zza(this, paramParcel, paramInt);
      return;
    }
    zzi.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */