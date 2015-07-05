package com.google.android.gms.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;

class zzez$1$1
  extends WebViewClient
{
  zzez$1$1(zzez.1 param1, WebView paramWebView) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    zzhx.zzY("Loading assets have finished");
    zzuR.zzuQ.zzuN.remove(zzov);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    zzhx.zzac("Loading assets have failed.");
    zzuR.zzuQ.zzuN.remove(zzov);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzez.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */