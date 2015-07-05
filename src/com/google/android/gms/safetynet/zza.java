package com.google.android.gms.safetynet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zza
  implements SafeParcelable
{
  public static final Parcelable.Creator<zza> CREATOR = new zzb();
  public final int zzFG;
  private String zzawF;
  
  zza(int paramInt, String paramString)
  {
    zzFG = paramInt;
    zzawF = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getJwsResult()
  {
    return zzawF;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzb.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.safetynet.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */