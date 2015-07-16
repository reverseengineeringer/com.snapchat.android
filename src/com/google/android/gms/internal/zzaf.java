package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzaf
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private boolean zzmJ = false;
  private boolean zznA;
  private boolean zznB;
  private BroadcastReceiver zznC;
  private final HashSet<zzac> zznD = new HashSet();
  private final zzcv zznE = new zzcv()
  {
    public void zza(zzic paramAnonymouszzic, Map<String, String> paramAnonymousMap)
    {
      if (!zza(paramAnonymousMap)) {
        return;
      }
      zza(paramAnonymouszzic.getWebView(), paramAnonymousMap);
    }
  };
  private final zzcv zznF = new zzcv()
  {
    public void zza(zzic paramAnonymouszzic, Map<String, String> paramAnonymousMap)
    {
      if (!zza(paramAnonymousMap)) {
        return;
      }
      zzhx.zzY("Received request to untrack: " + zzaf.zzb(zzaf.this).zzaZ());
      destroy();
    }
  };
  private final zzcv zznG = new zzcv()
  {
    public void zza(zzic paramAnonymouszzic, Map<String, String> paramAnonymousMap)
    {
      if (!zza(paramAnonymousMap)) {}
      while (!paramAnonymousMap.containsKey("isVisible")) {
        return;
      }
      if (("1".equals(paramAnonymousMap.get("isVisible"))) || ("true".equals(paramAnonymousMap.get("isVisible")))) {}
      for (boolean bool = true;; bool = false)
      {
        zzg(Boolean.valueOf(bool).booleanValue());
        return;
      }
    }
  };
  private final Object zznh = new Object();
  private final Context zznk;
  private final WeakReference<zzhe> zznn;
  private WeakReference<ViewTreeObserver> zzno;
  private final WeakReference<View> zznp;
  private final zzad zznq;
  private final zzdf zznr;
  private final zzia<zzah> zzns;
  private boolean zznt;
  private final WindowManager zznu;
  private final PowerManager zznv;
  private final KeyguardManager zznw;
  private zzag zznx;
  private boolean zzny = false;
  private long zznz = Long.MIN_VALUE;
  
  public zzaf(final zzba paramzzba, zzhe paramzzhe, zzhy paramzzhy, View paramView, zzdf paramzzdf)
  {
    zznr = paramzzdf;
    zznn = new WeakReference(paramzzhe);
    zznp = new WeakReference(paramView);
    zzno = new WeakReference(null);
    zznA = true;
    zznq = new zzad(UUID.randomUUID().toString(), paramzzhy, zzpa, zzys, paramzzhe.zzba());
    zzns = zznr.zzcJ();
    zznu = ((WindowManager)paramView.getContext().getSystemService("window"));
    zznv = ((PowerManager)paramView.getContext().getApplicationContext().getSystemService("power"));
    zznw = ((KeyguardManager)paramView.getContext().getSystemService("keyguard"));
    zznk = paramView.getContext().getApplicationContext();
    try
    {
      paramzzba = zzd(paramView);
      zzns.zza(new zzia.zzd()new zzia.zza
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          zza(paramzzba);
        }
      }, new zzia.zza()
      {
        public void run() {}
      });
      zzns.zza(new zzia.zzd()new zzia.zza
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          zzaf.zzb(zzaf.this, true);
          zza(paramAnonymouszzah);
          zzbb();
          zzh(false);
        }
      }, new zzia.zza()
      {
        public void run()
        {
          destroy();
        }
      });
      zzhx.zzY("Tracking ad unit: " + zznq.zzaZ());
      return;
    }
    catch (RuntimeException paramzzba)
    {
      for (;;)
      {
        zzhx.zzb("Failure while processing active view data.", paramzzba);
      }
    }
    catch (JSONException paramzzba)
    {
      for (;;) {}
    }
  }
  
  protected void destroy()
  {
    synchronized (zznh)
    {
      zzbh();
      zzbc();
      zznA = false;
      zzbe();
      zznr.zzb(zzns);
      return;
    }
  }
  
  public void onGlobalLayout()
  {
    zzh(false);
  }
  
  public void onScrollChanged()
  {
    zzh(true);
  }
  
  public void pause()
  {
    synchronized (zznh)
    {
      zzmJ = true;
      zzh(false);
      return;
    }
  }
  
  public void resume()
  {
    synchronized (zznh)
    {
      zzmJ = false;
      zzh(false);
      return;
    }
  }
  
  public void stop()
  {
    synchronized (zznh)
    {
      zzny = true;
      zzh(false);
      return;
    }
  }
  
  protected int zza(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    float f = density;
    return (int)(paramInt / f);
  }
  
  protected void zza(View paramView, Map<String, String> paramMap)
  {
    zzh(false);
  }
  
  public void zza(zzac paramzzac)
  {
    zznD.add(paramzzac);
  }
  
  public void zza(zzag paramzzag)
  {
    synchronized (zznh)
    {
      zznx = paramzzag;
      return;
    }
  }
  
  protected void zza(zzah paramzzah)
  {
    paramzzah.zza("/updateActiveView", zznE);
    paramzzah.zza("/untrackActiveViewUnit", zznF);
    paramzzah.zza("/visibilityChanged", zznG);
  }
  
  protected void zza(JSONObject paramJSONObject)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray();
      final JSONObject localJSONObject = new JSONObject();
      localJSONArray.put(paramJSONObject);
      localJSONObject.put("units", localJSONArray);
      zzns.zza(new zzia.zzd()new zzia.zza
      {
        public void zzb(zzah paramAnonymouszzah)
        {
          paramAnonymouszzah.zza("AFMA_updateActiveView", localJSONObject);
        }
      }, new zzia.zza()
      {
        public void run() {}
      });
      return;
    }
    catch (Throwable paramJSONObject)
    {
      zzhx.zzb("Skipping active view message.", paramJSONObject);
    }
  }
  
  protected boolean zza(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return false;
    }
    paramMap = (String)paramMap.get("hashCode");
    return (!TextUtils.isEmpty(paramMap)) && (paramMap.equals(zznq.zzaZ()));
  }
  
  protected void zzbb()
  {
    synchronized (zznh)
    {
      if (zznC != null) {
        return;
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      zznC = new BroadcastReceiver()
      {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          kkxxkk.b041E041EОО041EО(paramAnonymousContext);
          xkkkxk.b041E041EООО041E(paramAnonymousContext);
          zzh(false);
        }
      };
      zznk.registerReceiver(zznC, localIntentFilter);
      return;
    }
  }
  
  protected void zzbc()
  {
    synchronized (zznh)
    {
      if (zznC != null)
      {
        zznk.unregisterReceiver(zznC);
        zznC = null;
      }
      return;
    }
  }
  
  public void zzbd()
  {
    synchronized (zznh)
    {
      if (zznA) {
        zznB = true;
      }
    }
    try
    {
      zza(zzbj());
      zzhx.zzY("Untracking ad unit: " + zznq.zzaZ());
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        zzhx.zzb("JSON failure while processing active view data.", localJSONException);
      }
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        zzhx.zzb("Failure while processing active view data.", localRuntimeException);
      }
    }
  }
  
  protected void zzbe()
  {
    if (zznx != null) {
      zznx.zza(this);
    }
  }
  
  public boolean zzbf()
  {
    synchronized (zznh)
    {
      boolean bool = zznA;
      return bool;
    }
  }
  
  protected void zzbg()
  {
    Object localObject = (View)zznp.get();
    if (localObject == null) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = (ViewTreeObserver)zzno.get();
      localObject = ((View)localObject).getViewTreeObserver();
    } while (localObject == localViewTreeObserver);
    zzno = new WeakReference(localObject);
    ((ViewTreeObserver)localObject).addOnScrollChangedListener(this);
    ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(this);
  }
  
  protected void zzbh()
  {
    ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)zzno.get();
    if ((localViewTreeObserver == null) || (!localViewTreeObserver.isAlive())) {
      return;
    }
    localViewTreeObserver.removeOnScrollChangedListener(this);
    localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
  
  protected JSONObject zzbi()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("afmaVersion", zznq.zzaX()).put("activeViewJSON", zznq.zzaY()).put("timestamp", zzab.zzaQ().elapsedRealtime()).put("adFormat", zznq.zzaW()).put("hashCode", zznq.zzaZ()).put("isMraid", zznq.zzba());
    return localJSONObject;
  }
  
  protected JSONObject zzbj()
  {
    JSONObject localJSONObject = zzbi();
    localJSONObject.put("doneReasonCode", "u");
    return localJSONObject;
  }
  
  protected JSONObject zzd(View paramView)
  {
    boolean bool1 = zzab.zzaO().zzi(paramView);
    Object localObject2 = new int[2];
    Object localObject1 = new int[2];
    try
    {
      paramView.getLocationOnScreen((int[])localObject2);
      paramView.getLocationInWindow((int[])localObject1);
      localObject1 = paramView.getContext().getResources().getDisplayMetrics();
      Rect localRect1 = new Rect();
      left = localObject2[0];
      top = localObject2[1];
      right = (left + paramView.getWidth());
      bottom = (top + paramView.getHeight());
      localObject2 = new Rect();
      right = zznu.getDefaultDisplay().getWidth();
      bottom = zznu.getDefaultDisplay().getHeight();
      Rect localRect2 = new Rect();
      boolean bool2 = paramView.getGlobalVisibleRect(localRect2, null);
      Rect localRect3 = new Rect();
      boolean bool3 = paramView.getLocalVisibleRect(localRect3);
      Rect localRect4 = new Rect();
      paramView.getHitRect(localRect4);
      JSONObject localJSONObject = zzbi();
      localJSONObject.put("windowVisibility", paramView.getWindowVisibility()).put("isStopped", zzny).put("isPaused", zzmJ).put("isAttachedToWindow", bool1).put("viewBox", new JSONObject().put("top", zza(top, (DisplayMetrics)localObject1)).put("bottom", zza(bottom, (DisplayMetrics)localObject1)).put("left", zza(left, (DisplayMetrics)localObject1)).put("right", zza(right, (DisplayMetrics)localObject1))).put("adBox", new JSONObject().put("top", zza(top, (DisplayMetrics)localObject1)).put("bottom", zza(bottom, (DisplayMetrics)localObject1)).put("left", zza(left, (DisplayMetrics)localObject1)).put("right", zza(right, (DisplayMetrics)localObject1))).put("globalVisibleBox", new JSONObject().put("top", zza(top, (DisplayMetrics)localObject1)).put("bottom", zza(bottom, (DisplayMetrics)localObject1)).put("left", zza(left, (DisplayMetrics)localObject1)).put("right", zza(right, (DisplayMetrics)localObject1))).put("globalVisibleBoxVisible", bool2).put("localVisibleBox", new JSONObject().put("top", zza(top, (DisplayMetrics)localObject1)).put("bottom", zza(bottom, (DisplayMetrics)localObject1)).put("left", zza(left, (DisplayMetrics)localObject1)).put("right", zza(right, (DisplayMetrics)localObject1))).put("localVisibleBoxVisible", bool3).put("hitBox", new JSONObject().put("top", zza(top, (DisplayMetrics)localObject1)).put("bottom", zza(bottom, (DisplayMetrics)localObject1)).put("left", zza(left, (DisplayMetrics)localObject1)).put("right", zza(right, (DisplayMetrics)localObject1))).put("screenDensity", density).put("isVisible", zze(paramView));
      return localJSONObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        zzhx.zzb("Failure getting view location.", localException);
      }
    }
  }
  
  protected boolean zze(View paramView)
  {
    return (paramView.getVisibility() == 0) && (paramView.isShown()) && (zznv.isScreenOn()) && ((!zznw.inKeyguardRestrictedInputMode()) || (zzab.zzaM().zzes()));
  }
  
  protected void zzg(boolean paramBoolean)
  {
    Iterator localIterator = zznD.iterator();
    while (localIterator.hasNext()) {
      ((zzac)localIterator.next()).zza(this, paramBoolean);
    }
  }
  
  protected void zzh(boolean paramBoolean)
  {
    long l;
    synchronized (zznh)
    {
      if ((!zznt) || (!zznA)) {
        return;
      }
      l = zzab.zzaQ().elapsedRealtime();
      if ((paramBoolean) && (zznz + 200L > l)) {
        return;
      }
    }
    zznz = l;
    zzhe localzzhe = (zzhe)zznn.get();
    View localView = (View)zznp.get();
    if (localView != null) {
      if (localzzhe == null) {
        break label172;
      }
    }
    for (;;)
    {
      int i;
      if (i != 0)
      {
        zzbd();
        return;
        i = 0;
      }
      else
      {
        try
        {
          zza(zzd(localView));
          zzbg();
          zzbe();
          return;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            zzhx.zza("Active view update failed.", localJSONException);
          }
        }
        catch (RuntimeException localRuntimeException)
        {
          for (;;)
          {
            zzhx.zza("Active view update failed.", localRuntimeException);
          }
        }
        label172:
        i = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */