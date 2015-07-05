package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@zzgi
public class zzid
  extends WebViewClient
{
  protected final zzic zzmu;
  private boolean zzng;
  private final Object zznh = new Object();
  private zzat zzoJ;
  private zzcy zzrJ;
  private zzu zzrK;
  private zzeb zzrL;
  private zzcw zzrN;
  private zzct zzry;
  private zzeh zztq;
  private zza zzvD;
  private final HashMap<String, List<zzcv>> zzzQ = new HashMap();
  private zzep zzzR;
  private boolean zzzS = false;
  private zzes zzzT;
  private final zzef zzzU;
  private boolean zzzV;
  private boolean zzzW;
  private int zzzX;
  
  public zzid(zzic paramzzic, boolean paramBoolean)
  {
    this(paramzzic, paramBoolean, new zzef(paramzzic, paramzzic.zzeE(), new zzbu(paramzzic.getContext())));
  }
  
  zzid(zzic paramzzic, boolean paramBoolean, zzef paramzzef)
  {
    zzmu = paramzzic;
    zzng = paramBoolean;
    zzzU = paramzzef;
  }
  
  private void zzeN()
  {
    zzzX += 1;
    zzeQ();
  }
  
  private void zzeO()
  {
    zzzX -= 1;
    zzeQ();
  }
  
  private void zzeP()
  {
    zzzW = true;
    zzeQ();
  }
  
  private static boolean zzf(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  private void zzg(Uri paramUri)
  {
    Object localObject2 = paramUri.getPath();
    Object localObject1 = (List)zzzQ.get(localObject2);
    if (localObject1 != null)
    {
      paramUri = zzab.zzaM().zzd(paramUri);
      if (zzhx.zzA(2))
      {
        zzhx.zzab("Received GMSG: " + (String)localObject2);
        localObject2 = paramUri.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          zzhx.zzab("  " + str + ": " + (String)paramUri.get(str));
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((zzcv)((Iterator)localObject1).next()).zza(zzmu, paramUri);
      }
    }
    zzhx.zzab("No GMSG handler found for GMSG: " + paramUri);
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    zzhx.zzab("Loading resource: " + paramString);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      zzg(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    zzzV = true;
    zzeQ();
  }
  
  public final void reset()
  {
    synchronized (zznh)
    {
      zzzQ.clear();
      zzoJ = null;
      zzzR = null;
      zzvD = null;
      zzry = null;
      zzzS = false;
      zzng = false;
      zzrN = null;
      zzzT = null;
      if (zzrL != null)
      {
        zzrL.zzm(true);
        zzrL = null;
      }
      return;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    zzhx.zzab("AdWebView shouldOverrideUrlLoading: " + paramString);
    Uri localUri = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(localUri.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(localUri.getHost()))) {
      zzg(localUri);
    }
    for (;;)
    {
      return true;
      if ((zzzS) && (paramWebView == zzmu) && (zzf(localUri))) {
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      if (!zzmu.willNotDraw())
      {
        try
        {
          zzk localzzk = zzmu.zzeI();
          paramWebView = localUri;
          if (localzzk != null)
          {
            paramWebView = localUri;
            if (localzzk.zzb(localUri)) {
              paramWebView = localzzk.zza(localUri, zzmu.getContext());
            }
          }
        }
        catch (zzl paramWebView)
        {
          for (;;)
          {
            zzhx.zzac("Unable to append parameter to URL: " + paramString);
            paramWebView = localUri;
          }
          zzrK.zzd(paramString);
        }
        if ((zzrK == null) || (zzrK.zzaB())) {
          zza(new zzek("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
        }
      }
      else
      {
        zzhx.zzac("AdWebView unable to handle URL: " + paramString);
      }
    }
  }
  
  public void zzC(boolean paramBoolean)
  {
    zzzS = paramBoolean;
  }
  
  public final void zza(zzek paramzzek)
  {
    zzep localzzep = null;
    boolean bool = zzmu.zzeK();
    zzat localzzat;
    if ((bool) && (!zzmu.zzad().zzpb))
    {
      localzzat = null;
      if (!bool) {
        break label75;
      }
    }
    for (;;)
    {
      zza(new zzeo(paramzzek, localzzat, localzzep, zzzT, zzmu.zzeJ()));
      return;
      localzzat = zzoJ;
      break;
      label75:
      localzzep = zzzR;
    }
  }
  
  public void zza(zzeo paramzzeo)
  {
    boolean bool2 = false;
    if (zzrL != null) {}
    for (boolean bool1 = zzrL.zzcP();; bool1 = false)
    {
      zzem localzzem = zzab.zzaK();
      Context localContext = zzmu.getContext();
      if (!bool1) {
        bool2 = true;
      }
      localzzem.zza(localContext, paramzzeo, bool2);
      return;
    }
  }
  
  public void zza(zza paramzza)
  {
    zzvD = paramzza;
  }
  
  public final void zza(String paramString, zzcv paramzzcv)
  {
    synchronized (zznh)
    {
      List localList = (List)zzzQ.get(paramString);
      Object localObject1 = localList;
      if (localList == null)
      {
        localObject1 = new ArrayList();
        zzzQ.put(paramString, localObject1);
      }
      ((List)localObject1).add(paramzzcv);
      return;
    }
  }
  
  public final void zza(boolean paramBoolean, int paramInt)
  {
    if ((zzmu.zzeK()) && (!zzmu.zzad().zzpb)) {}
    for (zzat localzzat = null;; localzzat = zzoJ)
    {
      zza(new zzeo(localzzat, zzzR, zzzT, zzmu, paramBoolean, paramInt, zzmu.zzeJ()));
      return;
    }
  }
  
  public final void zza(boolean paramBoolean, int paramInt, String paramString)
  {
    zzep localzzep = null;
    boolean bool = zzmu.zzeK();
    zzat localzzat;
    if ((bool) && (!zzmu.zzad().zzpb))
    {
      localzzat = null;
      if (!bool) {
        break label95;
      }
    }
    for (;;)
    {
      zza(new zzeo(localzzat, localzzep, zzry, zzzT, zzmu, paramBoolean, paramInt, paramString, zzmu.zzeJ(), zzrN));
      return;
      localzzat = zzoJ;
      break;
      label95:
      localzzep = zzzR;
    }
  }
  
  public final void zza(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = zzmu.zzeK();
    zzat localzzat;
    if ((bool) && (!zzmu.zzad().zzpb))
    {
      localzzat = null;
      if (!bool) {
        break label97;
      }
    }
    label97:
    for (zzep localzzep = null;; localzzep = zzzR)
    {
      zza(new zzeo(localzzat, localzzep, zzry, zzzT, zzmu, paramBoolean, paramInt, paramString1, paramString2, zzmu.zzeJ(), zzrN));
      return;
      localzzat = zzoJ;
      break;
    }
  }
  
  public void zzb(int paramInt1, int paramInt2)
  {
    zzzU.zzf(paramInt1, paramInt2);
    if (zzrL != null) {
      zzrL.zzb(paramInt1, paramInt2);
    }
  }
  
  public void zzb(zzat paramzzat, zzep paramzzep, zzct paramzzct, zzes paramzzes, boolean paramBoolean, zzcw paramzzcw, zzcy paramzzcy, zzu paramzzu, zzeh paramzzeh)
  {
    zzu localzzu = paramzzu;
    if (paramzzu == null) {
      localzzu = new zzu(false);
    }
    zzrL = new zzeb(zzmu, paramzzeh);
    zza("/appEvent", new zzcs(paramzzct));
    zza("/canOpenURLs", zzcu.zzrA);
    zza("/canOpenIntents", zzcu.zzrB);
    zza("/click", zzcu.zzrC);
    zza("/close", zzcu.zzrD);
    zza("/customClose", zzcu.zzrE);
    zza("/delayPageLoaded", new zzb(null));
    zza("/httpTrack", zzcu.zzrF);
    zza("/log", zzcu.zzrG);
    zza("/mraid", new zzcz(localzzu, zzrL));
    zza("/open", new zzda(paramzzcw, localzzu, zzrL));
    zza("/touch", zzcu.zzrH);
    zza("/video", zzcu.zzrI);
    if (paramzzcy != null) {
      zza("/setInterstitialProperties", new zzcx(paramzzcy));
    }
    zzoJ = paramzzat;
    zzzR = paramzzep;
    zzry = paramzzct;
    zzrN = paramzzcw;
    zzzT = paramzzes;
    zzrK = localzzu;
    zztq = paramzzeh;
    zzrJ = paramzzcy;
    zzC(paramBoolean);
  }
  
  public final void zzb(String paramString, zzcv paramzzcv)
  {
    synchronized (zznh)
    {
      paramString = (List)zzzQ.get(paramString);
      if (paramString == null) {
        return;
      }
      paramString.remove(paramzzcv);
      return;
    }
  }
  
  public boolean zzba()
  {
    synchronized (zznh)
    {
      boolean bool = zzng;
      return bool;
    }
  }
  
  public final void zzde()
  {
    synchronized (zznh)
    {
      zzzS = false;
      zzng = true;
      zzmu.zzeL();
      final zzel localzzel = zzmu.zzeF();
      if (localzzel != null)
      {
        if (!zzbe.zzbD().zzeC()) {
          zzhw.zzzG.post(new Runnable()
          {
            public void run()
            {
              localzzel.zzde();
            }
          });
        }
      }
      else {
        return;
      }
      localzzel.zzde();
    }
  }
  
  public void zze(int paramInt1, int paramInt2)
  {
    if (zzrL != null) {
      zzrL.zze(paramInt1, paramInt2);
    }
  }
  
  public zzu zzeM()
  {
    return zzrK;
  }
  
  public final void zzeQ()
  {
    zza localzza;
    zzic localzzic;
    if ((zzvD != null) && (((zzzV) && (zzzX == 0)) || (zzzW)))
    {
      localzza = zzvD;
      localzzic = zzmu;
      if (zzzW) {
        break label61;
      }
    }
    label61:
    for (boolean bool = true;; bool = false)
    {
      localzza.zza(localzzic, bool);
      zzvD = null;
      return;
    }
  }
  
  public void zzeR()
  {
    if (zzba()) {
      zzzU.zzcV();
    }
  }
  
  public static abstract interface zza
  {
    public abstract void zza(zzic paramzzic, boolean paramBoolean);
  }
  
  class zzb
    implements zzcv
  {
    private zzb() {}
    
    public void zza(zzic paramzzic, Map<String, String> paramMap)
    {
      if (paramMap.keySet().contains("start")) {
        zzid.zza(zzid.this);
      }
      do
      {
        return;
        if (paramMap.keySet().contains("stop"))
        {
          zzid.zzb(zzid.this);
          return;
        }
      } while (!paramMap.keySet().contains("cancel"));
      zzid.zzc(zzid.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */