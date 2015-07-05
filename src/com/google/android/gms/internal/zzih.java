package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@zzgi
public class zzih
  extends zzid
{
  public zzih(zzic paramzzic, boolean paramBoolean)
  {
    super(paramzzic, paramBoolean);
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    try
    {
      if (!"mraid.js".equalsIgnoreCase(new File(paramString).getName())) {
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      if (!(paramWebView instanceof zzic))
      {
        zzhx.zzac("Tried to intercept request from a WebView that wasn't an AdWebView.");
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      zzic localzzic = (zzic)paramWebView;
      localzzic.zzeG().zzde();
      String str;
      if (zzadzzpb) {
        str = (String)zzca.zzqx.get();
      }
      for (;;)
      {
        zzhx.zzab("shouldInterceptRequest(" + str + ")");
        return zzd(localzzic.getContext(), zzmu.zzeJ().zzzH, str);
        if (localzzic.zzeK()) {
          str = (String)zzca.zzqw.get();
        } else {
          str = (String)zzca.zzqv.get();
        }
      }
      return super.shouldInterceptRequest(paramWebView, paramString);
    }
    catch (IOException localIOException)
    {
      zzhx.zzac("Could not fetch MRAID JS. " + localIOException.getMessage());
    }
  }
  
  protected WebResourceResponse zzd(Context paramContext, String paramString1, String paramString2)
  {
    paramString2 = (HttpURLConnection)new URL(paramString2).openConnection();
    try
    {
      zzab.zzaM().zza(paramContext, paramString1, true, paramString2, true);
      paramString2.addRequestProperty("Cache-Control", "max-stale=3600");
      paramString2.connect();
      paramContext = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(zzab.zzaM().zza(new InputStreamReader(paramString2.getInputStream())).getBytes("UTF-8")));
      return paramContext;
    }
    finally
    {
      paramString2.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */