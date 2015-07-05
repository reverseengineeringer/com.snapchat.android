package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@zzgi
public class zzez
  implements zzex
{
  private final Context mContext;
  final Set<WebView> zzuN = Collections.synchronizedSet(new HashSet());
  
  public zzez(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public void zza(String paramString1, final String paramString2, final String paramString3)
  {
    zzhx.zzY("Fetching assets for the given html");
    zzhw.zzzG.post(new Runnable()
    {
      public void run()
      {
        final WebView localWebView = zzdr();
        localWebView.setWebViewClient(new WebViewClient()
        {
          public void onPageFinished(WebView paramAnonymous2WebView, String paramAnonymous2String)
          {
            zzhx.zzY("Loading assets have finished");
            zzuN.remove(localWebView);
          }
          
          public void onReceivedError(WebView paramAnonymous2WebView, int paramAnonymous2Int, String paramAnonymous2String1, String paramAnonymous2String2)
          {
            zzhx.zzac("Loading assets have failed.");
            zzuN.remove(localWebView);
          }
        });
        zzuN.add(localWebView);
        localWebView.loadDataWithBaseURL(paramString2, paramString3, "text/html", "UTF-8", null);
        zzhx.zzY("Fetching assets finished.");
      }
    });
  }
  
  public WebView zzdr()
  {
    WebView localWebView = new WebView(mContext);
    localWebView.getSettings().setJavaScriptEnabled(true);
    return localWebView;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */