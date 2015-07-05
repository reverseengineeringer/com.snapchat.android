package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzy
  implements SafeParcelable
{
  public static final zzz CREATOR = new zzz();
  private final int versionCode;
  private final Point zzaqO;
  
  public zzy(int paramInt, Point paramPoint)
  {
    versionCode = paramInt;
    zzaqO = paramPoint;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof zzy)) {
      return false;
    }
    paramObject = (zzy)paramObject;
    return zzaqO.equals(zzaqO);
  }
  
  int getVersionCode()
  {
    return versionCode;
  }
  
  public int hashCode()
  {
    return zzaqO.hashCode();
  }
  
  public String toString()
  {
    return zzaqO.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzz.zza(this, paramParcel, paramInt);
  }
  
  public Point zzqE()
  {
    return zzaqO;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */