package com.google.android.gms.internal;

import android.app.Activity;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

@zzgi
public class zzhp
{
  public static zzhp zzz(int paramInt)
  {
    if (paramInt >= 19) {
      return new zzg();
    }
    if (paramInt >= 18) {
      return new zze();
    }
    if (paramInt >= 17) {
      return new zzd();
    }
    if (paramInt >= 16) {
      return new zzf();
    }
    if (paramInt >= 14) {
      return new zzc();
    }
    if (paramInt >= 11) {
      return new zzb();
    }
    if (paramInt >= 9) {
      return new zza();
    }
    return new zzhp();
  }
  
  public String getDefaultUserAgent(Context paramContext)
  {
    return "";
  }
  
  public boolean zza(DownloadManager.Request paramRequest)
  {
    return false;
  }
  
  public boolean zza(Context paramContext, WebSettings paramWebSettings)
  {
    return false;
  }
  
  public boolean zza(Window paramWindow)
  {
    return false;
  }
  
  public boolean zza(WebView paramWebView)
  {
    return false;
  }
  
  public WebChromeClient zzb(zzic paramzzic)
  {
    return null;
  }
  
  public zzid zzb(zzic paramzzic, boolean paramBoolean)
  {
    return new zzid(paramzzic, paramBoolean);
  }
  
  public void zzb(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
    }
  }
  
  public boolean zzb(WebView paramWebView)
  {
    return false;
  }
  
  public Set<String> zze(Uri paramUri)
  {
    if (paramUri.isOpaque()) {
      return Collections.emptySet();
    }
    paramUri = paramUri.getEncodedQuery();
    if (paramUri == null) {
      return Collections.emptySet();
    }
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int j = 0;
    int i;
    do
    {
      int k = paramUri.indexOf('&', j);
      i = k;
      if (k == -1) {
        i = paramUri.length();
      }
      int m = paramUri.indexOf('=', j);
      if (m <= i)
      {
        k = m;
        if (m != -1) {}
      }
      else
      {
        k = i;
      }
      localLinkedHashSet.add(Uri.decode(paramUri.substring(j, k)));
      i += 1;
      j = i;
    } while (i < paramUri.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }
  
  public int zzex()
  {
    return 0;
  }
  
  public int zzey()
  {
    return 1;
  }
  
  public int zzez()
  {
    return 5;
  }
  
  public boolean zzi(View paramView)
  {
    return (paramView.getWindowToken() != null) || (paramView.getWindowVisibility() != 8);
  }
  
  public boolean zzj(View paramView)
  {
    return false;
  }
  
  public boolean zzk(View paramView)
  {
    return false;
  }
  
  static class zza
    extends zzhp
  {
    zza()
    {
      super();
    }
    
    public boolean zza(DownloadManager.Request paramRequest)
    {
      paramRequest.setShowRunningNotification(true);
      return true;
    }
    
    public int zzex()
    {
      return 6;
    }
    
    public int zzey()
    {
      return 7;
    }
  }
  
  static class zzb
    extends zzhp.zza
  {
    public boolean zza(DownloadManager.Request paramRequest)
    {
      paramRequest.allowScanningByMediaScanner();
      paramRequest.setNotificationVisibility(1);
      return true;
    }
    
    public boolean zza(Context paramContext, WebSettings paramWebSettings)
    {
      if (paramContext.getCacheDir() != null)
      {
        paramWebSettings.setAppCachePath(paramContext.getCacheDir().getAbsolutePath());
        paramWebSettings.setAppCacheMaxSize(0L);
        paramWebSettings.setAppCacheEnabled(true);
      }
      paramWebSettings.setDatabasePath(paramContext.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
      paramWebSettings.setDatabaseEnabled(true);
      paramWebSettings.setDomStorageEnabled(true);
      paramWebSettings.setDisplayZoomControls(false);
      paramWebSettings.setBuiltInZoomControls(true);
      paramWebSettings.setSupportZoom(true);
      return true;
    }
    
    public boolean zza(Window paramWindow)
    {
      paramWindow.setFlags(16777216, 16777216);
      return true;
    }
    
    public boolean zza(WebView paramWebView)
    {
      paramWebView.onPause();
      return true;
    }
    
    public WebChromeClient zzb(zzic paramzzic)
    {
      return new zzig(paramzzic);
    }
    
    public zzid zzb(zzic paramzzic, boolean paramBoolean)
    {
      return new zzih(paramzzic, paramBoolean);
    }
    
    public boolean zzb(WebView paramWebView)
    {
      paramWebView.onResume();
      return true;
    }
    
    public Set<String> zze(Uri paramUri)
    {
      return paramUri.getQueryParameterNames();
    }
    
    public boolean zzj(View paramView)
    {
      paramView.setLayerType(0, null);
      return true;
    }
    
    public boolean zzk(View paramView)
    {
      paramView.setLayerType(1, null);
      return true;
    }
  }
  
  static class zzc
    extends zzhp.zzb
  {
    public WebChromeClient zzb(zzic paramzzic)
    {
      return new zzii(paramzzic);
    }
  }
  
  static class zzd
    extends zzhp.zzf
  {
    public String getDefaultUserAgent(Context paramContext)
    {
      return WebSettings.getDefaultUserAgent(paramContext);
    }
    
    public boolean zza(Context paramContext, WebSettings paramWebSettings)
    {
      super.zza(paramContext, paramWebSettings);
      paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
      return true;
    }
  }
  
  static class zze
    extends zzhp.zzd
  {
    public int zzez()
    {
      return 14;
    }
    
    public boolean zzi(View paramView)
    {
      return (super.zzi(paramView)) || (paramView.getWindowId() != null);
    }
  }
  
  static class zzf
    extends zzhp.zzc
  {
    public void zzb(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
    {
      paramActivity = paramActivity.getWindow();
      if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
        paramActivity.getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
      }
    }
  }
  
  static class zzg
    extends zzhp.zze
  {
    public boolean zzi(View paramView)
    {
      return paramView.isAttachedToWindow();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */