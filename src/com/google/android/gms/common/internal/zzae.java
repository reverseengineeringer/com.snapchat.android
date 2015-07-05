package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzae
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzae> CREATOR = new zzaf();
  final int zzFG;
  final IBinder zzPn;
  private final Scope[] zzPo;
  private final int zzQv;
  private final Bundle zzQw;
  private final String zzQx;
  
  zzae(int paramInt1, int paramInt2, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, String paramString)
  {
    zzFG = paramInt1;
    zzQv = paramInt2;
    zzPn = paramIBinder;
    zzPo = paramArrayOfScope;
    zzQw = paramBundle;
    zzQx = paramString;
  }
  
  public zzae(zzq paramzzq, Scope[] paramArrayOfScope, String paramString, Bundle paramBundle) {}
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCallingPackage()
  {
    return zzQx;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzaf.zza(this, paramParcel, paramInt);
  }
  
  public int zzjr()
  {
    return zzQv;
  }
  
  public Scope[] zzjs()
  {
    return zzPo;
  }
  
  public Bundle zzjt()
  {
    return zzQw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */