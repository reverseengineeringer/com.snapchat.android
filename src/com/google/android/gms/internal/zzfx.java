package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;

@zzgi
public final class zzfx
  extends zzfs.zza
{
  private final PlayStorePurchaseListener zzpK;
  
  public zzfx(PlayStorePurchaseListener paramPlayStorePurchaseListener)
  {
    zzpK = paramPlayStorePurchaseListener;
  }
  
  public final boolean isValidPurchase(String paramString)
  {
    return zzpK.isValidPurchase(paramString);
  }
  
  public final void zza(zzfr paramzzfr)
  {
    zzpK.onInAppPurchaseFinished(new zzfv(paramzzfr));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */