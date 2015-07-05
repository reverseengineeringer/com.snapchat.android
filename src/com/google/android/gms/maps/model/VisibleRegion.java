package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.maps.internal.zzaa;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final zzy CREATOR = new zzy();
  public final LatLng farLeft;
  public final LatLng farRight;
  public final LatLngBounds latLngBounds;
  public final LatLng nearLeft;
  public final LatLng nearRight;
  private final int zzFG;
  
  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    zzFG = paramInt;
    nearLeft = paramLatLng1;
    nearRight = paramLatLng2;
    farLeft = paramLatLng3;
    farRight = paramLatLng4;
    latLngBounds = paramLatLngBounds;
  }
  
  public VisibleRegion(LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    this(1, paramLatLng1, paramLatLng2, paramLatLng3, paramLatLng4, paramLatLngBounds);
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
      if (!(paramObject instanceof VisibleRegion)) {
        return false;
      }
      paramObject = (VisibleRegion)paramObject;
    } while ((nearLeft.equals(nearLeft)) && (nearRight.equals(nearRight)) && (farLeft.equals(farLeft)) && (farRight.equals(farRight)) && (latLngBounds.equals(latLngBounds)));
    return false;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { nearLeft, nearRight, farLeft, farRight, latLngBounds });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("nearLeft", nearLeft).zza("nearRight", nearRight).zza("farLeft", farLeft).zza("farRight", farRight).zza("latLngBounds", latLngBounds).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (zzaa.zzqF())
    {
      zzz.zza(this, paramParcel, paramInt);
      return;
    }
    zzy.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */