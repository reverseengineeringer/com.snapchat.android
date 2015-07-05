package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.InAppPurchaseListener;

@zzgi
public final class zzft
  extends zzfo.zza
{
  private final InAppPurchaseListener zzpJ;
  
  public zzft(InAppPurchaseListener paramInAppPurchaseListener)
  {
    zzpJ = paramInAppPurchaseListener;
  }
  
  public final void zza(zzfn paramzzfn)
  {
    zzpJ.onInAppPurchaseRequested(new zzfw(paramzzfn));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */