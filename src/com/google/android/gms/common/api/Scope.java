package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public final class Scope
  implements SafeParcelable
{
  public static final Parcelable.Creator<Scope> CREATOR = new zzf();
  final int zzFG;
  private final String zzNn;
  
  Scope(int paramInt, String paramString)
  {
    zzx.zzb(paramString, "scopeUri must not be null or empty");
    zzFG = paramInt;
    zzNn = paramString;
  }
  
  public Scope(String paramString)
  {
    this(1, paramString);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Scope)) {
      return false;
    }
    return zzNn.equals(zzNn);
  }
  
  public final int hashCode()
  {
    return zzNn.hashCode();
  }
  
  public final String toString()
  {
    return zzNn;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzf.zza(this, paramParcel, paramInt);
  }
  
  public final String zzio()
  {
    return zzNn;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Scope
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */