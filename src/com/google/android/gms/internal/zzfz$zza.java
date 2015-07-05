package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.view.View.MeasureSpec;
import android.webkit.WebView;

public final class zzfz$zza
  extends AsyncTask<Void, Void, Boolean>
{
  private final WebView zzvG;
  private Bitmap zzvH;
  
  public zzfz$zza(zzfz paramzzfz, WebView paramWebView)
  {
    zzvG = paramWebView;
  }
  
  protected final void onPreExecute()
  {
    try
    {
      zzvH = Bitmap.createBitmap(zzfz.zza(zzvI), zzfz.zzb(zzvI), Bitmap.Config.ARGB_8888);
      zzvG.setVisibility(0);
      zzvG.measure(View.MeasureSpec.makeMeasureSpec(zzfz.zza(zzvI), 0), View.MeasureSpec.makeMeasureSpec(zzfz.zzb(zzvI), 0));
      zzvG.layout(0, 0, zzfz.zza(zzvI), zzfz.zzb(zzvI));
      Canvas localCanvas = new Canvas(zzvH);
      zzvG.draw(localCanvas);
      zzvG.invalidate();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final Boolean zza(Void... paramVarArgs)
  {
    for (;;)
    {
      int i;
      int m;
      try
      {
        int n = zzvH.getWidth();
        int i1 = zzvH.getHeight();
        if ((n == 0) || (i1 == 0))
        {
          paramVarArgs = Boolean.valueOf(false);
          return paramVarArgs;
        }
        i = 0;
        j = 0;
        int k;
        if (i < n)
        {
          k = 0;
          if (k >= i1) {
            break label139;
          }
          m = j;
          if (zzvH.getPixel(i, k) != 0) {
            m = j + 1;
          }
        }
        else
        {
          if (j / (n * i1 / 100.0D) > 0.1D)
          {
            bool = true;
            paramVarArgs = Boolean.valueOf(bool);
            continue;
          }
          boolean bool = false;
          continue;
        }
        k += 10;
      }
      finally {}
      int j = m;
      continue;
      label139:
      i += 10;
    }
  }
  
  protected final void zza(Boolean paramBoolean)
  {
    zzfz.zzc(zzvI);
    if ((paramBoolean.booleanValue()) || (zzvI.zzdE()) || (zzfz.zzd(zzvI) <= 0L))
    {
      zzvI.zzvF = paramBoolean.booleanValue();
      zzfz.zze(zzvI).zza(zzvI.zzmu, true);
    }
    while (zzfz.zzd(zzvI) <= 0L) {
      return;
    }
    if (zzhx.zzA(2)) {
      zzhx.zzY("Ad not detected, scheduling another run.");
    }
    zzfz.zzg(zzvI).postDelayed(zzvI, zzfz.zzf(zzvI));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfz.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */