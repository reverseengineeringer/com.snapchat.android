package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@zzgi
public final class zzx
  implements SafeParcelable
{
  public static final zzy CREATOR = new zzy();
  public final int versionCode;
  public final boolean zzml;
  public final boolean zzmy;
  
  zzx(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = paramInt;
    zzml = paramBoolean1;
    zzmy = paramBoolean2;
  }
  
  public zzx(boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = 1;
    zzml = paramBoolean1;
    zzmy = paramBoolean2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzy.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */