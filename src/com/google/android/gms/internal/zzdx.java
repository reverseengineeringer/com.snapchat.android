package com.google.android.gms.internal;

import android.os.RemoteException;
import bw;
import bx;
import by;
import bz;
import ca;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

@zzgi
public final class zzdx<NETWORK_EXTRAS extends ca, SERVER_PARAMETERS extends bz>
  extends zzds.zza
{
  private final bw<NETWORK_EXTRAS, SERVER_PARAMETERS> zzsT;
  private final NETWORK_EXTRAS zzsU;
  
  public zzdx(bw<NETWORK_EXTRAS, SERVER_PARAMETERS> parambw, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    zzsT = parambw;
    zzsU = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS zzb(String paramString1, int paramInt, String paramString2)
  {
    if (paramString1 != null) {
      try
      {
        localObject = new JSONObject(paramString1);
        paramString2 = new HashMap(((JSONObject)localObject).length());
        Iterator localIterator = ((JSONObject)localObject).keys();
        for (;;)
        {
          paramString1 = paramString2;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString1 = (String)localIterator.next();
          paramString2.put(paramString1, ((JSONObject)localObject).getString(paramString1));
        }
        paramString1 = new HashMap(0);
      }
      catch (Throwable paramString1)
      {
        zzhx.zzd("Could not get MediationServerParameters.", paramString1);
        throw new RemoteException();
      }
    }
    Object localObject = zzsT.b();
    paramString2 = null;
    if (localObject != null)
    {
      paramString2 = (bz)((Class)localObject).newInstance();
      paramString2.a(paramString1);
    }
    return paramString2;
  }
  
  public final void destroy() {}
  
  public final zzd getView()
  {
    if (!(zzsT instanceof bx))
    {
      zzhx.zzac("MediationAdapter is not a MediationBannerAdapter: " + zzsT.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      zzd localzzd = zze.zzn(((bx)zzsT).c());
      return localzzd;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void pause()
  {
    throw new RemoteException();
  }
  
  public final void resume()
  {
    throw new RemoteException();
  }
  
  public final void showInterstitial()
  {
    if (!(zzsT instanceof by))
    {
      zzhx.zzac("MediationAdapter is not a MediationInterstitialAdapter: " + zzsT.getClass().getCanonicalName());
      throw new RemoteException();
    }
    zzhx.zzY("Showing interstitial from adapter.");
  }
  
  public final void zza(zzd paramzzd, zzax paramzzax, String paramString, zzdt paramzzdt)
  {
    zza(paramzzd, paramzzax, paramString, null, paramzzdt);
  }
  
  public final void zza(zzd paramzzd, zzax paramzzax, String paramString1, String paramString2, zzdt paramzzdt)
  {
    if (!(zzsT instanceof by))
    {
      zzhx.zzac("MediationAdapter is not a MediationInterstitialAdapter: " + zzsT.getClass().getCanonicalName());
      throw new RemoteException();
    }
    zzhx.zzY("Requesting interstitial ad from adapter.");
    try
    {
      new zzdy(paramzzdt);
      zze.zzf(paramzzd);
      zzb(paramString1, zzoP, paramString2);
      zzdz.zzd(paramzzax);
      return;
    }
    catch (Throwable paramzzd)
    {
      zzhx.zzd("Could not request interstitial ad from adapter.", paramzzd);
      throw new RemoteException();
    }
  }
  
  public final void zza(zzd paramzzd, zzba paramzzba, zzax paramzzax, String paramString, zzdt paramzzdt)
  {
    zza(paramzzd, paramzzba, paramzzax, paramString, null, paramzzdt);
  }
  
  public final void zza(zzd paramzzd, zzba paramzzba, zzax paramzzax, String paramString1, String paramString2, zzdt paramzzdt)
  {
    if (!(zzsT instanceof bx))
    {
      zzhx.zzac("MediationAdapter is not a MediationBannerAdapter: " + zzsT.getClass().getCanonicalName());
      throw new RemoteException();
    }
    zzhx.zzY("Requesting banner ad from adapter.");
    try
    {
      new zzdy(paramzzdt);
      zze.zzf(paramzzd);
      zzb(paramString1, zzoP, paramString2);
      zzdz.zzb(paramzzba);
      zzdz.zzd(paramzzax);
      return;
    }
    catch (Throwable paramzzd)
    {
      zzhx.zzd("Could not request banner ad from adapter.", paramzzd);
      throw new RemoteException();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */