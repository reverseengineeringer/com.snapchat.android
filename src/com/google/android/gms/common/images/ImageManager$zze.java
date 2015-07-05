package com.google.android.gms.common.images;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class ImageManager$zze
  implements ComponentCallbacks2
{
  private final ImageManager.zzb zzOq;
  
  public ImageManager$zze(ImageManager.zzb paramzzb)
  {
    zzOq = paramzzb;
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public final void onLowMemory()
  {
    zzOq.evictAll();
  }
  
  public final void onTrimMemory(int paramInt)
  {
    if (paramInt >= 60) {
      zzOq.evictAll();
    }
    while (paramInt < 20) {
      return;
    }
    zzOq.trimToSize(zzOq.size() / 2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */