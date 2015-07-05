package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class zza
  extends zzq.zza
{
  private Context mContext;
  private Account zzFN;
  int zzPm;
  
  public static Account zzc(zzq paramzzq)
  {
    Account localAccount = null;
    long l;
    if (paramzzq != null) {
      l = Binder.clearCallingIdentity();
    }
    try
    {
      localAccount = paramzzq.getAccount();
      Binder.restoreCallingIdentity(l);
      return localAccount;
    }
    catch (RemoteException paramzzq)
    {
      paramzzq = paramzzq;
      Binder.restoreCallingIdentity(l);
      return null;
    }
    finally
    {
      paramzzq = finally;
      Binder.restoreCallingIdentity(l);
      throw paramzzq;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof zza)) {
      return false;
    }
    return zzFN.equals(zzFN);
  }
  
  public Account getAccount()
  {
    int i = Binder.getCallingUid();
    if (i == zzPm) {
      return zzFN;
    }
    if (GooglePlayServicesUtil.zzd(mContext, i))
    {
      zzPm = i;
      return zzFN;
    }
    throw new SecurityException("Caller is not GooglePlayServices");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */