package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Set;

public class zzc
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzc> CREATOR = new zzd();
  final int zzFG;
  final IBinder zzPn;
  final Scope[] zzPo;
  
  zzc(int paramInt, IBinder paramIBinder, Scope[] paramArrayOfScope)
  {
    zzFG = paramInt;
    zzPn = paramIBinder;
    zzPo = paramArrayOfScope;
  }
  
  public zzc(zzq paramzzq, Set<Scope> paramSet)
  {
    this(1, paramzzq.asBinder(), (Scope[])paramSet.toArray(new Scope[paramSet.size()]));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzd.zza(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */