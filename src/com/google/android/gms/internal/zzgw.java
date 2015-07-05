package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebView;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public final class zzgw
  extends zzgs.zza
{
  private static final Object zzmz = new Object();
  private static zzgw zzxf;
  private final Context mContext;
  private final zzdf zznr;
  private final zzhc zzxg;
  private final zzdg zzxh;
  private final zzbv zzxi;
  
  zzgw(Context paramContext, zzbv paramzzbv, zzdg paramzzdg, zzhc paramzzhc)
  {
    mContext = paramContext;
    zzxg = paramzzhc;
    zzxh = paramzzdg;
    zzxi = paramzzbv;
    if (paramContext.getApplicationContext() != null) {
      paramContext = paramContext.getApplicationContext();
    }
    for (;;)
    {
      zznr = new zzdf(paramContext, new zzhy(7095000, 7095000, true), paramzzbv.zzbV(), new zzia.zzd()new zzia.zzc
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          paramAnonymouszzah.zza("/log", zzcu.zzrG);
        }
      }, new zzia.zzc());
      return;
    }
  }
  
  private static zzgq zza(Context paramContext, final zzdf paramzzdf, final zzbv paramzzbv, final zzdg paramzzdg, zzhc paramzzhc, final zzgo paramzzgo)
  {
    zzhx.zzY("Starting ad request from service.");
    zzab.zzaP().zzb(paramContext, zzlP);
    zzca.zzl(paramContext);
    final zzcf localzzcf = new zzcf("load_ad");
    zzce localzzce = localzzcf.zzcq();
    paramzzdg.init();
    zzhb localzzhb = new zzhb(paramContext);
    if (zzyj == -1)
    {
      zzhx.zzY("Device is offline.");
      return new zzgq(2);
    }
    if (versionCode >= 7) {}
    final zzgy localzzgy;
    for (final Object localObject = zzwF;; localObject = UUID.randomUUID().toString())
    {
      localzzgy = new zzgy((String)localObject, applicationInfo.packageName);
      if (zzwn.extras == null) {
        break;
      }
      String str = zzwn.extras.getString("_ad");
      if (str == null) {
        break;
      }
      return zzgx.zza(paramContext, paramzzgo, str);
    }
    paramzzdg = zzgx.zza(paramzzgo, localzzhb, paramzzdg.zzb(250L), paramzzbv);
    if (versionCode < 7) {}
    try
    {
      paramzzdg.put("request_id", localObject);
      if (paramzzdg == null) {
        return new zzgq(0);
      }
      paramzzdg = paramzzdg.toString();
      localzzcf.zza(localzzce, new String[] { "arc" });
      localObject = localzzcf.zzcq();
      if (((Boolean)zzca.zzqm.get()).booleanValue()) {
        zzhw.zzzG.post(new Runnable()
        {
          public final void run()
          {
            zzia localzzia = zzxj.zzcJ();
            localzzgy.zze(localzzia);
            localzzcf.zza(localObject, new String[] { "rwc" });
            localzzia.zza(new zzia.zzd()new zzia.zza
            {
              public void zzb(zzah paramAnonymous2zzah)
              {
                zzxl.zza(zzxo, new String[] { "jsf" });
                paramAnonymous2zzah.zza("/invalidRequest", zzxk.zzxz);
                paramAnonymous2zzah.zza("/loadAdURL", zzxk.zzxA);
                try
                {
                  paramAnonymous2zzah.zzb("AFMA_buildAdURL", zzxn);
                  return;
                }
                catch (Exception paramAnonymous2zzah)
                {
                  zzhx.zzb("Error requesting an ad url", paramAnonymous2zzah);
                }
              }
            }, new zzia.zza()
            {
              public void run() {}
            });
          }
        });
      }
      for (;;)
      {
        try
        {
          paramzzdg = (zzha)localzzgy.zzdS().get(10L, TimeUnit.SECONDS);
          if (paramzzdg != null) {
            continue;
          }
          paramContext = new zzgq(0);
          return paramContext;
        }
        catch (Exception paramContext)
        {
          paramContext = new zzgq(0);
          return paramContext;
          if (paramzzdg.getErrorCode() == -2) {
            continue;
          }
          paramContext = new zzgq(paramzzdg.getErrorCode());
          return paramContext;
          if (localzzcf.zzcu() == null) {
            continue;
          }
          localzzcf.zza(localzzcf.zzcu(), new String[] { "rur" });
          paramzzbv = null;
          if (!paramzzdg.zzdW()) {
            continue;
          }
          paramzzbv = paramzzhc.zzR(zzwo.packageName);
          paramzzhc = localzzcf.zzcq();
          paramContext = zza(paramContext, zzlP.zzzH, paramzzdg.getUrl(), paramzzbv, paramzzdg);
          localzzcf.zza(paramzzhc, new String[] { "ufe" });
          localzzcf.zza(localzzce, new String[] { "tts" });
          if (zzhk.zzeg() == null) {
            continue;
          }
          zzhk.zzeg().zza(localzzcf);
          return paramContext;
        }
        finally
        {
          zzhw.zzzG.post(new Runnable()
          {
            public final void run()
            {
              zzxk.zzdT();
              if (zzxk.zzdR() != null)
              {
                zzxk.zzdR().zza(new zzia.zzd()new zzia.zzb
                {
                  public void zzb(zzah paramAnonymous2zzah)
                  {
                    paramAnonymous2zzah.zzb("/invalidRequest", zzxk.zzxz);
                    paramAnonymous2zzah.zzb("/loadAdURL", zzxk.zzxA);
                  }
                }, new zzia.zzb());
                paramzzdf.zzb(zzxk.zzdR());
              }
            }
          });
        }
        zzhw.zzzG.post(new Runnable()
        {
          public final void run()
          {
            zzic localzzic = zzab.zzaN().zza(zznK, new zzba(), false, false, null, paramzzgozzlP);
            if (zzab.zzaP().zzem()) {
              localzzic.getWebView().clearCache(true);
            }
            localzzic.setWillNotDraw(true);
            localzzgy.zza(localzzic);
            localzzcf.zza(localObject, new String[] { "rwc" });
            Object localObject = localzzcf.zzcq();
            localObject = zzgw.zzb(paramzzdg, localzzcf, (zzce)localObject);
            zzid localzzid = localzzic.zzeG();
            localzzid.zza("/invalidRequest", localzzgyzzxz);
            localzzid.zza("/loadAdURL", localzzgyzzxA);
            localzzid.zza("/log", zzcu.zzrG);
            localzzid.zza((zzid.zza)localObject);
            zzhx.zzY("Loading the JS library.");
            localzzic.loadUrl(paramzzbv.zzbV());
          }
        });
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  public static zzgq zza(Context paramContext, String paramString1, String paramString2, String paramString3, zzha paramzzha)
  {
    try
    {
      localzzgz = new zzgz();
      zzhx.zzY("AdRequestServiceImpl: Sending request: " + paramString2);
      paramString2 = new URL(paramString2);
      l = SystemClock.elapsedRealtime();
      i = 0;
    }
    catch (IOException paramContext)
    {
      try
      {
        for (;;)
        {
          zzgz localzzgz;
          long l;
          int i;
          zzab.zzaM().zza(paramContext, paramString1, false, localHttpURLConnection);
          if (!TextUtils.isEmpty(paramString3)) {
            localHttpURLConnection.addRequestProperty("x-afma-drt-cookie", paramString3);
          }
          if ((paramzzha != null) && (!TextUtils.isEmpty(paramzzha.zzdV())))
          {
            localHttpURLConnection.setDoOutput(true);
            localObject = paramzzha.zzdV().getBytes();
            localHttpURLConnection.setFixedLengthStreamingMode(localObject.length);
            BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
            localBufferedOutputStream.write((byte[])localObject);
            localBufferedOutputStream.close();
          }
          int j = localHttpURLConnection.getResponseCode();
          Object localObject = localHttpURLConnection.getHeaderFields();
          if ((j >= 200) && (j < 300))
          {
            paramContext = paramString2.toString();
            paramString1 = zzab.zzaM().zza(new InputStreamReader(localHttpURLConnection.getInputStream()));
            zza(paramContext, (Map)localObject, paramString1, j);
            localzzgz.zza(paramContext, (Map)localObject, paramString1);
            paramContext = localzzgz.zzi(l);
            return paramContext;
          }
          zza(paramString2.toString(), (Map)localObject, null, j);
          if ((j >= 300) && (j < 400))
          {
            paramString2 = localHttpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(paramString2))
            {
              zzhx.zzac("No location header to follow redirect.");
              paramContext = new zzgq(0);
              return paramContext;
            }
            paramString2 = new URL(paramString2);
            i += 1;
            if (i > 5)
            {
              zzhx.zzac("Too many redirects.");
              paramContext = new zzgq(0);
              return paramContext;
            }
          }
          else
          {
            zzhx.zzac("Received error HTTP response code: " + j);
            paramContext = new zzgq(0);
            return paramContext;
          }
          localzzgz.zzh((Map)localObject);
          localHttpURLConnection.disconnect();
        }
      }
      finally
      {
        HttpURLConnection localHttpURLConnection;
        localHttpURLConnection.disconnect();
      }
      paramContext = paramContext;
      zzhx.zzac("Error while connecting to ad server: " + paramContext.getMessage());
      return new zzgq(2);
    }
    localHttpURLConnection = (HttpURLConnection)paramString2.openConnection();
  }
  
  public static zzgw zza(Context paramContext, zzbv paramzzbv, zzdg paramzzdg, zzhc paramzzhc)
  {
    synchronized (zzmz)
    {
      if (zzxf == null)
      {
        Context localContext = paramContext;
        if (paramContext.getApplicationContext() != null) {
          localContext = paramContext.getApplicationContext();
        }
        zzxf = new zzgw(localContext, paramzzbv, paramzzdg, paramzzhc);
      }
      paramContext = zzxf;
      return paramContext;
    }
  }
  
  private static zzid.zza zza(final String paramString, zzcf paramzzcf, final zzce paramzzce)
  {
    new zzid.zza()
    {
      public final void zza(zzic paramAnonymouszzic, boolean paramAnonymousBoolean)
      {
        zzxl.zza(paramzzce, new String[] { "jsf" });
        zzxl.zzcr();
        paramAnonymouszzic.zzb("AFMA_buildAdURL", paramString);
      }
    };
  }
  
  private static void zza(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (zzhx.zzA(2))
    {
      zzhx.zzab("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          zzhx.zzab("    " + (String)localObject + ":");
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            zzhx.zzab("      " + str);
          }
        }
      }
      zzhx.zzab("  Body:");
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          zzhx.zzab(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
          i += 1000;
        }
      }
      zzhx.zzab("    null");
      zzhx.zzab("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  public final zzgq zzd(zzgo paramzzgo)
  {
    zzhk.zzd(mContext, zzlP.zzzH);
    return zza(mContext, zznr, zzxi, zzxh, zzxg, paramzzgo);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */