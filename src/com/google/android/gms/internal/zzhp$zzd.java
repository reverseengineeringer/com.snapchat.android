package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;

class zzhp$zzd
  extends zzhp.zzf
{
  public String getDefaultUserAgent(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
  
  public boolean zza(Context paramContext, WebSettings paramWebSettings)
  {
    super.zza(paramContext, paramWebSettings);
    paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhp.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */