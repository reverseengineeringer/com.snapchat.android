package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.internal.zzw;
import java.net.URI;
import java.net.URISyntaxException;

@zzgi
public class zzij
  extends WebViewClient
{
  private final String zzAp = zzag(paramString);
  private boolean zzAq = false;
  private final zzfz zzAr;
  private final zzic zzmu;
  
  public zzij(zzfz paramzzfz, zzic paramzzic, String paramString)
  {
    zzmu = paramzzic;
    zzAr = paramzzfz;
  }
  
  private String zzag(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return paramString;
      try
      {
        if (paramString.endsWith("/"))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          return str;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        zzhx.zzZ(localIndexOutOfBoundsException.getMessage());
      }
    }
    return paramString;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    zzhx.zzY("JavascriptAdWebViewClient::onLoadResource: " + paramString);
    if (!zzaf(paramString)) {
      zzmu.zzeG().onLoadResource(zzmu.getWebView(), paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    zzhx.zzY("JavascriptAdWebViewClient::onPageFinished: " + paramString);
    if (!zzAq)
    {
      zzAr.zzdC();
      zzAq = true;
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    zzhx.zzY("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + paramString);
    if (zzaf(paramString))
    {
      zzhx.zzY("shouldOverrideUrlLoading: received passback url");
      return true;
    }
    return zzmu.zzeG().shouldOverrideUrlLoading(zzmu.getWebView(), paramString);
  }
  
  protected boolean zzaf(String paramString)
  {
    paramString = zzag(paramString);
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        Object localObject1 = new URI(paramString);
        if ("passback".equals(((URI)localObject1).getScheme()))
        {
          zzhx.zzY("Passback received");
          zzAr.zzdD();
          return true;
        }
        if (!TextUtils.isEmpty(zzAp))
        {
          Object localObject2 = new URI(zzAp);
          paramString = ((URI)localObject2).getHost();
          String str = ((URI)localObject1).getHost();
          localObject2 = ((URI)localObject2).getPath();
          localObject1 = ((URI)localObject1).getPath();
          if ((zzw.equal(paramString, str)) && (zzw.equal(localObject2, localObject1)))
          {
            zzhx.zzY("Passback received");
            zzAr.zzdD();
            return true;
          }
        }
      }
      catch (URISyntaxException paramString)
      {
        zzhx.zzZ(paramString.getMessage());
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */