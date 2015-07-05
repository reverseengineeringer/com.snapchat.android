package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zzc
  implements SafeParcelable
{
  public static final zzd CREATOR = new zzd();
  private int type;
  private final int zzFG;
  private Bundle zzarO;
  
  zzc(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    zzFG = paramInt1;
    type = paramInt2;
    zzarO = paramBundle;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getType()
  {
    return type;
  }
  
  public final int getVersionCode()
  {
    return zzFG;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzd.zza(this, paramParcel, paramInt);
  }
  
  public final Bundle zzqL()
  {
    return zzarO;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */