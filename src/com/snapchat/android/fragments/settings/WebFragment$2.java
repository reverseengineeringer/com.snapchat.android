package com.snapchat.android.fragments.settings;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class WebFragment$2
  extends WebViewClient
{
  WebFragment$2(WebFragment paramWebFragment) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = Uri.parse(paramString);
    paramString = paramWebView.getScheme();
    String str = paramWebView.getHost();
    if ((TextUtils.equals(paramString, "https")) && ((TextUtils.equals(str, "support.snapchat.com")) || (TextUtils.equals(str, "accounts.snapchat.com")) || (TextUtils.equals(str, "www.snapchat.com")))) {
      return false;
    }
    paramWebView = new Intent("android.intent.action.VIEW", paramWebView);
    a.startActivity(paramWebView);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.WebFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */