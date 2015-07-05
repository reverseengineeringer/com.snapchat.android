package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

@zzgi
public final class zzbc
  extends zzbk.zza
{
  private final AppEventListener zzpd;
  
  public zzbc(AppEventListener paramAppEventListener)
  {
    zzpd = paramAppEventListener;
  }
  
  public final void onAppEvent(String paramString1, String paramString2)
  {
    zzpd.onAppEvent(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */