package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class zzqm$zza
  implements SafeParcelable
{
  public static final zzql CREATOR = new zzql();
  final int zzFG;
  private final String zzFQ;
  private final String zzSy;
  
  zzqm$zza(int paramInt, String paramString1, String paramString2)
  {
    zzFG = paramInt;
    zzSy = paramString1;
    zzFQ = paramString2;
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
      if (!(paramObject instanceof zza)) {
        return false;
      }
      paramObject = (zza)paramObject;
    } while ((zzw.equal(zzSy, zzSy)) && (zzw.equal(zzFQ, zzFQ)));
    return false;
  }
  
  public final String getTitle()
  {
    return zzSy;
  }
  
  public final String getUri()
  {
    return zzFQ;
  }
  
  public final int hashCode()
  {
    return zzw.hashCode(new Object[] { zzSy, zzFQ });
  }
  
  public final String toString()
  {
    return zzw.zzk(this).zza("title", zzSy).zza("uri", zzFQ).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzql.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzqm.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */