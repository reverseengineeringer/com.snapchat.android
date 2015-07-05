package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public class zzox
  implements SafeParcelable
{
  public static final zzoy CREATOR = new zzoy();
  public final String packageName;
  public final int uid;
  private final int zzFG;
  
  zzox(int paramInt1, int paramInt2, String paramString)
  {
    zzFG = paramInt1;
    uid = paramInt2;
    packageName = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof zzox)) {}
    do
    {
      return false;
      paramObject = (zzox)paramObject;
    } while ((uid != uid) || (!zzw.equal(packageName, packageName)));
    return true;
  }
  
  int getVersionCode()
  {
    return zzFG;
  }
  
  public int hashCode()
  {
    return uid;
  }
  
  public String toString()
  {
    return String.format("%d:%s", new Object[] { Integer.valueOf(uid), packageName });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzoy.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */