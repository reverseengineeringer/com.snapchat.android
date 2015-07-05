package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class zzl
  implements SafeParcelable
{
  public static final zzm CREATOR = new zzm();
  private final int zzFG;
  int zzamw;
  int zzamx;
  long zzamy;
  
  public zzl(int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    zzFG = paramInt1;
    zzamw = paramInt2;
    zzamx = paramInt3;
    zzamy = paramLong;
  }
  
  private String zzfp(int paramInt)
  {
    switch (paramInt)
    {
    case 1: 
    default: 
      return "STATUS_UNKNOWN";
    case 0: 
      return "STATUS_SUCCESSFUL";
    case 2: 
      return "STATUS_TIMED_OUT_ON_SCAN";
    case 3: 
      return "STATUS_NO_INFO_IN_DATABASE";
    case 4: 
      return "STATUS_INVALID_SCAN";
    case 5: 
      return "STATUS_UNABLE_TO_QUERY_DATABASE";
    case 6: 
      return "STATUS_SCANS_DISABLED_IN_SETTINGS";
    case 7: 
      return "STATUS_LOCATION_DISABLED_IN_SETTINGS";
    }
    return "STATUS_IN_PROGRESS";
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzl)) {}
    do
    {
      return false;
      paramObject = (zzl)paramObject;
    } while ((zzamw != zzamw) || (zzamx != zzamx) || (zzamy != zzamy));
    return true;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(zzamw), Integer.valueOf(zzamx), Long.valueOf(zzamy) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationStatus[cell status: ").append(zzfp(zzamw));
    localStringBuilder.append(", wifi status: ").append(zzfp(zzamx));
    localStringBuilder.append(", elapsed realtime ns: ").append(zzamy);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzm.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */