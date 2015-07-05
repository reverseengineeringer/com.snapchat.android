package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

@zzgi
public class zzaw
  extends zzg<zzbj>
{
  public zzaw()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  private zzbi zzb(Context paramContext, zzba paramzzba, String paramString, zzdq paramzzdq)
  {
    try
    {
      zzd localzzd = zze.zzn(paramContext);
      paramContext = zzbi.zza.zzg(((zzbj)zzS(paramContext)).zza(localzzd, paramzzba, paramString, paramzzdq, 7095000));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      zzhx.zzd("Could not create remote AdManager.", paramContext);
      return null;
    }
    catch (zzg.zza paramContext)
    {
      zzhx.zzd("Could not create remote AdManager.", paramContext);
    }
    return null;
  }
  
  public zzbi zza(Context paramContext, zzba paramzzba, String paramString, zzdq paramzzdq)
  {
    Object localObject;
    if (zzbe.zzbD().zzA(paramContext))
    {
      zzbi localzzbi = zzb(paramContext, paramzzba, paramString, paramzzdq);
      localObject = localzzbi;
      if (localzzbi != null) {}
    }
    else
    {
      zzhx.zzY("Using AdManager from the client jar.");
      localObject = new zzt(paramContext, paramzzba, paramString, paramzzdq, new zzhy(7095000, 7095000, true));
    }
    return (zzbi)localObject;
  }
  
  protected zzbj zzc(IBinder paramIBinder)
  {
    return zzbj.zza.zzh(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */