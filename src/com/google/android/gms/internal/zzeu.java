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
public final class zzeu
  extends zzg<zzew>
{
  private static final zzeu zzuL = new zzeu();
  
  private zzeu()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public static zzev zzb(Activity paramActivity)
  {
    try
    {
      if (zzc(paramActivity))
      {
        zzhx.zzY("Using AdOverlay from the client jar.");
        return new zzel(paramActivity);
      }
      paramActivity = zzuL.zzd(paramActivity);
      return paramActivity;
    }
    catch (zza paramActivity)
    {
      zzhx.zzac(paramActivity.getMessage());
    }
    return null;
  }
  
  private static boolean zzc(Activity paramActivity)
  {
    paramActivity = paramActivity.getIntent();
    if (!paramActivity.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
      throw new zza("Ad overlay requires the useClientJar flag in intent extras.");
    }
    return paramActivity.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
  }
  
  private zzev zzd(Activity paramActivity)
  {
    try
    {
      zzd localzzd = zze.zzn(paramActivity);
      paramActivity = zzev.zza.zzv(((zzew)zzS(paramActivity)).zzb(localzzd));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      zzhx.zzd("Could not create remote AdOverlay.", paramActivity);
      return null;
    }
    catch (zzg.zza paramActivity)
    {
      zzhx.zzd("Could not create remote AdOverlay.", paramActivity);
    }
    return null;
  }
  
  protected final zzew zzu(IBinder paramIBinder)
  {
    return zzew.zza.zzw(paramIBinder);
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
 * Qualified Name:     com.google.android.gms.internal.zzeu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */