package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zzp
  implements SafeParcelable
{
  public static final zzq CREATOR = new zzq();
  private final int zzFG;
  private zza zzarR;
  
  public zzp()
  {
    zzFG = 1;
  }
  
  zzp(int paramInt, zza paramzza)
  {
    zzFG = paramInt;
    zzarR = paramzza;
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
    zzq.zza(this, paramParcel, paramInt);
  }
  
  public final zza zzqO()
  {
    return zzarR;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */