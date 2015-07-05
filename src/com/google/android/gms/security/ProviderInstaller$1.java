package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;

final class ProviderInstaller$1
  extends AsyncTask<Void, Void, Integer>
{
  ProviderInstaller$1(Context paramContext, ProviderInstaller.ProviderInstallListener paramProviderInstallListener) {}
  
  protected final Integer zzb(Void... paramVarArgs)
  {
    try
    {
      ProviderInstaller.installIfNeeded(zznK);
      return Integer.valueOf(0);
    }
    catch (GooglePlayServicesRepairableException paramVarArgs)
    {
      return Integer.valueOf(paramVarArgs.getConnectionStatusCode());
    }
    catch (GooglePlayServicesNotAvailableException paramVarArgs) {}
    return Integer.valueOf(errorCode);
  }
  
  protected final void zze(Integer paramInteger)
  {
    if (paramInteger.intValue() == 0)
    {
      zzawN.onProviderInstalled();
      return;
    }
    Intent localIntent = GooglePlayServicesUtil.zzan(paramInteger.intValue());
    zzawN.onProviderInstallFailed(paramInteger.intValue(), localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.security.ProviderInstaller.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */