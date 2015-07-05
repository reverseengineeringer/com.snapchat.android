package com.google.android.gms.internal;

import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;

class zzan$2
  implements Runnable
{
  ValueCallback<String> zzot = new ValueCallback()
  {
    public void zzk(String paramAnonymousString)
    {
      zzos.zza(zzou, zzov, paramAnonymousString);
    }
  };
  
  zzan$2(zzan paramzzan, zzak paramzzak, WebView paramWebView) {}
  
  public void run()
  {
    if (zzov.getSettings().getJavaScriptEnabled()) {}
    try
    {
      zzov.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", zzot);
      return;
    }
    catch (Throwable localThrowable)
    {
      zzot.onReceiveValue("");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzan.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */