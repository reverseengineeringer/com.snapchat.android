package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebView;

final class zzgw$2
  implements Runnable
{
  zzgw$2(Context paramContext, zzgo paramzzgo, zzgy paramzzgy, zzcf paramzzcf, zzce paramzzce, String paramString, zzbv paramzzbv) {}
  
  public final void run()
  {
    zzic localzzic = zzab.zzaN().zza(zznK, new zzba(), false, false, null, zzxq.zzlP);
    if (zzab.zzaP().zzem()) {
      localzzic.getWebView().clearCache(true);
    }
    localzzic.setWillNotDraw(true);
    zzxk.zza(localzzic);
    zzxl.zza(zzxm, new String[] { "rwc" });
    Object localObject = zzxl.zzcq();
    localObject = zzgw.zzb(zzxn, zzxl, (zzce)localObject);
    zzid localzzid = localzzic.zzeG();
    localzzid.zza("/invalidRequest", zzxk.zzxz);
    localzzid.zza("/loadAdURL", zzxk.zzxA);
    localzzid.zza("/log", zzcu.zzrG);
    localzzid.zza((zzid.zza)localObject);
    zzhx.zzY("Loading the JS library.");
    localzzic.loadUrl(zzxr.zzbV());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgw.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */