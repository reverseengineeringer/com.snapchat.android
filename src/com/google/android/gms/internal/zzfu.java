package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@zzgi
public final class zzfu
  extends zzg<zzfq>
{
  private static final zzfu zzvw = new zzfu();
  
  private zzfu()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  private static boolean zzc(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
      throw new zza("InAppPurchaseManager requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
  }
  
  public static zzfp zze(Activity paramActivity)
  {
    try
    {
      if (zzc(paramActivity))
      {
        zzhx.zzY("Using AdOverlay from the client jar.");
        return new zzff(paramActivity);
      }
      paramActivity = zzvw.zzf(paramActivity);
      return paramActivity;
    }
    catch (zza paramActivity)
    {
      zzhx.zzac(paramActivity.getMessage());
    }
    return null;
  }
  
  private zzfp zzf(Activity paramActivity)
  {
    try
    {
      zzd localzzd = zze.zzn(paramActivity);
      paramActivity = zzfp.zza.zzA(((zzfq)zzS(paramActivity)).zzc(localzzd));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      zzhx.zzd("Could not create remote InAppPurchaseManager.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      zzhx.zzd("Could not create remote InAppPurchaseManager.", paramActivity);
    }
    return null;
  }
  
  protected final zzfq zzE(IBinder paramIBinder)
  {
    return zzfq.zza.zzB(paramIBinder);
  }
  
  static final class zza
    extends Exception
  {
    public zza(String paramString)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */