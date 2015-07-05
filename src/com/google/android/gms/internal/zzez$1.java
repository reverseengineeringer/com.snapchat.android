package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

class zzez$1
  implements Runnable
{
  zzez$1(zzez paramzzez, String paramString1, String paramString2) {}
  
  public void run()
  {
    final WebView localWebView = zzuQ.zzdr();
    localWebView.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        zzhx.zzY("Loading assets have finished");
        zzuQ.zzuN.remove(localWebView);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        zzhx.zzac("Loading assets have failed.");
        zzuQ.zzuN.remove(localWebView);
      }
    });
    zzuQ.zzuN.add(localWebView);
    localWebView.loadDataWithBaseURL(zzuO, zzuP, "text/html", "UTF-8", null);
    zzhx.zzY("Fetching assets finished.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzez.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */