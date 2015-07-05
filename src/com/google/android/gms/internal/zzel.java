package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

@zzgi
public class zzel
  extends zzev.zza
  implements zzet
{
  static final int zztV = Color.argb(0, 0, 0, 0);
  zzic zzmu;
  private final Activity zzoi;
  zzeo zztW;
  zzeq zztX;
  zzc zztY;
  zzer zztZ;
  RelativeLayout zzts;
  boolean zzua = false;
  FrameLayout zzub;
  WebChromeClient.CustomViewCallback zzuc;
  boolean zzud = false;
  boolean zzue = false;
  boolean zzuf = false;
  int zzug = 0;
  private boolean zzuh;
  private boolean zzui = false;
  private boolean zzuj = true;
  
  public zzel(Activity paramActivity)
  {
    zzoi = paramActivity;
  }
  
  static RelativeLayout.LayoutParams zzd(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(paramInt3, paramInt4);
    localLayoutParams.setMargins(paramInt1, paramInt2, 0, 0);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(9);
    return localLayoutParams;
  }
  
  public void close()
  {
    zzug = 2;
    zzoi.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    zzud = bool;
    try
    {
      zztW = zzeo.zzb(zzoi.getIntent());
      if (zztW != null) {
        break label71;
      }
      throw new zza("Could not get info for ad overlay.");
    }
    catch (zza paramBundle)
    {
      zzhx.zzac(paramBundle.getMessage());
      zzug = 3;
      zzoi.finish();
    }
    return;
    label71:
    if (zzoi.getIntent() != null) {
      zzuj = zzoi.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
    }
    if (zztW.zzuz != null)
    {
      zzue = zztW.zzuz.zzml;
      label122:
      if (paramBundle == null)
      {
        if ((zztW.zzup != null) && (zzuj)) {
          zztW.zzup.zzag();
        }
        if ((zztW.zzuw != 1) && (zztW.zzuo != null)) {
          zztW.zzuo.onAdClicked();
        }
      }
      zzts = new zzb(zzoi, zztW.zzuy);
      switch (zztW.zzuw)
      {
      }
    }
    for (;;)
    {
      throw new zza("Could not determine ad overlay type.");
      zzue = false;
      break label122;
      zzt(false);
      return;
      zztY = new zzc(zztW.zzuq);
      zzt(false);
      return;
      zzt(true);
      return;
      if (zzud)
      {
        zzug = 3;
        zzoi.finish();
        return;
      }
      if (zzab.zzaJ().zza(zzoi, zztW.zzun, zztW.zzuv)) {
        break;
      }
      zzug = 3;
      zzoi.finish();
      return;
    }
  }
  
  public void onDestroy()
  {
    if (zztX != null) {
      zztX.destroy();
    }
    if (zzmu != null) {
      zzts.removeView(zzmu.getWebView());
    }
    zzdf();
  }
  
  public void onPause()
  {
    if (zztX != null) {
      zztX.pause();
    }
    zzdc();
    if ((zzmu != null) && ((!zzoi.isFinishing()) || (zztY == null))) {
      zzab.zzaO().zza(zzmu.getWebView());
    }
    zzdf();
  }
  
  public void onRestart() {}
  
  public void onResume()
  {
    if ((zztW != null) && (zztW.zzuw == 4))
    {
      if (!zzud) {
        break label73;
      }
      zzug = 3;
      zzoi.finish();
    }
    while ((zzmu != null) && (!zzmu.isDestroyed()))
    {
      zzab.zzaO().zzb(zzmu.getWebView());
      return;
      label73:
      zzud = true;
    }
    zzhx.zzac("The webview does not exit. Ignoring action.");
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", zzud);
  }
  
  public void onStart() {}
  
  public void onStop()
  {
    zzdf();
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    zzoi.setRequestedOrientation(paramInt);
  }
  
  public void zzX()
  {
    zzuh = true;
  }
  
  public void zza(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    zzub = new FrameLayout(zzoi);
    zzub.setBackgroundColor(-16777216);
    zzub.addView(paramView, -1, -1);
    zzoi.setContentView(zzub);
    zzX();
    zzuc = paramCustomViewCallback;
    zzua = true;
  }
  
  public void zza(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (zztZ != null) {
      zztZ.zza(paramBoolean1, paramBoolean2);
    }
  }
  
  public zzeq zzdb()
  {
    return zztX;
  }
  
  public void zzdc()
  {
    if ((zztW != null) && (zzua)) {
      setRequestedOrientation(zztW.orientation);
    }
    if (zzub != null)
    {
      zzoi.setContentView(zzts);
      zzX();
      zzub.removeAllViews();
      zzub = null;
    }
    if (zzuc != null)
    {
      zzuc.onCustomViewHidden();
      zzuc = null;
    }
    zzua = false;
  }
  
  public void zzdd()
  {
    zzug = 1;
    zzoi.finish();
  }
  
  public void zzde()
  {
    zzts.removeView(zztZ);
    zzs(true);
  }
  
  protected void zzdf()
  {
    if ((!zzoi.isFinishing()) || (zzui)) {}
    do
    {
      do
      {
        return;
        zzui = true;
      } while (!zzoi.isFinishing());
      if (zzmu != null)
      {
        zzp(zzug);
        zzts.removeView(zzmu.getWebView());
        if (zztY != null)
        {
          zzmu.setContext(zztY.zzlN);
          zzmu.zzA(false);
          zztY.zzum.addView(zzmu.getWebView(), zztY.index, zztY.zzul);
          zztY = null;
        }
      }
    } while ((zztW == null) || (zztW.zzup == null));
    zztW.zzup.zzaf();
  }
  
  public void zzdg()
  {
    if (zzuf)
    {
      zzuf = false;
      zzdh();
    }
  }
  
  protected void zzdh()
  {
    zzmu.zzdh();
  }
  
  public void zze(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (zztX != null) {
      zztX.setLayoutParams(zzd(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  public void zzf(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (zztX == null)
    {
      zztX = new zzeq(zzoi, zzmu);
      zzts.addView(zztX, 0, zzd(paramInt1, paramInt2, paramInt3, paramInt4));
      zzmu.zzeG().zzC(false);
    }
  }
  
  protected void zzp(int paramInt)
  {
    zzmu.zzp(paramInt);
  }
  
  public void zzs(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 50;
      zztZ = new zzer(zzoi, i, this);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label88;
      }
    }
    label88:
    for (int i = 11;; i = 9)
    {
      localLayoutParams.addRule(i);
      zztZ.zza(paramBoolean, zztW.zzut);
      zzts.addView(zztZ, localLayoutParams);
      return;
      i = 32;
      break;
    }
  }
  
  protected void zzt(boolean paramBoolean)
  {
    if (!zzuh) {
      zzoi.requestWindowFeature(1);
    }
    Object localObject = zzoi.getWindow();
    if (localObject == null) {
      throw new zza("Invalid activity, no window available.");
    }
    if ((!zzue) || ((zztW.zzuz != null) && (zztW.zzuz.zzmy))) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    zzuf = false;
    boolean bool;
    if (zztW.orientation == zzab.zzaO().zzex()) {
      if (zzoi.getResources().getConfiguration().orientation == 1)
      {
        bool = true;
        zzuf = bool;
        label124:
        zzhx.zzY("Delay onShow to next orientation change: " + zzuf);
        setRequestedOrientation(zztW.orientation);
        if (zzab.zzaO().zza((Window)localObject)) {
          zzhx.zzY("Hardware acceleration on the AdActivity window enabled.");
        }
        if (zzue) {
          break label537;
        }
        zzts.setBackgroundColor(-16777216);
        label191:
        zzoi.setContentView(zzts);
        zzX();
        bool = zztW.zzuq.zzeG().zzba();
        if (!paramBoolean) {
          break label604;
        }
        zzmu = zzab.zzaN().zza(zzoi, zztW.zzuq.zzad(), true, bool, null, zztW.zzlP);
        zzmu.zzeG().zzb(null, null, zztW.zzur, zztW.zzuv, true, zztW.zzux, null, zztW.zzuq.zzeG().zzeM(), null);
        zzmu.zzeG().zza(new zzid.zza()
        {
          public void zza(zzic paramAnonymouszzic, boolean paramAnonymousBoolean)
          {
            paramAnonymouszzic.zzeG().zzeR();
            paramAnonymouszzic.zzdh();
          }
        });
        if (zztW.zztR == null) {
          break label550;
        }
        zzmu.loadUrl(zztW.zztR);
      }
    }
    for (;;)
    {
      zzmu.zza(this);
      localObject = zzmu.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(zzmu.getWebView());
      }
      if (zzue) {
        zzmu.setBackgroundColor(zztV);
      }
      zzts.addView(zzmu.getWebView(), -1, -1);
      if ((!paramBoolean) && (!zzuf)) {
        zzdh();
      }
      zzs(bool);
      if (zzmu.zzeH()) {
        zza(bool, true);
      }
      return;
      bool = false;
      break;
      if (zztW.orientation != zzab.zzaO().zzey()) {
        break label124;
      }
      if (zzoi.getResources().getConfiguration().orientation == 2) {}
      for (bool = true;; bool = false)
      {
        zzuf = bool;
        break;
      }
      label537:
      zzts.setBackgroundColor(zztV);
      break label191;
      label550:
      if (zztW.zzuu != null)
      {
        zzmu.loadDataWithBaseURL(zztW.zzus, zztW.zzuu, "text/html", "UTF-8", null);
      }
      else
      {
        throw new zza("No URL or HTML to display in ad overlay.");
        label604:
        zzmu = zztW.zzuq;
        zzmu.setContext(zzoi);
      }
    }
  }
  
  @zzgi
  static final class zza
    extends Exception
  {
    public zza(String paramString)
    {
      super();
    }
  }
  
  @zzgi
  static final class zzb
    extends RelativeLayout
  {
    zzhs zzlL;
    
    public zzb(Context paramContext, String paramString)
    {
      super();
      zzlL = new zzhs(paramContext, paramString);
    }
    
    public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      zzlL.zzc(paramMotionEvent);
      return false;
    }
  }
  
  @zzgi
  public static class zzc
  {
    public final int index;
    public final Context zzlN;
    public final ViewGroup.LayoutParams zzul;
    public final ViewGroup zzum;
    
    public zzc(zzic paramzzic)
    {
      zzul = paramzzic.getLayoutParams();
      ViewParent localViewParent = paramzzic.getParent();
      zzlN = paramzzic.zzeE();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
      {
        zzum = ((ViewGroup)localViewParent);
        index = zzum.indexOfChild(paramzzic.getWebView());
        zzum.removeView(paramzzic.getWebView());
        paramzzic.zzA(true);
        return;
      }
      throw new zzel.zza("Could not get the parent of the WebView for an overlay.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */