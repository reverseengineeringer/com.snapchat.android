package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzan
  extends Thread
{
  private boolean mStarted = false;
  private final int zznW;
  private final int zznY;
  private final Object zznh;
  private boolean zzoj = false;
  private boolean zzok = false;
  private final zzam zzol;
  private final zzal zzom;
  private final zzgh zzon;
  private final int zzoo;
  private final int zzop;
  private final int zzoq;
  
  public zzan(zzam paramzzam, zzal paramzzal, zzgh paramzzgh)
  {
    zzol = paramzzam;
    zzom = paramzzal;
    zzon = paramzzgh;
    zznh = new Object();
    zznW = ((Integer)zzca.zzqC.get()).intValue();
    zzop = ((Integer)zzca.zzqD.get()).intValue();
    zznY = ((Integer)zzca.zzqE.get()).intValue();
    zzoq = ((Integer)zzca.zzqF.get()).intValue();
    zzoo = ((Integer)zzca.zzqG.get()).intValue();
    setName("ContentFetchTask");
  }
  
  public void run()
  {
    while (!zzok) {
      try
      {
        if (zzbu())
        {
          Activity localActivity = zzol.getActivity();
          if (localActivity == null) {
            zzhx.zzY("ContentFetchThread: no activity");
          }
        }
      }
      catch (Throwable localThrowable)
      {
        zzhx.zzb("Error in ContentFetchTask", localThrowable);
        zzon.zzb(localThrowable);
        synchronized (zznh)
        {
          for (;;)
          {
            boolean bool = zzoj;
            if (!bool) {
              break;
            }
            try
            {
              zzhx.zzY("ContentFetchTask: waiting");
              zznh.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
          zza((Activity)???);
          for (;;)
          {
            Thread.sleep(zzoo * 1000);
            break;
            zzhx.zzY("ContentFetchTask: sleeping");
            zzbw();
          }
        }
      }
    }
  }
  
  public void wakeup()
  {
    synchronized (zznh)
    {
      zzoj = false;
      zznh.notifyAll();
      zzhx.zzY("ContentFetchThread: wakeup");
      return;
    }
  }
  
  zza zza(View paramView, zzak paramzzak)
  {
    int i = 0;
    if (paramView == null) {
      return new zza(0, 0);
    }
    if (((paramView instanceof TextView)) && (!(paramView instanceof EditText)))
    {
      paramView = ((TextView)paramView).getText();
      if (!TextUtils.isEmpty(paramView))
      {
        paramzzak.zzi(paramView.toString());
        return new zza(1, 0);
      }
      return new zza(0, 0);
    }
    if (((paramView instanceof WebView)) && (!(paramView instanceof zzic)))
    {
      paramzzak.zzbp();
      if (zza((WebView)paramView, paramzzak)) {
        return new zza(0, 1);
      }
      return new zza(0, 0);
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int j = 0;
      int k = 0;
      while (i < paramView.getChildCount())
      {
        zza localzza = zza(paramView.getChildAt(i), paramzzak);
        k += zzox;
        j += zzoy;
        i += 1;
      }
      return new zza(k, j);
    }
    return new zza(0, 0);
  }
  
  void zza(Activity paramActivity)
  {
    if (paramActivity == null) {}
    Object localObject1;
    do
    {
      return;
      Object localObject2 = null;
      localObject1 = localObject2;
      if (paramActivity.getWindow() != null)
      {
        localObject1 = localObject2;
        if (paramActivity.getWindow().getDecorView() != null) {
          localObject1 = paramActivity.getWindow().getDecorView().findViewById(16908290);
        }
      }
    } while (localObject1 == null);
    zzf((View)localObject1);
  }
  
  void zza(zzak paramzzak, WebView paramWebView, String paramString)
  {
    paramzzak.zzbo();
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new JSONObject(paramString).optString("text");
        if (TextUtils.isEmpty(paramWebView.getTitle())) {
          break label83;
        }
        paramzzak.zzh(paramWebView.getTitle() + "\n" + paramString);
      }
      while (paramzzak.zzbl())
      {
        zzom.zzb(paramzzak);
        return;
        label83:
        paramzzak.zzh(paramString);
      }
      return;
    }
    catch (JSONException paramzzak)
    {
      zzhx.zzY("Json string may be malformed.");
      return;
    }
    catch (Throwable paramzzak)
    {
      zzhx.zza("Failed to get webview content.", paramzzak);
      zzon.zzb(paramzzak);
    }
  }
  
  boolean zza(final WebView paramWebView, final zzak paramzzak)
  {
    if (!zzme.zzkj()) {
      return false;
    }
    paramzzak.zzbp();
    paramWebView.post(new Runnable()
    {
      ValueCallback<String> zzot = new ValueCallback()
      {
        public void zzk(String paramAnonymous2String)
        {
          zza(zzou, zzov, paramAnonymous2String);
        }
      };
      
      public void run()
      {
        if (paramWebView.getSettings().getJavaScriptEnabled()) {}
        try
        {
          paramWebView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", zzot);
          return;
        }
        catch (Throwable localThrowable)
        {
          zzot.onReceiveValue("");
        }
      }
    });
    return true;
  }
  
  public void zzbt()
  {
    synchronized (zznh)
    {
      if (mStarted)
      {
        zzhx.zzY("Content hash thread already started, quiting...");
        return;
      }
      mStarted = true;
      start();
      return;
    }
  }
  
  boolean zzbu()
  {
    try
    {
      Context localContext = zzol.getContext();
      if (localContext == null) {
        return false;
      }
      Object localObject = (ActivityManager)localContext.getSystemService("activity");
      KeyguardManager localKeyguardManager = (KeyguardManager)localContext.getSystemService("keyguard");
      if ((localObject != null) && (localKeyguardManager != null))
      {
        localObject = ((ActivityManager)localObject).getRunningAppProcesses();
        if (localObject == null) {
          return false;
        }
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
          if (Process.myPid() == pid) {
            if ((importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
            {
              boolean bool = zzk(localContext);
              if (bool) {
                return true;
              }
            }
          }
        }
        return false;
      }
    }
    catch (Throwable localThrowable)
    {
      return false;
    }
    return false;
  }
  
  public zzak zzbv()
  {
    return zzom.zzbs();
  }
  
  public void zzbw()
  {
    synchronized (zznh)
    {
      zzoj = true;
      zzhx.zzY("ContentFetchThread: paused, mPause = " + zzoj);
      return;
    }
  }
  
  public boolean zzbx()
  {
    return zzoj;
  }
  
  boolean zzf(final View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView.post(new Runnable()
    {
      public void run()
      {
        zzg(paramView);
      }
    });
    return true;
  }
  
  void zzg(View paramView)
  {
    try
    {
      zzak localzzak = new zzak(zznW, zzop, zznY, zzoq);
      paramView = zza(paramView, localzzak);
      localzzak.zzbq();
      if ((zzox == 0) && (zzoy == 0)) {
        return;
      }
      if (((zzoy != 0) || (localzzak.zzbr() != 0)) && ((zzoy != 0) || (!zzom.zza(localzzak))))
      {
        zzom.zzc(localzzak);
        return;
      }
    }
    catch (Exception paramView)
    {
      zzhx.zzb("Exception in fetchContentOnUIThread", paramView);
      zzon.zzb(paramView);
    }
  }
  
  boolean zzk(Context paramContext)
  {
    paramContext = (PowerManager)paramContext.getSystemService("power");
    if (paramContext == null) {
      return false;
    }
    return paramContext.isScreenOn();
  }
  
  @zzgi
  class zza
  {
    final int zzox;
    final int zzoy;
    
    zza(int paramInt1, int paramInt2)
    {
      zzox = paramInt1;
      zzoy = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */