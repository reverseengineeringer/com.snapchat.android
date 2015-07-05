package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzgt
  implements Callable<zzhe>
{
  private final Context mContext;
  private final Object zznh = new Object();
  private final zzt zzrv;
  private final zzhe.zza zzvN;
  private int zzvR;
  private final zzht zzwV;
  private final zzai zzwW;
  private boolean zzwX;
  private List<String> zzwY;
  
  public zzgt(Context paramContext, zzt paramzzt, zzai paramzzai, zzht paramzzht, zzhe.zza paramzza)
  {
    mContext = paramContext;
    zzrv = paramzzt;
    zzwV = paramzzht;
    zzwW = paramzzai;
    zzvN = paramzza;
    zzwX = false;
    zzvR = -2;
    zzwY = null;
  }
  
  private zzcn.zza zza(zzah paramzzah, zza paramzza, JSONObject paramJSONObject)
  {
    if (zzdO()) {
      return null;
    }
    Object localObject = zzb(paramJSONObject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
    if (localObject == null) {}
    for (localObject = null;; localObject = Arrays.asList((Object[])localObject))
    {
      zzwY = ((List)localObject);
      paramzza = paramzza.zza(this, paramJSONObject);
      if (paramzza != null) {
        break;
      }
      zzhx.zzZ("Failed to retrieve ad assets.");
      return null;
    }
    paramzza.zza(new zzcn(zzrv, paramzzah, paramJSONObject));
    return paramzza;
  }
  
  private zzhe zza(zzcn.zza paramzza)
  {
    for (;;)
    {
      synchronized (zznh)
      {
        int j = zzvR;
        int i = j;
        if (paramzza == null)
        {
          i = j;
          if (zzvR == -2) {
            i = 0;
          }
        }
        if (i != -2)
        {
          paramzza = null;
          return new zzhe(zzvN.zzyy.zzwn, null, zzvN.zzyz.zzst, i, zzvN.zzyz.zzsu, zzwY, zzvN.zzyz.orientation, zzvN.zzyz.zzsx, zzvN.zzyy.zzwq, false, null, null, null, null, null, 0L, zzvN.zzlV, zzvN.zzyz.zzwH, zzvN.zzyv, zzvN.zzyw, zzvN.zzyz.zzwN, zzvN.zzys, paramzza, zzvN.zzyy.zzwD);
        }
      }
    }
  }
  
  private String[] zzb(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject == null) {
      return null;
    }
    paramString = new String[paramJSONObject.length()];
    int i = 0;
    while (i < paramJSONObject.length())
    {
      paramString[i] = paramJSONObject.getString(i);
      i += 1;
    }
    return paramString;
  }
  
  private JSONObject zzc(final zzah paramzzah)
  {
    if (zzdO()) {
      return null;
    }
    final zzhq localzzhq = new zzhq();
    final zzb localzzb = new zzb();
    zzcv local1 = new zzcv()
    {
      public void zza(zzic paramAnonymouszzic, Map<String, String> paramAnonymousMap)
      {
        paramzzah.zzb("/nativeAdPreProcess", localzzbzzxe);
        try
        {
          paramAnonymouszzic = (String)paramAnonymousMap.get("success");
          if (!TextUtils.isEmpty(paramAnonymouszzic))
          {
            localzzhq.zzb(new JSONObject(paramAnonymouszzic).getJSONArray("ads").getJSONObject(0));
            return;
          }
        }
        catch (JSONException paramAnonymouszzic)
        {
          zzhx.zzb("Malformed native JSON response.", paramAnonymouszzic);
          zzx(0);
          zzx.zza(zzdO(), "Unable to set the ad state error!");
          localzzhq.zzb(null);
        }
      }
    };
    zzxe = local1;
    paramzzah.zza("/nativeAdPreProcess", local1);
    paramzzah.zza("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(zzvN.zzyz.zzwG));
    return (JSONObject)localzzhq.get();
  }
  
  private zzah zzdN()
  {
    if (zzdO()) {
      return null;
    }
    zzah localzzah = (zzah)zzwW.zza(mContext, zzvN.zzyy.zzlP, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html").get();
    localzzah.zza(zzrv, zzrv, zzrv, zzrv, false, zzrv, zzrv, null, zzrv);
    return localzzah;
  }
  
  public Future<Drawable> zza(JSONObject paramJSONObject, String paramString, final boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      paramString = paramJSONObject;
      if (paramJSONObject == null) {
        paramString = new JSONObject();
      }
      if (!paramBoolean) {
        break label66;
      }
    }
    label66:
    for (paramJSONObject = paramString.getString("url");; paramJSONObject = paramString.optString("url"))
    {
      if (!TextUtils.isEmpty(paramJSONObject)) {
        break label76;
      }
      zza(0, paramBoolean);
      return new zzhr(null);
      paramJSONObject = paramJSONObject.optJSONObject(paramString);
      break;
    }
    label76:
    zzwV.zza(paramJSONObject, new zzht.zza()
    {
      public Drawable zza(InputStream paramAnonymousInputStream)
      {
        try
        {
          paramAnonymousInputStream = zzlz.zzd(paramAnonymousInputStream);
          if (paramAnonymousInputStream == null)
          {
            zza(2, paramBoolean);
            return null;
          }
        }
        catch (IOException paramAnonymousInputStream)
        {
          for (;;)
          {
            paramAnonymousInputStream = null;
          }
          paramAnonymousInputStream = BitmapFactory.decodeByteArray(paramAnonymousInputStream, 0, paramAnonymousInputStream.length);
          if (paramAnonymousInputStream == null)
          {
            zza(2, paramBoolean);
            return null;
          }
        }
        return new BitmapDrawable(Resources.getSystem(), paramAnonymousInputStream);
      }
      
      public Drawable zzdP()
      {
        zza(2, paramBoolean);
        return null;
      }
    });
  }
  
  public void zza(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      zzx(paramInt);
    }
  }
  
  protected zza zzc(JSONObject paramJSONObject)
  {
    if (zzdO()) {
      return null;
    }
    paramJSONObject = paramJSONObject.getString("template_id");
    if ("2".equals(paramJSONObject)) {
      return new zzgu();
    }
    if ("1".equals(paramJSONObject)) {
      return new zzgv();
    }
    zzx(0);
    return null;
  }
  
  public zzhe zzdM()
  {
    try
    {
      Object localObject = zzdN();
      JSONObject localJSONObject = zzc((zzah)localObject);
      localObject = zza(zza((zzah)localObject, zzc(localJSONObject), localJSONObject));
      return (zzhe)localObject;
    }
    catch (JSONException localJSONException)
    {
      zzhx.zzd("Malformed native JSON response.", localJSONException);
      if (!zzwX) {
        zzx(0);
      }
      return zza(null);
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        zzhx.zzd("Timeout when loading native ad.", localTimeoutException);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
    catch (CancellationException localCancellationException)
    {
      for (;;) {}
    }
  }
  
  public boolean zzdO()
  {
    synchronized (zznh)
    {
      boolean bool = zzwX;
      return bool;
    }
  }
  
  public void zzx(int paramInt)
  {
    synchronized (zznh)
    {
      zzwX = true;
      zzvR = paramInt;
      return;
    }
  }
  
  public static abstract interface zza<T extends zzcn.zza>
  {
    public abstract T zza(zzgt paramzzgt, JSONObject paramJSONObject);
  }
  
  class zzb
  {
    public zzcv zzxe;
    
    zzb() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */