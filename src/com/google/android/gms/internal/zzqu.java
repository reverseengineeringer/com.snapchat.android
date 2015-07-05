package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public class zzqu
  extends zzqt
  implements SafeParcelable
{
  public static final zzqv CREATOR = new zzqv();
  final int zzFG;
  private final String zzapn;
  
  zzqu(int paramInt, String paramString)
  {
    zzFG = paramInt;
    zzapn = paramString;
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
    if (!(paramObject instanceof zzqu)) {
      return false;
    }
    paramObject = (zzqu)paramObject;
    return zzapn.equals(zzapn);
  }
  
  public int hashCode()
  {
    return zzapn.hashCode();
  }
  
  public String toString()
  {
    return zzw.zzk(this).zza("testName", zzapn).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzqv.zza(this, paramParcel, paramInt);
  }
  
  public String zzqd()
  {
    return zzapn;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */