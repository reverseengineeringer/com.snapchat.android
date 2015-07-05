package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View.MeasureSpec;
import android.webkit.WebView;

@zzgi
public class zzfz
  implements Runnable
{
  private final int zzli;
  private final int zzlj;
  protected final zzic zzmu;
  private final Handler zzvA;
  private final long zzvB;
  private long zzvC;
  private zzid.zza zzvD;
  protected boolean zzvE;
  protected boolean zzvF;
  
  public zzfz(zzid.zza paramzza, zzic paramzzic, int paramInt1, int paramInt2)
  {
    this(paramzza, paramzzic, paramInt1, paramInt2, 200L, 50L);
  }
  
  public zzfz(zzid.zza paramzza, zzic paramzzic, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    zzvB = paramLong1;
    zzvC = paramLong2;
    zzvA = new Handler(Looper.getMainLooper());
    zzmu = paramzzic;
    zzvD = paramzza;
    zzvE = false;
    zzvF = false;
    zzlj = paramInt2;
    zzli = paramInt1;
  }
  
  public void run()
  {
    if ((zzmu == null) || (zzdE()))
    {
      zzvD.zza(zzmu, true);
      return;
    }
    new zza(zzmu.getWebView()).execute(new Void[0]);
  }
  
  public void zza(zzgq paramzzgq)
  {
    zza(paramzzgq, new zzij(this, zzmu, zzwP));
  }
  
  public void zza(zzgq paramzzgq, zzij paramzzij)
  {
    zzmu.setWebViewClient(paramzzij);
    zzic localzzic = zzmu;
    if (TextUtils.isEmpty(zzus)) {}
    for (paramzzij = null;; paramzzij = zzab.zzaM().zzS(zzus))
    {
      localzzic.loadDataWithBaseURL(paramzzij, zzwG, "text/html", "UTF-8", null);
      return;
    }
  }
  
  public void zzdC()
  {
    zzvA.postDelayed(this, zzvB);
  }
  
  public void zzdD()
  {
    try
    {
      zzvE = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean zzdE()
  {
    try
    {
      boolean bool = zzvE;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean zzdF()
  {
    return zzvF;
  }
  
  public final class zza
    extends AsyncTask<Void, Void, Boolean>
  {
    private final WebView zzvG;
    private Bitmap zzvH;
    
    public zza(WebView paramWebView)
    {
      zzvG = paramWebView;
    }
    
    protected final void onPreExecute()
    {
      try
      {
        zzvH = Bitmap.createBitmap(zzfz.zza(zzfz.this), zzfz.zzb(zzfz.this), Bitmap.Config.ARGB_8888);
        zzvG.setVisibility(0);
        zzvG.measure(View.MeasureSpec.makeMeasureSpec(zzfz.zza(zzfz.this), 0), View.MeasureSpec.makeMeasureSpec(zzfz.zzb(zzfz.this), 0));
        zzvG.layout(0, 0, zzfz.zza(zzfz.this), zzfz.zzb(zzfz.this));
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
      zzfz.zzc(zzfz.this);
      if ((paramBoolean.booleanValue()) || (zzdE()) || (zzfz.zzd(zzfz.this) <= 0L))
      {
        zzvF = paramBoolean.booleanValue();
        zzfz.zze(zzfz.this).zza(zzmu, true);
      }
      while (zzfz.zzd(zzfz.this) <= 0L) {
        return;
      }
      if (zzhx.zzA(2)) {
        zzhx.zzY("Ad not detected, scheduling another run.");
      }
      zzfz.zzg(zzfz.this).postDelayed(zzfz.this, zzfz.zzf(zzfz.this));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */