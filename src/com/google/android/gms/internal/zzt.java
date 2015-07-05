package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.ViewSwitcher;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@zzgi
public class zzt
  extends zzbi.zza
  implements zzac, zzat, zzct, zzcw, zzcy, zzdl, zzeh, zzep, zzes, zzfk, zzgc.zza, zzgj.zza, zzhi, zzv
{
  private zzce zzlA;
  private zzce zzlB;
  private zzax zzlC;
  private final zzdr zzlD;
  private final zzb zzlE;
  private final zzaa zzlF;
  private final zzae zzlG;
  private boolean zzlH;
  private zzcf zzlz;
  
  public zzt(Context paramContext, zzba paramzzba, String paramString, zzdr paramzzdr, zzhy paramzzhy)
  {
    this(new zzb(paramContext, paramzzba, paramString, paramzzhy), paramzzdr, null);
  }
  
  zzt(zzb paramzzb, zzdr paramzzdr, zzaa paramzzaa)
  {
    zzca.zzl(zzlN);
    zzlE = paramzzb;
    zzlD = paramzzdr;
    if (paramzzaa != null) {}
    for (;;)
    {
      zzlF = paramzzaa;
      zzab.zzaM().zzu(zzlE.zzlN);
      zzab.zzaP().zzb(zzlE.zzlN, zzlE.zzlP);
      zzlG = zzab.zzaP().zzel();
      return;
      paramzzaa = new zzaa(this);
    }
  }
  
  private zzgo.zza zza(zzax paramzzax, Bundle paramBundle)
  {
    ApplicationInfo localApplicationInfo = zzlE.zzlN.getApplicationInfo();
    try
    {
      localPackageInfo = zzlE.zzlN.getPackageManager().getPackageInfo(packageName, 0);
      localDisplayMetrics = zzlE.zzlN.getResources().getDisplayMetrics();
      str1 = null;
      localObject2 = str1;
      if (!zzlE.zzlV.zzpb)
      {
        localObject2 = str1;
        if (zzlE.zzlS.getParent() != null)
        {
          localObject2 = new int[2];
          zzlE.zzlS.getLocationOnScreen((int[])localObject2);
          int k = localObject2[0];
          int m = localObject2[1];
          int n = zzlE.zzlS.getWidth();
          int i1 = zzlE.zzlS.getHeight();
          int j = 0;
          i = j;
          if (zzlE.zzlS.isShown())
          {
            i = j;
            if (k + n > 0)
            {
              i = j;
              if (m + i1 > 0)
              {
                i = j;
                if (k <= widthPixels)
                {
                  i = j;
                  if (m <= heightPixels) {
                    i = 1;
                  }
                }
              }
            }
          }
          localObject2 = new Bundle(5);
          ((Bundle)localObject2).putInt("x", k);
          ((Bundle)localObject2).putInt("y", m);
          ((Bundle)localObject2).putInt("width", n);
          ((Bundle)localObject2).putInt("height", i1);
          ((Bundle)localObject2).putInt("visible", i);
        }
      }
      str1 = zzab.zzaP().zzee();
      zzlE.zzlY = new zzhf(str1, zzlE.zzlM);
      zzlE.zzlY.zze(paramzzax);
      str2 = zzab.zzaM().zza(zzlE.zzlN, zzlE.zzlS, zzlE.zzlV);
      i = zzz.zzj(zzlE.zzlN).zzaF();
      bool = zzz.zzj(zzlE.zzlN).isInitialized();
      l2 = 0L;
      l1 = l2;
      if (zzlE.zzmm == null) {}
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        PackageInfo localPackageInfo;
        DisplayMetrics localDisplayMetrics;
        String str1;
        Object localObject2;
        int i;
        String str2;
        boolean bool;
        l1 = zzlE.zzmm.getValue();
        String str3 = UUID.randomUUID().toString();
        Bundle localBundle = zzab.zzaP().zza(zzlE.zzlN, this, str1);
        return new zzgo.zza((Bundle)localObject2, paramzzax, zzlE.zzlV, zzlE.zzlM, localApplicationInfo, localPackageInfo, str1, zzab.zzaP().getSessionId(), zzlE.zzlP, localBundle, zzlE.zzmf, paramBundle, zzab.zzaP().zzei(), new Messenger(new zzey(zzlE.zzlN)), widthPixels, heightPixels, density, str2, bool, i, l1, str3);
        localNameNotFoundException = localNameNotFoundException;
        Object localObject1 = null;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          long l2;
          zzhx.zzac("Cannot get correlation id, default to 0.");
          long l1 = l2;
        }
      }
    }
  }
  
  private zzic zza(zzu paramzzu)
  {
    if (zzlE.zzlV.zzpb)
    {
      localObject = zzab.zzaN().zza(zzlE.zzlN, zzlE.zzlV, false, false, zzlE.zzlO, zzlE.zzlP);
      ((zzic)localObject).zzeG().zzb(this, null, this, this, ((Boolean)zzca.zzqJ.get()).booleanValue(), this, this, paramzzu, null);
      return (zzic)localObject;
    }
    Object localObject = zzlE.zzlS.getNextView();
    if ((localObject instanceof zzic))
    {
      localObject = (zzic)localObject;
      ((zzic)localObject).zza(zzlE.zzlN, zzlE.zzlV);
    }
    for (;;)
    {
      ((zzic)localObject).zzeG().zzb(this, this, this, this, false, this, null, paramzzu, this);
      return (zzic)localObject;
      if (localObject != null) {
        zzlE.zzlS.removeView((View)localObject);
      }
      zzic localzzic = zzab.zzaN().zza(zzlE.zzlN, zzlE.zzlV, false, false, zzlE.zzlO, zzlE.zzlP);
      localObject = localzzic;
      if (zzlE.zzlV.zzpc == null)
      {
        zzc(localzzic.getWebView());
        localObject = localzzic;
      }
    }
  }
  
  private void zza(int paramInt)
  {
    zzhx.zzac("Failed to load ad: " + paramInt);
    if (zzlE.zzlT != null) {}
    try
    {
      zzlE.zzlT.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call AdListener.onAdFailedToLoad().", localRemoteException);
    }
  }
  
  private void zzap()
  {
    zzhx.zzaa("Ad closing.");
    if (zzlE.zzlT != null) {}
    try
    {
      zzlE.zzlT.onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call AdListener.onAdClosed().", localRemoteException);
    }
  }
  
  private void zzaq()
  {
    zzhx.zzaa("Ad leaving application.");
    if (zzlE.zzlT != null) {}
    try
    {
      zzlE.zzlT.onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call AdListener.onAdLeftApplication().", localRemoteException);
    }
  }
  
  private void zzar()
  {
    zzhx.zzaa("Ad opening.");
    if (zzlE.zzlT != null) {}
    try
    {
      zzlE.zzlT.onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call AdListener.onAdOpened().", localRemoteException);
    }
  }
  
  private void zzas()
  {
    zzhx.zzaa("Ad finished loading.");
    if (zzlE.zzlT != null) {}
    try
    {
      zzlE.zzlT.onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call AdListener.onAdLoaded().", localRemoteException);
    }
  }
  
  private void zzat()
  {
    try
    {
      if (((zzlE.zzlW.zzyx instanceof zzcl)) && (zzlE.zzmc != null)) {
        zzlE.zzmc.zza((zzcl)zzlE.zzlW.zzyx);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", localRemoteException);
    }
  }
  
  private void zzau()
  {
    try
    {
      if (((zzlE.zzlW.zzyx instanceof zzcm)) && (zzlE.zzmd != null)) {
        zzlE.zzmd.zza((zzcm)zzlE.zzlW.zzyx);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not call OnContentAdLoadedListener.onContentAdLoaded().", localRemoteException);
    }
  }
  
  private void zzaw()
  {
    if (zzlE.zzmj == 0)
    {
      zzlE.zzay();
      zzlE.zzlW = null;
      zzlE.zzml = false;
    }
  }
  
  private boolean zzb(zzhe paramzzhe)
  {
    if (zzwI) {}
    for (;;)
    {
      try
      {
        paramzzhe = (View)zze.zzf(zzsM.getView());
        View localView = zzlE.zzlS.getNextView();
        if (localView != null)
        {
          if ((localView instanceof zzic)) {
            ((zzic)localView).destroy();
          }
          zzlE.zzlS.removeView(localView);
        }
        if (zzyu == null) {
          continue;
        }
      }
      catch (RemoteException paramzzhe)
      {
        try
        {
          zzc(paramzzhe);
          if (zzlE.zzlS.getChildCount() > 1) {
            zzlE.zzlS.showNext();
          }
          if (zzlE.zzlW != null)
          {
            paramzzhe = zzlE.zzlS.getNextView();
            if (!(paramzzhe instanceof zzic)) {
              break label265;
            }
            ((zzic)paramzzhe).zza(zzlE.zzlN, zzlE.zzlV);
            zzlE.zzaA();
          }
          zzlE.zzlS.setVisibility(0);
          return true;
        }
        catch (Throwable paramzzhe)
        {
          zzhx.zzd("Could not add mediation view to view hierarchy.", paramzzhe);
          return false;
        }
        paramzzhe = paramzzhe;
        zzhx.zzd("Could not get View from mediation adapter.", paramzzhe);
        return false;
      }
      zzuq.zza(zzyu);
      zzlE.zzlS.removeAllViews();
      zzlE.zzlS.setMinimumWidth(zzyu.widthPixels);
      zzlE.zzlS.setMinimumHeight(zzyu.heightPixels);
      zzc(zzuq.getWebView());
      continue;
      label265:
      if (paramzzhe != null) {
        zzlE.zzlS.removeView(paramzzhe);
      }
    }
  }
  
  private void zze(boolean paramBoolean)
  {
    if (zzlE.zzlW == null) {
      zzhx.zzac("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      zzhx.zzY("Pinging Impression URLs.");
      zzlE.zzlY.zzdX();
      if (zzlE.zzlW.zzsu != null) {
        zzab.zzaM().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzb(zzlE.zzlW.zzsu));
      }
      if ((zzlE.zzlW.zzyt != null) && (zzlE.zzlW.zzyt.zzsu != null)) {
        zzab.zzaV().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzlE.zzlW, zzlE.zzlM, paramBoolean, zzb(zzlE.zzlW.zzyt.zzsu));
      }
    } while ((zzlE.zzlW.zzsL == null) || (zzlE.zzlW.zzsL.zzsp == null));
    zzab.zzaV().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzlE.zzlW, zzlE.zzlM, paramBoolean, zzlE.zzlW.zzsL.zzsp);
  }
  
  public void destroy()
  {
    com.google.android.gms.common.internal.zzx.zzbd("destroy must be called on the main UI thread.");
    zzlF.cancel();
    zzlG.zze(zzlE.zzlW);
    zzlE.destroy();
  }
  
  public String getMediationAdapterClassName()
  {
    if (zzlE.zzlW != null) {
      return zzlE.zzlW.zzsN;
    }
    return null;
  }
  
  public boolean isReady()
  {
    com.google.android.gms.common.internal.zzx.zzbd("isLoaded must be called on the main UI thread.");
    return (zzlE.zzlQ == null) && (zzlE.zzlU == null) && (zzlE.zzlW != null);
  }
  
  public void onAdClicked()
  {
    recordClick();
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    if (zzlE.zzlZ != null) {}
    try
    {
      zzlE.zzlZ.onAppEvent(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      zzhx.zzd("Could not call the AppEventListener.", paramString1);
    }
  }
  
  public void pause()
  {
    com.google.android.gms.common.internal.zzx.zzbd("pause must be called on the main UI thread.");
    if ((zzlE.zzlW != null) && (zzlE.zzmj == 0)) {
      zzab.zzaO().zza(zzlE.zzlW.zzuq.getWebView());
    }
    if ((zzlE.zzlW != null) && (zzlE.zzlW.zzsM != null)) {}
    try
    {
      zzlE.zzlW.zzsM.pause();
      zzlG.zzf(zzlE.zzlW);
      zzlF.pause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzac("Could not pause mediation adapter.");
      }
    }
  }
  
  public void recordClick()
  {
    if (zzlE.zzlW == null) {
      zzhx.zzac("Ad state was null when trying to ping click URLs.");
    }
    do
    {
      return;
      zzhx.zzY("Pinging click URLs.");
      zzlE.zzlY.zzdY();
      if (zzlE.zzlW.zzst != null) {
        zzab.zzaM().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzb(zzlE.zzlW.zzst));
      }
      if ((zzlE.zzlW.zzyt != null) && (zzlE.zzlW.zzyt.zzst != null)) {
        zzab.zzaV().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzlE.zzlW, zzlE.zzlM, false, zzb(zzlE.zzlW.zzyt.zzst));
      }
    } while (zzlE.zzlR == null);
    try
    {
      zzlE.zzlR.onAdClicked();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      zzhx.zzd("Could not notify onAdClicked event.", localRemoteException);
    }
  }
  
  public void recordImpression()
  {
    zze(false);
  }
  
  public void resume()
  {
    com.google.android.gms.common.internal.zzx.zzbd("resume must be called on the main UI thread.");
    if ((zzlE.zzlW != null) && (zzlE.zzmj == 0)) {
      zzab.zzaO().zzb(zzlE.zzlW.zzuq.getWebView());
    }
    if ((zzlE.zzlW != null) && (zzlE.zzlW.zzsM != null)) {}
    try
    {
      zzlE.zzlW.zzsM.resume();
      zzlF.resume();
      zzlG.zzg(zzlE.zzlW);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        zzhx.zzac("Could not resume mediation adapter.");
      }
    }
  }
  
  public void showInterstitial()
  {
    com.google.android.gms.common.internal.zzx.zzbd("showInterstitial must be called on the main UI thread.");
    if (!zzlE.zzlV.zzpb) {
      zzhx.zzac("Cannot call showInterstitial on a banner ad.");
    }
    do
    {
      return;
      if (zzlE.zzlW == null)
      {
        zzhx.zzac("The interstitial has not loaded.");
        return;
      }
    } while (zzlE.zzmj == 1);
    if (zzlE.zzlW.zzuq.zzeK())
    {
      zzhx.zzac("The interstitial is already showing.");
      return;
    }
    zzlE.zzlW.zzuq.zzA(true);
    if ((zzlE.zzlW.zzuq.zzeG().zzba()) || (zzlE.zzlW.zzys != null))
    {
      zzaf localzzaf = zzlG.zza(zzlE.zzlV, zzlE.zzlW);
      if ((zzlE.zzlW.zzuq.zzeG().zzba()) && (localzzaf != null)) {
        localzzaf.zza(this);
      }
    }
    if (zzlE.zzlW.zzwI) {
      try
      {
        zzlE.zzlW.zzsM.showInterstitial();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        zzhx.zzd("Could not show interstitial.", localRemoteException);
        zzaw();
        return;
      }
    }
    Object localObject = new zzx(zzlE.zzml, zzao());
    int j = zzlE.zzlW.zzuq.getRequestedOrientation();
    int i = j;
    if (j == -1) {
      i = zzlE.zzlW.orientation;
    }
    localObject = new zzeo(this, this, this, zzlE.zzlW.zzuq, i, zzlE.zzlP, zzlE.zzlW.zzwN, (zzx)localObject);
    zzab.zzaK().zza(zzlE.zzlN, (zzeo)localObject);
  }
  
  public void stopLoading()
  {
    com.google.android.gms.common.internal.zzx.zzbd("stopLoading must be called on the main UI thread.");
    zzlE.zzf(true);
  }
  
  Bundle zza(zzan paramzzan)
  {
    if (paramzzan == null) {}
    for (;;)
    {
      return null;
      if (paramzzan.zzbx()) {
        paramzzan.wakeup();
      }
      Object localObject = paramzzan.zzbv();
      if (localObject != null)
      {
        paramzzan = ((zzak)localObject).zzbm();
        zzhx.zzY("In AdManger: loadAd, " + ((zzak)localObject).toString());
      }
      while (paramzzan != null)
      {
        localObject = new Bundle(1);
        ((Bundle)localObject).putString("fingerprint", paramzzan);
        ((Bundle)localObject).putInt("v", 1);
        return (Bundle)localObject;
        paramzzan = null;
      }
    }
  }
  
  public String zza(String paramString1, String paramString2, int paramInt)
  {
    String str = paramString1;
    if (((Boolean)zzca.zzqL.get()).booleanValue())
    {
      str = paramString1;
      if (zzz.zzj(zzlE.zzlN).isInitialized())
      {
        str = paramString1;
        if (!TextUtils.isEmpty(paramString1)) {
          str = Uri.parse(paramString1).buildUpon().appendQueryParameter("ga_cid", paramString2).appendQueryParameter("ga_hid", String.valueOf(paramInt)).build().toString();
        }
      }
    }
    return str;
  }
  
  public void zza(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    zzar();
  }
  
  public void zza(zzaf paramzzaf, boolean paramBoolean)
  {
    HashMap localHashMap;
    if ((zzlE.zzlW != null) && (zzlE.zzlW.zzuq != null))
    {
      localHashMap = new HashMap();
      if (!paramBoolean) {
        break label70;
      }
    }
    label70:
    for (paramzzaf = "1";; paramzzaf = "0")
    {
      localHashMap.put("isVisible", paramzzaf);
      zzlE.zzlW.zzuq.zzb("onAdVisibilityChanged", localHashMap);
      return;
    }
  }
  
  public void zza(zzba paramzzba)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setAdSize must be called on the main UI thread.");
    zzlE.zzlV = paramzzba;
    if ((zzlE.zzlW != null) && (zzlE.zzmj == 0)) {
      zzlE.zzlW.zzuq.zza(paramzzba);
    }
    if (zzlE.zzlS.getChildCount() > 1) {
      zzlE.zzlS.removeView(zzlE.zzlS.getNextView());
    }
    zzlE.zzlS.setMinimumWidth(widthPixels);
    zzlE.zzlS.setMinimumHeight(heightPixels);
    zzlE.zzlS.requestLayout();
  }
  
  public void zza(zzbg paramzzbg)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setAdListener must be called on the main UI thread.");
    zzlE.zzlR = paramzzbg;
  }
  
  public void zza(zzbh paramzzbh)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setAdListener must be called on the main UI thread.");
    zzlE.zzlT = paramzzbh;
  }
  
  public void zza(zzbk paramzzbk)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setAppEventListener must be called on the main UI thread.");
    zzlE.zzlZ = paramzzbk;
  }
  
  public void zza(zzbl paramzzbl)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setCorrelationIdProvider must be called on the main UI thread");
    zzlE.zzmm = paramzzbl;
  }
  
  public void zza(zzcj paramzzcj)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
    zzlE.zzme = paramzzcj;
  }
  
  public void zza(zzfo paramzzfo)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setInAppPurchaseListener must be called on the main UI thread.");
    zzlE.zzmb = paramzzfo;
  }
  
  public void zza(zzfs paramzzfs, String paramString)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setPlayStorePurchaseParams must be called on the main UI thread.");
    zzlE.zzmg = new zzfl(paramString);
    zzlE.zzma = paramzzfs;
    if ((!zzab.zzaP().zzeh()) && (paramzzfs != null)) {
      new zzfd(zzlE.zzlN, zzlE.zzma, zzlE.zzmg).start();
    }
  }
  
  public void zza(zzhe.zza paramzza)
  {
    Object localObject = null;
    zzlz.zza(zzlA, new String[] { "arf" });
    zzlB = zzlz.zzcq();
    zzlE.zzlQ = null;
    zzlE.zzlX = paramzza;
    zza(null);
    zzic localzzic;
    if (!zzyz.zzwS)
    {
      final zzu localzzu = new zzu();
      localzzic = zza(localzzu);
      localzzu.zza(new zzu.zzb(paramzza, localzzic));
      localzzic.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          localzzu.recordClick();
          return false;
        }
      });
      localzzic.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          localzzu.recordClick();
        }
      });
    }
    for (;;)
    {
      if (zzlV != null) {
        zzlE.zzlV = zzlV;
      }
      if (errorCode != -2)
      {
        zza(new zzhe(paramzza, localzzic, null, null, null, null, null));
        return;
      }
      if ((!zzyz.zzwI) && (zzyz.zzwR))
      {
        if (zzyz.zzus != null) {
          localObject = Uri.parse(zzyz.zzus).buildUpon().query(null).build().toString();
        }
        localObject = new zzcg(this, (String)localObject, zzyz.zzwG);
        try
        {
          if (zzlE.zzme != null)
          {
            zzlE.zzmj = 1;
            zzlE.zzme.zza((zzci)localObject);
            return;
          }
        }
        catch (RemoteException localRemoteException)
        {
          zzhx.zzd("Could not call the onCustomRenderedAdLoadedListener.", localRemoteException);
        }
      }
      zzlE.zzmj = 0;
      zzlE.zzlU = zzab.zzaL().zza(zzlE.zzlN, this, paramzza, localzzic, zzlD, this);
      zzhx.zzY("AdRenderer: " + zzlE.zzlU.getClass().getName());
      return;
      localzzic = null;
    }
  }
  
  public void zza(zzhe paramzzhe)
  {
    zzlz.zza(zzlB, new String[] { "awr" });
    zzlz.zza(zzlA, new String[] { "ttc" });
    zzlE.zzlU = null;
    if (zzyx != null) {}
    for (boolean bool = true;; bool = false)
    {
      if ((errorCode != -2) && (errorCode != 3)) {
        zzab.zzaP().zzb(zzlE.zzax());
      }
      if (errorCode != -1) {
        break;
      }
      return;
    }
    if (zza(paramzzhe, bool)) {
      zzhx.zzY("Ad refresh scheduled.");
    }
    if ((errorCode == 3) && (zzyt != null) && (zzyt.zzsv != null))
    {
      zzhx.zzY("Pinging no fill URLs.");
      zzab.zzaV().zza(zzlE.zzlN, zzlE.zzlP.zzzH, paramzzhe, zzlE.zzlM, false, zzyt.zzsv);
    }
    if (errorCode != -2)
    {
      zza(errorCode);
      return;
    }
    if ((!zzlE.zzlV.zzpb) && (!bool) && (zzlE.zzmj == 0))
    {
      if (!zzb(paramzzhe))
      {
        zza(0);
        return;
      }
      if (zzlE.zzlS != null) {
        zza.zza(zzlE.zzlS).zzV(zzwN);
      }
    }
    if ((zzlE.zzlW != null) && (zzlE.zzlW.zzsO != null)) {
      zzlE.zzlW.zzsO.zza(null);
    }
    if (zzsO != null) {
      zzsO.zza(this);
    }
    zzlG.zzd(zzlE.zzlW);
    zzlE.zzlW = paramzzhe;
    zzlE.zzlY.zzj(zzyv);
    zzlE.zzlY.zzk(zzyw);
    zzlE.zzlY.zzx(zzlE.zzlV.zzpb);
    zzlE.zzlY.zzy(zzwI);
    if ((!zzlE.zzlV.zzpb) && (!bool) && (zzlE.zzmj == 0)) {
      zze(false);
    }
    if (zzlE.zzmh == null) {
      zzlE.zzmh = new zzhj(zzlE.zzlM);
    }
    int j;
    int i;
    if (zzyt != null)
    {
      j = zzyt.zzsy;
      i = zzyt.zzsz;
    }
    for (;;)
    {
      zzlE.zzmh.zzg(j, i);
      if (zzlE.zzmj == 0)
      {
        if ((!zzlE.zzlV.zzpb) && (zzuq != null) && ((zzuq.zzeG().zzba()) || (zzys != null)))
        {
          zzaf localzzaf = zzlG.zza(zzlE.zzlV, zzlE.zzlW);
          if ((zzuq.zzeG().zzba()) && (localzzaf != null)) {
            localzzaf.zza(this);
          }
        }
        if (zzlE.zzlW.zzuq != null) {
          zzlE.zzlW.zzuq.zzeG().zzeR();
        }
        if (bool)
        {
          paramzzhe = zzyx;
          if (((paramzzhe instanceof zzcm)) && (zzlE.zzmd != null)) {
            zzau();
          }
        }
        else
        {
          zzas();
        }
      }
      for (;;)
      {
        if (zzab.zzaP().zzeg() == null) {
          break label789;
        }
        zzab.zzaP().zzeg().zza(zzlz);
        return;
        if (((paramzzhe instanceof zzcl)) && (zzlE.zzmc != null))
        {
          zzat();
          break;
        }
        zzhx.zzac("No matching listener for retrieved native ad template.");
        zza(0);
        return;
        if ((zzlE.zzmi != null) && (zzys != null)) {
          zzlG.zza(zzlE.zzlV, zzlE.zzlW, zzlE.zzmi);
        }
      }
      label789:
      break;
      i = 0;
      j = 0;
    }
  }
  
  public void zza(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new zzfe(paramString, paramArrayList, zzlE.zzlN, zzlE.zzlP.zzzH);
    if (zzlE.zzmb == null)
    {
      zzhx.zzac("InAppPurchaseListener is not set. Try to launch default purchase flow.");
      if (!zzbe.zzbD().zzA(zzlE.zzlN))
      {
        zzhx.zzac("Google Play Service unavailable, cannot launch default purchase flow.");
        return;
      }
      if (zzlE.zzma == null)
      {
        zzhx.zzac("PlayStorePurchaseListener is not set.");
        return;
      }
      if (zzlE.zzmg == null)
      {
        zzhx.zzac("PlayStorePurchaseVerifier is not initialized.");
        return;
      }
      if (zzlE.zzmk)
      {
        zzhx.zzac("An in-app purchase request is already in progress, abort");
        return;
      }
      zzlE.zzmk = true;
      try
      {
        if (!zzlE.zzma.isValidPurchase(paramString))
        {
          zzlE.zzmk = false;
          return;
        }
      }
      catch (RemoteException paramString)
      {
        zzhx.zzac("Could not start In-App purchase.");
        zzlE.zzmk = false;
        return;
      }
      zzab.zzaU().zza(zzlE.zzlN, zzlE.zzlP.zzzK, new zzfb(zzlE.zzlN, zzlE.zzmg, paramArrayList, this));
      return;
    }
    try
    {
      zzlE.zzmb.zza(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      zzhx.zzac("Could not start In-App purchase.");
    }
  }
  
  public void zza(String paramString, boolean paramBoolean, int paramInt, final Intent paramIntent, zzfg paramzzfg)
  {
    try
    {
      if (zzlE.zzma != null) {
        zzlE.zzma.zza(new zzfh(zzlE.zzlN, paramString, paramBoolean, paramInt, paramIntent, paramzzfg));
      }
      zzhw.zzzG.postDelayed(new Runnable()
      {
        public void run()
        {
          int i = zzab.zzaU().zzd(paramIntent);
          zzab.zzaU();
          if ((i == 0) && (zzazzlW != null) && (zzazzlW.zzuq != null) && (zzazzlW.zzuq.zzeF() != null)) {
            zzazzlW.zzuq.zzeF().close();
          }
          zzazzmk = false;
        }
      }, 500L);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        zzhx.zzac("Fail to invoke PlayStorePurchaseListener.");
      }
    }
  }
  
  public void zza(HashSet<zzhf> paramHashSet)
  {
    zzlE.zza(paramHashSet);
  }
  
  public void zza(List<String> paramList)
  {
    com.google.android.gms.common.internal.zzx.zzbd("setNativeTemplates must be called on the main UI thread.");
    zzlE.zzmf = paramList;
  }
  
  public boolean zza(zzax paramzzax)
  {
    com.google.android.gms.common.internal.zzx.zzbd("loadAd must be called on the main UI thread.");
    if ((zzlE.zzlQ != null) || (zzlE.zzlU != null))
    {
      if (zzlC != null) {
        zzhx.zzac("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
      }
      zzlC = paramzzax;
    }
    do
    {
      return false;
      if ((zzlE.zzlV.zzpb) && (zzlE.zzlW != null))
      {
        zzhx.zzac("An interstitial is already loading. Aborting.");
        return false;
      }
    } while (!zzav());
    zzhx.zzaa("Starting ad request.");
    zzab();
    zzlA = zzlz.zzcq();
    if (!zzoO) {
      zzhx.zzaa("Use AdRequest.Builder.addTestDevice(\"" + zzbe.zzbD().zzz(zzlE.zzlN) + "\") to get test ads on this device.");
    }
    Bundle localBundle = zza(zzab.zzaP().zzo(zzlE.zzlN));
    zzlF.cancel();
    zzlE.zzmj = 0;
    paramzzax = zza(paramzzax, localBundle);
    zzlE.zzlQ = zzab.zzaI().zza(zzlE.zzlN, paramzzax, zzlE.zzlO, this);
    return true;
  }
  
  boolean zza(zzhe paramzzhe, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (zzlC != null)
    {
      localObject = zzlC;
      zzlC = null;
      if (!zzlE.zzlV.zzpb) {
        break label105;
      }
      if (zzlE.zzmj == 0) {
        zzab.zzaO().zza(zzuq.getWebView());
      }
    }
    for (;;)
    {
      return zzlF.zzaG();
      zzax localzzax = zzwn;
      localObject = localzzax;
      if (extras == null) {
        break;
      }
      bool = extras.getBoolean("_noRefresh", false);
      localObject = localzzax;
      break;
      label105:
      if ((!(bool | paramBoolean)) && (zzlE.zzmj == 0)) {
        if (zzsx > 0L) {
          zzlF.zza((zzax)localObject, zzsx);
        } else if ((zzyt != null) && (zzyt.zzsx > 0L)) {
          zzlF.zza((zzax)localObject, zzyt.zzsx);
        } else if ((!zzwI) && (errorCode == 2)) {
          zzlF.zzc((zzax)localObject);
        }
      }
    }
  }
  
  void zzab()
  {
    zzlz = new zzcf("load_ad");
    zzlA = new zzce(-1L, null, null);
    zzlB = new zzce(-1L, null, null);
  }
  
  public zzd zzac()
  {
    com.google.android.gms.common.internal.zzx.zzbd("getAdFrame must be called on the main UI thread.");
    return zze.zzn(zzlE.zzlS);
  }
  
  public zzba zzad()
  {
    com.google.android.gms.common.internal.zzx.zzbd("getAdSize must be called on the main UI thread.");
    return zzlE.zzlV;
  }
  
  public void zzae()
  {
    zzaq();
  }
  
  public void zzaf()
  {
    zzlG.zzd(zzlE.zzlW);
    if (zzlE.zzlV.zzpb) {
      zzaw();
    }
    zzlH = false;
    zzap();
    zzlE.zzlY.zzdZ();
  }
  
  public void zzag()
  {
    if (zzlE.zzlV.zzpb) {
      zze(false);
    }
    zzlH = true;
    zzar();
  }
  
  public void zzah()
  {
    onAdClicked();
  }
  
  public void zzai()
  {
    zzaf();
  }
  
  public void zzaj()
  {
    zzae();
  }
  
  public void zzak()
  {
    zzag();
  }
  
  public void zzal()
  {
    if (zzlE.zzlW != null) {
      zzhx.zzac("Mediation adapter " + zzlE.zzlW.zzsN + " refreshed, but mediation adapters should never refresh.");
    }
    zze(true);
    zzas();
  }
  
  public void zzam()
  {
    zzap();
  }
  
  public void zzan()
  {
    com.google.android.gms.common.internal.zzx.zzbd("recordManualImpression must be called on the main UI thread.");
    if (zzlE.zzlW == null) {
      zzhx.zzac("Ad state was null when trying to ping manual tracking URLs.");
    }
    do
    {
      return;
      zzhx.zzY("Pinging manual tracking URLs.");
    } while (zzlE.zzlW.zzwK == null);
    zzab.zzaM().zza(zzlE.zzlN, zzlE.zzlP.zzzH, zzlE.zzlW.zzwK);
  }
  
  protected boolean zzao()
  {
    if (!(zzlE.zzlN instanceof Activity)) {
      return false;
    }
    Window localWindow = ((Activity)zzlE.zzlN).getWindow();
    if ((localWindow == null) || (localWindow.getDecorView() == null)) {
      return false;
    }
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    localWindow.getDecorView().getGlobalVisibleRect(localRect1, null);
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect2);
    return (bottom != 0) && (bottom != 0) && (top == top);
  }
  
  public boolean zzav()
  {
    boolean bool = true;
    if (!zzab.zzaM().zza(zzlE.zzlN.getPackageManager(), zzlE.zzlN.getPackageName(), "android.permission.INTERNET"))
    {
      if (!zzlE.zzlV.zzpb) {
        zzbe.zzbD().zza(zzlE.zzlS, zzlE.zzlV, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      }
      bool = false;
    }
    if (!zzab.zzaM().zzt(zzlE.zzlN))
    {
      if (!zzlE.zzlV.zzpb) {
        zzbe.zzbD().zza(zzlE.zzlS, zzlE.zzlV, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      }
      bool = false;
    }
    if ((!bool) && (!zzlE.zzlV.zzpb)) {
      zzlE.zzlS.setVisibility(0);
    }
    return bool;
  }
  
  public ArrayList<String> zzb(List<String> paramList)
  {
    String str = zzlE.zzlW.zzwD;
    int i = zzz.zzj(zzlE.zzlN).zzaF();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(zza((String)paramList.next(), str, i));
    }
    return localArrayList;
  }
  
  public void zzb(View paramView)
  {
    zzlE.zzmi = paramView;
    zza(new zzhe(zzlE.zzlX, null, null, null, null, null, null));
  }
  
  public void zzb(zzax paramzzax)
  {
    ViewParent localViewParent = zzlE.zzlS.getParent();
    if (((localViewParent instanceof View)) && (((View)localViewParent).isShown()) && (zzab.zzaM().zzes()) && (!zzlH))
    {
      zza(paramzzax);
      return;
    }
    zzhx.zzaa("Ad is not visible. Not refreshing ad.");
    zzlF.zzc(paramzzax);
  }
  
  protected void zzc(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -2);
    zzlE.zzlS.addView(paramView, localLayoutParams);
  }
  
  public void zzd(boolean paramBoolean)
  {
    zzlE.zzml = paramBoolean;
  }
  
  @zzgi
  public static final class zza
    extends ViewSwitcher
  {
    private final zzhs zzlL;
    
    public zza(Context paramContext)
    {
      super();
      zzlL = new zzhs(paramContext);
    }
    
    public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      zzlL.zzc(paramMotionEvent);
      return false;
    }
    
    public final void removeAllViews()
    {
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if ((localView != null) && ((localView instanceof zzic))) {
          ((zzic)localView).destroy();
        }
        i += 1;
      }
      super.removeAllViews();
    }
  }
  
  @zzgi
  static class zzb
    implements ViewTreeObserver.OnGlobalLayoutListener
  {
    public final String zzlM;
    public final Context zzlN;
    public final zzk zzlO;
    public final zzhy zzlP;
    public zzhl zzlQ;
    public zzbg zzlR;
    public zzt.zza zzlS;
    public zzbh zzlT;
    public zzhl zzlU;
    public zzba zzlV;
    public zzhe zzlW;
    public zzhe.zza zzlX;
    public zzhf zzlY;
    public zzbk zzlZ;
    public zzfs zzma;
    public zzfo zzmb;
    public zzcq zzmc;
    public zzcr zzmd;
    public zzcj zzme;
    public List<String> zzmf;
    public zzfl zzmg;
    public zzhj zzmh = null;
    public View zzmi = null;
    public int zzmj = 0;
    public boolean zzmk = false;
    public boolean zzml = false;
    public zzbl zzmm;
    private HashSet<zzhf> zzmn = null;
    private int zzmo = -1;
    private int zzmp = -1;
    
    public zzb(Context paramContext, zzba paramzzba, String paramString, zzhy paramzzhy)
    {
      this(paramContext, paramzzba, paramString, paramzzhy, null);
    }
    
    zzb(Context paramContext, zzba paramzzba, String paramString, zzhy paramzzhy, zzk paramzzk)
    {
      if (zzpb)
      {
        zzlS = null;
        if ((paramContext != null) && ((paramContext instanceof Activity)) && (zzlS != null)) {
          zzab.zzaM().zza((Activity)paramContext, this);
        }
        zzlV = paramzzba;
        zzlM = paramString;
        zzlN = paramContext;
        zzlP = paramzzhy;
        if (paramzzk == null) {
          break label163;
        }
      }
      for (;;)
      {
        zzlO = paramzzk;
        return;
        zzlS = new zzt.zza(paramContext);
        zzlS.setMinimumWidth(widthPixels);
        zzlS.setMinimumHeight(heightPixels);
        zzlS.setVisibility(4);
        break;
        label163:
        paramzzk = new zzk(new zzw(this));
      }
    }
    
    public void destroy()
    {
      zzlT = null;
      zzlZ = null;
      zzma = null;
      zzmb = null;
      zzme = null;
      zzmm = null;
      if ((zzlN != null) && ((zzlN instanceof Activity)) && (zzlS != null)) {
        zzab.zzaO().zzb((Activity)zzlN, this);
      }
      zzf(false);
      if (zzlS != null) {
        zzlS.removeAllViews();
      }
      zzay();
      zzaA();
      zzlW = null;
    }
    
    public void onGlobalLayout()
    {
      if ((zzlS == null) || (zzlW == null) || (zzlW.zzuq == null) || (!zzlW.zzuq.zzeG().zzba())) {}
      int i;
      int j;
      do
      {
        return;
        int[] arrayOfInt = new int[2];
        zzlS.getLocationOnScreen(arrayOfInt);
        i = zzbe.zzbD().zzc(zzlN, arrayOfInt[0]);
        j = zzbe.zzbD().zzc(zzlN, arrayOfInt[1]);
      } while ((i == zzmo) && (j == zzmp));
      zzmo = i;
      zzmp = j;
      zzlW.zzuq.zzeG().zzb(zzmo, zzmp);
    }
    
    public void zza(HashSet<zzhf> paramHashSet)
    {
      zzmn = paramHashSet;
    }
    
    public void zzaA()
    {
      if ((zzlW != null) && (zzlW.zzsM != null)) {}
      try
      {
        zzlW.zzsM.destroy();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        zzhx.zzac("Could not destroy mediation adapter.");
      }
    }
    
    public HashSet<zzhf> zzax()
    {
      return zzmn;
    }
    
    public void zzay()
    {
      if ((zzlW != null) && (zzlW.zzuq != null)) {
        zzlW.zzuq.destroy();
      }
    }
    
    public void zzaz()
    {
      if ((zzlW != null) && (zzlW.zzuq != null)) {
        zzlW.zzuq.stopLoading();
      }
    }
    
    public void zzf(boolean paramBoolean)
    {
      if (zzmj == 0) {
        zzaz();
      }
      if (zzlQ != null) {
        zzlQ.cancel();
      }
      if (zzlU != null) {
        zzlU.cancel();
      }
      if (paramBoolean) {
        zzlW = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */