package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

public class zzem
{
  public void zza(Context paramContext, zzeo paramzzeo)
  {
    zza(paramContext, paramzzeo, true);
  }
  
  public void zza(Context paramContext, zzeo paramzzeo, boolean paramBoolean)
  {
    if ((zzuw == 4) && (zzup == null))
    {
      if (zzuo != null) {
        zzuo.onAdClicked();
      }
      zzab.zzaJ().zza(paramContext, zzun, zzuv);
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", zzlP.zzzK);
    localIntent.putExtra("shouldCallOnOverlayOpened", paramBoolean);
    zzeo.zza(localIntent, paramzzeo);
    if (!zzme.zzkk()) {
      localIntent.addFlags(524288);
    }
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    paramContext.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */