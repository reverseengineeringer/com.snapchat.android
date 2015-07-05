package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.purchase.InAppPurchaseActivity;
import com.google.android.gms.analytics.GoogleAnalytics;

@zzgi
public class zzz
  extends zzbm.zza
  implements zzre.zza, zztb.zza
{
  private static zzz zzmA;
  private static final Object zzmz = new Object();
  private final Context mContext;
  zzta zzmB;
  String zzmC;
  String zzmD;
  private boolean zzmE;
  
  zzz(Context paramContext)
  {
    mContext = paramContext;
    zzmE = false;
  }
  
  public static zzz zzj(Context paramContext)
  {
    synchronized (zzmz)
    {
      if (zzmA == null) {
        zzmA = new zzz(paramContext.getApplicationContext());
      }
      paramContext = zzmA;
      return paramContext;
    }
  }
  
  public String getClientId()
  {
    return GoogleAnalytics.getInstance(mContext).getClientId();
  }
  
  public boolean isInitialized()
  {
    synchronized (zzmz)
    {
      boolean bool = zzmE;
      return bool;
    }
  }
  
  public void zza(zzrh paramzzrh) {}
  
  public void zza(zzrh paramzzrh, Activity paramActivity)
  {
    if ((paramzzrh == null) || (paramActivity == null)) {}
    do
    {
      return;
      if ((paramActivity instanceof AdActivity))
      {
        int i = zzab.zzaM().zzk(paramActivity);
        if (i == 1)
        {
          paramzzrh.zzaa(true);
          paramzzrh.setScreenName("Interstitial Ad");
          return;
        }
        if ((i == 2) || (i == 3))
        {
          paramzzrh.setScreenName("Expanded Ad");
          return;
        }
        paramzzrh.setScreenName(null);
        return;
      }
    } while (!(paramActivity instanceof InAppPurchaseActivity));
    paramzzrh.setScreenName(null);
  }
  
  public void zza(String paramString1, String paramString2)
  {
    synchronized (zzmz)
    {
      if (mContext == null)
      {
        zzhx.zzac("Fail to initialize MobileAdsSettingManager because context is null.");
        return;
      }
      if (TextUtils.isEmpty(paramString1))
      {
        zzhx.zzac("Fail to initialize MobileAdsSettingManager because ApplicationCode is empty.");
        return;
      }
    }
    if (zzmE)
    {
      zzhx.zzaa("MobileAdsSettingManager has been initialized.");
      return;
    }
    zzmE = true;
    zzmC = paramString1;
    zzmD = paramString2;
    paramString1 = zztb.zzah(mContext);
    paramString2 = new zzta.zza(zzmC);
    if (!TextUtils.isEmpty(zzmD)) {
      paramString2.zzcA(zzmD);
    }
    paramString1.zza(paramString2.zzrA());
    paramString1.zza(this);
    zzre.zzag(mContext).zza(this);
    paramString1.start();
  }
  
  public void zzaE()
  {
    zzmB = zztb.zzah(mContext).zzrB();
  }
  
  public int zzaF()
  {
    zzrh localzzrh = zzre.zzag(mContext).zzqW();
    if (localzzrh != null) {
      return localzzrh.zzaF();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */