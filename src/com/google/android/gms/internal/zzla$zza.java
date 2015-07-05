package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class zzla$zza
  implements SafeParcelable
{
  public static final zzlc CREATOR = new zzlc();
  final int versionCode;
  final String zzQN;
  final int zzQO;
  
  zzla$zza(int paramInt1, String paramString, int paramInt2)
  {
    versionCode = paramInt1;
    zzQN = paramString;
    zzQO = paramInt2;
  }
  
  zzla$zza(String paramString, int paramInt)
  {
    versionCode = 1;
    zzQN = paramString;
    zzQO = paramInt;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzlc.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzla.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */