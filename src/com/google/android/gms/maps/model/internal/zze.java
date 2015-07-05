package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zze
  implements SafeParcelable
{
  public static final zzf CREATOR = new zzf();
  private final int zzFG;
  private zza zzarQ;
  
  public zze()
  {
    zzFG = 1;
  }
  
  zze(int paramInt, zza paramzza)
  {
    zzFG = paramInt;
    zzarQ = paramzza;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzf.zza(this, paramParcel, paramInt);
  }
  
  public final zza zzqM()
  {
    return zzarQ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */