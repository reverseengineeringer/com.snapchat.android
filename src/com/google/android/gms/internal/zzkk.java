package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public final class zzkk
{
  public static Bitmap zza(Bitmap paramBitmap)
  {
    int j = 0;
    if (paramBitmap == null) {
      return null;
    }
    int i = paramBitmap.getWidth();
    int k = paramBitmap.getHeight();
    int m;
    if (i >= k)
    {
      m = i / 2 - k / 2;
      i = k;
    }
    for (k = m;; k = 0)
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint(1);
      localPaint.setColor(-16777216);
      localCanvas.drawCircle(i / 2, i / 2, i / 2, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, k, j, localPaint);
      return localBitmap;
      j = k / 2;
      k = i / 2;
      j -= k;
    }
  }
  
  private static Bitmap zza(Drawable paramDrawable)
  {
    if (paramDrawable == null) {
      return null;
    }
    if ((paramDrawable instanceof BitmapDrawable)) {
      return ((BitmapDrawable)paramDrawable).getBitmap();
    }
    Bitmap localBitmap = Bitmap.createBitmap(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
    paramDrawable.draw(localCanvas);
    return localBitmap;
  }
  
  public static Drawable zza(Resources paramResources, Drawable paramDrawable)
  {
    return new BitmapDrawable(paramResources, zza(zza(paramDrawable)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */