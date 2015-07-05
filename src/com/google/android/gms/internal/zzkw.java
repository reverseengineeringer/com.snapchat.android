package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzkw
  implements SafeParcelable
{
  public static final zzkx CREATOR = new zzkx();
  final int zzFG;
  public final String zzQH;
  public final int zzQI;
  
  public zzkw(int paramInt1, String paramString, int paramInt2)
  {
    zzFG = paramInt1;
    zzQH = paramString;
    zzQI = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzkx.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */