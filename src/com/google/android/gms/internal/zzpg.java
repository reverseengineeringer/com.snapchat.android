package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

public class zzpg
  implements SafeParcelable
{
  public static final zzph CREATOR = new zzph();
  static final List<zzox> zzang = ;
  final String mTag;
  private final int zzFG;
  LocationRequest zzabx;
  boolean zzanh;
  boolean zzani;
  boolean zzanj;
  List<zzox> zzank;
  
  zzpg(int paramInt, LocationRequest paramLocationRequest, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, List<zzox> paramList, String paramString)
  {
    zzFG = paramInt;
    zzabx = paramLocationRequest;
    zzanh = paramBoolean1;
    zzani = paramBoolean2;
    zzanj = paramBoolean3;
    zzank = paramList;
    mTag = paramString;
  }
  
  private zzpg(String paramString, LocationRequest paramLocationRequest)
  {
    this(1, paramLocationRequest, false, true, true, zzang, paramString);
  }
  
  public static zzpg zza(String paramString, LocationRequest paramLocationRequest)
  {
    return new zzpg(paramString, paramLocationRequest);
  }
  
  public static zzpg zzb(LocationRequest paramLocationRequest)
  {
    return zza(null, paramLocationRequest);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzpg)) {}
    do
    {
      return false;
      paramObject = (zzpg)paramObject;
    } while ((!zzw.equal(zzabx, zzabx)) || (zzanh != zzanh) || (zzani != zzani) || (zzanj != zzanj) || (!zzw.equal(zzank, zzank)));
    return true;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return zzabx.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(zzabx.toString());
    localStringBuilder.append(" requestNlpDebugInfo=");
    localStringBuilder.append(zzanh);
    localStringBuilder.append(" restorePendingIntentListeners=");
    localStringBuilder.append(zzani);
    localStringBuilder.append(" triggerUpdate=");
    localStringBuilder.append(zzanj);
    localStringBuilder.append(" clients=");
    localStringBuilder.append(zzank);
    if (mTag != null)
    {
      localStringBuilder.append(" tag=");
      localStringBuilder.append(mTag);
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzph.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */