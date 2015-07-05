package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.Path;
import android.net.Uri;
import android.widget.ImageView;

public final class zzkl
  extends ImageView
{
  private Uri zzPe;
  private int zzPf;
  private int zzPg;
  private zza zzPh;
  private int zzPi;
  private float zzPj;
  
  protected final void onDraw(Canvas paramCanvas)
  {
    if (zzPh != null) {
      paramCanvas.clipPath(zzPh.zzk(getWidth(), getHeight()));
    }
    super.onDraw(paramCanvas);
    if (zzPg != 0) {
      paramCanvas.drawColor(zzPg);
    }
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    switch (zzPi)
    {
    default: 
      return;
    case 1: 
      paramInt1 = getMeasuredHeight();
      paramInt2 = (int)(paramInt1 * zzPj);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt2 = getMeasuredWidth();
      paramInt1 = (int)(paramInt2 / zzPj);
    }
  }
  
  public final void zzaE(int paramInt)
  {
    zzPf = paramInt;
  }
  
  public final void zzi(Uri paramUri)
  {
    zzPe = paramUri;
  }
  
  public final int zziK()
  {
    return zzPf;
  }
  
  public static abstract interface zza
  {
    public abstract Path zzk(int paramInt1, int paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzkl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */