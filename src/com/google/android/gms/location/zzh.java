package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class zzh
  implements SafeParcelable
{
  public static final zzi CREATOR = new zzi();
  static final List<Location> zzamk = ;
  private final int zzFG;
  List<Location> zzaml;
  
  zzh(int paramInt, List<Location> paramList)
  {
    zzFG = paramInt;
    zzaml = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzh)) {
      return false;
    }
    paramObject = (zzh)paramObject;
    if (zzaml.size() != zzaml.size()) {
      return false;
    }
    paramObject = zzaml.iterator();
    Iterator localIterator = zzaml.iterator();
    while (((Iterator)paramObject).hasNext())
    {
      Location localLocation1 = (Location)localIterator.next();
      Location localLocation2 = (Location)((Iterator)paramObject).next();
      if (localLocation1.getTime() != localLocation2.getTime()) {
        return false;
      }
    }
    return true;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    Iterator localIterator = zzaml.iterator();
    long l;
    for (int i = 17; localIterator.hasNext(); i = (int)(l ^ l >>> 32) + i * 31) {
      l = ((Location)localIterator.next()).getTime();
    }
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LocationResult[success: ").append(zzpr());
    localStringBuilder.append(", locations: ").append(zzaml);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzi.zza(this, paramParcel, paramInt);
  }
  
  public boolean zzpr()
  {
    return !zzaml.isEmpty();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */