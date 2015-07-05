package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.internal.zzb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class ImageManager$zzf
  implements Runnable
{
  private final Bitmap mBitmap;
  private final Uri mUri;
  private boolean zzOz;
  private final CountDownLatch zzmx;
  
  public ImageManager$zzf(ImageManager paramImageManager, Uri paramUri, Bitmap paramBitmap, boolean paramBoolean, CountDownLatch paramCountDownLatch)
  {
    mUri = paramUri;
    mBitmap = paramBitmap;
    zzOz = paramBoolean;
    zzmx = paramCountDownLatch;
  }
  
  private void zza(ImageManager.ImageReceiver paramImageReceiver, boolean paramBoolean)
  {
    paramImageReceiver = ImageManager.ImageReceiver.zza(paramImageReceiver);
    int j = paramImageReceiver.size();
    int i = 0;
    if (i < j)
    {
      zza localzza = (zza)paramImageReceiver.get(i);
      if (paramBoolean) {
        localzza.zza(ImageManager.zzb(zzOw), mBitmap, false);
      }
      for (;;)
      {
        if (!(localzza instanceof zza.zzc)) {
          ImageManager.zza(zzOw).remove(localzza);
        }
        i += 1;
        break;
        ImageManager.zzd(zzOw).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
        localzza.zza(ImageManager.zzb(zzOw), ImageManager.zzc(zzOw), false);
      }
    }
  }
  
  public final void run()
  {
    zzb.zzbd("OnBitmapLoadedRunnable must be executed in the main thread");
    boolean bool;
    if (mBitmap != null) {
      bool = true;
    }
    while (ImageManager.zzh(zzOw) != null) {
      if (zzOz)
      {
        ImageManager.zzh(zzOw).evictAll();
        System.gc();
        zzOz = false;
        ImageManager.zzg(zzOw).post(this);
        return;
        bool = false;
      }
      else if (bool)
      {
        ImageManager.zzh(zzOw).put(new zza.zza(mUri), mBitmap);
      }
    }
    ??? = (ImageManager.ImageReceiver)ImageManager.zze(zzOw).remove(mUri);
    if (??? != null) {
      zza((ImageManager.ImageReceiver)???, bool);
    }
    zzmx.countDown();
    synchronized (ImageManager.zziF())
    {
      ImageManager.zziG().remove(mUri);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */