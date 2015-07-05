package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class zzi
  implements SafeParcelable
{
  public static final Parcelable.Creator<zzi> CREATOR = new zzj();
  final int version;
  int zzPA;
  String zzPB;
  IBinder zzPC;
  Scope[] zzPD;
  Bundle zzPE;
  Account zzPF;
  final int zzPz;
  
  public zzi(int paramInt)
  {
    version = 2;
    zzPA = 7095000;
    zzPz = paramInt;
  }
  
  zzi(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount)
  {
    version = paramInt1;
    zzPz = paramInt2;
    zzPA = paramInt3;
    zzPB = paramString;
    if (paramInt1 < 2) {}
    for (zzPF = zzQ(paramIBinder);; zzPF = paramAccount)
    {
      zzPD = paramArrayOfScope;
      zzPE = paramBundle;
      return;
      zzPC = paramIBinder;
    }
  }
  
  private Account zzQ(IBinder paramIBinder)
  {
    Account localAccount = null;
    if (paramIBinder != null) {
      localAccount = zza.zzc(zzq.zza.zzR(paramIBinder));
    }
    return localAccount;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzj.zza(this, paramParcel, paramInt);
  }
  
  public zzi zza(Scope[] paramArrayOfScope)
  {
    zzPD = paramArrayOfScope;
    return this;
  }
  
  public zzi zzb(Account paramAccount)
  {
    zzPF = paramAccount;
    return this;
  }
  
  public zzi zzbg(String paramString)
  {
    zzPB = paramString;
    return this;
  }
  
  public zzi zzd(zzq paramzzq)
  {
    if (paramzzq != null) {
      zzPC = paramzzq.asBinder();
    }
    return this;
  }
  
  public zzi zzi(Bundle paramBundle)
  {
    zzPE = paramBundle;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */