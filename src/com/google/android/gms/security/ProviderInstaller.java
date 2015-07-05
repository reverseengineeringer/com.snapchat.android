package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import java.lang.reflect.Method;

public class ProviderInstaller
{
  public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
  private static Method zzawM = null;
  private static final Object zzmz = new Object();
  
  public static void installIfNeeded(Context arg0)
  {
    zzx.zzb(???, "Context must not be null");
    GooglePlayServicesUtil.zzI(???);
    Context localContext = GooglePlayServicesUtil.getRemoteContext(???);
    if (localContext == null) {
      throw new GooglePlayServicesNotAvailableException(8);
    }
    synchronized (zzmz)
    {
      try
      {
        if (zzawM == null) {
          zzai(localContext);
        }
        zzawM.invoke(null, new Object[] { localContext });
        return;
      }
      catch (Exception localException)
      {
        new StringBuilder("Failed to install provider: ").append(localException.getMessage());
        throw new GooglePlayServicesNotAvailableException(8);
      }
    }
  }
  
  public static void installIfNeededAsync(Context paramContext, final ProviderInstallListener paramProviderInstallListener)
  {
    zzx.zzb(paramContext, "Context must not be null");
    zzx.zzb(paramProviderInstallListener, "Listener must not be null");
    zzx.zzbd("Must be called on the UI thread");
    new AsyncTask()
    {
      protected final Integer zzb(Void... paramAnonymousVarArgs)
      {
        try
        {
          ProviderInstaller.installIfNeeded(zznK);
          return Integer.valueOf(0);
        }
        catch (GooglePlayServicesRepairableException paramAnonymousVarArgs)
        {
          return Integer.valueOf(paramAnonymousVarArgs.getConnectionStatusCode());
        }
        catch (GooglePlayServicesNotAvailableException paramAnonymousVarArgs) {}
        return Integer.valueOf(errorCode);
      }
      
      protected final void zze(Integer paramAnonymousInteger)
      {
        if (paramAnonymousInteger.intValue() == 0)
        {
          paramProviderInstallListener.onProviderInstalled();
          return;
        }
        Intent localIntent = GooglePlayServicesUtil.zzan(paramAnonymousInteger.intValue());
        paramProviderInstallListener.onProviderInstallFailed(paramAnonymousInteger.intValue(), localIntent);
      }
    }.execute(new Void[0]);
  }
  
  private static void zzai(Context paramContext)
  {
    zzawM = paramContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[] { Context.class });
  }
  
  public static abstract interface ProviderInstallListener
  {
    public abstract void onProviderInstallFailed(int paramInt, Intent paramIntent);
    
    public abstract void onProviderInstalled();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.security.ProviderInstaller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */