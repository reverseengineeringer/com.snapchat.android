package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

@zzgi
public final class zzck
  extends zzcj.zza
{
  private final OnCustomRenderedAdLoadedListener zzpL;
  
  public zzck(OnCustomRenderedAdLoadedListener paramOnCustomRenderedAdLoadedListener)
  {
    zzpL = paramOnCustomRenderedAdLoadedListener;
  }
  
  public final void zza(zzci paramzzci)
  {
    zzpL.onCustomRenderedAdLoaded(new zzch(paramzzci));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */