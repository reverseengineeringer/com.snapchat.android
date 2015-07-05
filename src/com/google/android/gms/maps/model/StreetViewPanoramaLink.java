package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public class StreetViewPanoramaLink
  implements SafeParcelable
{
  public static final zzr CREATOR = new zzr();
  public final float bearing;
  public final String panoId;
  private final int zzFG;
  
  StreetViewPanoramaLink(int paramInt, String paramString, float paramFloat)
  {
    zzFG = paramInt;
    panoId = paramString;
    float f = paramFloat;
    if (paramFloat <= 0.0D) {
      f = paramFloat % 360.0F + 360.0F;
    }
    bearing = (f % 360.0F);
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
      if (!(paramObject instanceof StreetViewPanoramaLink)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLink)paramObject;
    } while ((panoId.equals(panoId)) && (Float.floatToIntBits(bearing) == Float.floatToIntBits(bearing)));
    return false;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { panoId, Float.valueOf(bearing) });
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("panoId", panoId).zza("bearing", Float.valueOf(bearing)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzr.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLink
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */