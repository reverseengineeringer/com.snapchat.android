package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import com.google.android.gms.internal.zzkv;
import com.google.android.gms.internal.zzme;

final class ImageManager$zzb
  extends zzkv<zza.zza, Bitmap>
{
  public ImageManager$zzb(Context paramContext)
  {
    super(zzO(paramContext));
  }
  
  private static int zzO(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    if ((getApplicationInfoflags & 0x100000) != 0)
    {
      i = 1;
      if ((i == 0) || (!zzme.zzkd())) {
        break label55;
      }
    }
    label55:
    for (int i = ImageManager.zza.zza(localActivityManager);; i = localActivityManager.getMemoryClass())
    {
      return (int)(i * 1048576 * 0.33F);
      i = 0;
      break;
    }
  }
  
  protected final int zza(zza.zza paramzza, Bitmap paramBitmap)
  {
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
  
  protected final void zza(boolean paramBoolean, zza.zza paramzza, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    super.entryRemoved(paramBoolean, paramzza, paramBitmap1, paramBitmap2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.ImageManager.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */