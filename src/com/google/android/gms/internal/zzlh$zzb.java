package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzlh$zzb
  implements SafeParcelable
{
  public static final zzlg CREATOR = new zzlg();
  final int versionCode;
  final zzld.zza<?, ?> zzRd;
  final String zzfv;
  
  zzlh$zzb(int paramInt, String paramString, zzld.zza<?, ?> paramzza)
  {
    versionCode = paramInt;
    zzfv = paramString;
    zzRd = paramzza;
  }
  
  zzlh$zzb(String paramString, zzld.zza<?, ?> paramzza)
  {
    versionCode = 1;
    zzfv = paramString;
    zzRd = paramzza;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzlg.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzlh.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */