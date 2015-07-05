package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.google.android.gms.common.internal.zzb;
import java.util.HashSet;
import java.util.Map;

final class ImageManager$zzd
  implements Runnable
{
  private final zza zzOy;
  
  public ImageManager$zzd(ImageManager paramImageManager, zza paramzza)
  {
    zzOy = paramzza;
  }
  
  public final void run()
  {
    zzb.zzbd("LoadImageRunnable must be executed on the main thread");
    Object localObject1 = (ImageManager.ImageReceiver)ImageManager.zza(zzOw).get(zzOy);
    if (localObject1 != null)
    {
      ImageManager.zza(zzOw).remove(zzOy);
      ((ImageManager.ImageReceiver)localObject1).zzc(zzOy);
    }
    zza.zza localzza = zzOy.zzOA;
    if (uri == null)
    {
      zzOy.zza(ImageManager.zzb(zzOw), ImageManager.zzc(zzOw), true);
      return;
    }
    localObject1 = ImageManager.zza(zzOw, localzza);
    if (localObject1 != null)
    {
      zzOy.zza(ImageManager.zzb(zzOw), (Bitmap)localObject1, true);
      return;
    }
    localObject1 = (Long)ImageManager.zzd(zzOw).get(uri);
    if (localObject1 != null)
    {
      if (SystemClock.elapsedRealtime() - ((Long)localObject1).longValue() < 3600000L)
      {
        zzOy.zza(ImageManager.zzb(zzOw), ImageManager.zzc(zzOw), true);
        return;
      }
      ImageManager.zzd(zzOw).remove(uri);
    }
    zzOy.zza(ImageManager.zzb(zzOw), ImageManager.zzc(zzOw));
    ??? = (ImageManager.ImageReceiver)ImageManager.zze(zzOw).get(uri);
    localObject1 = ???;
    if (??? == null)
    {
      localObject1 = new ImageManager.ImageReceiver(zzOw, uri);
      ImageManager.zze(zzOw).put(uri, localObject1);
    }
    ((ImageManager.ImageReceiver)localObject1).zzb(zzOy);
    if (!(zzOy instanceof zza.zzc)) {
      ImageManager.zza(zzOw).put(zzOy, localObject1);
    }
    synchronized (ImageManager.zziF())
    {
      if (!ImageManager.zziG().contains(uri))
      {
        ImageManager.zziG().add(uri);
        ((ImageManager.ImageReceiver)localObject1).zziH();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */