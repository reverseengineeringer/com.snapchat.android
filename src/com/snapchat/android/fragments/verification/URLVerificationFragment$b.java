package com.snapchat.android.fragments.verification;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.Timber;

final class URLVerificationFragment$b
  extends WebViewClient
{
  private URLVerificationFragment$b(URLVerificationFragment paramURLVerificationFragment) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    URLVerificationFragment.a(a, false);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    URLVerificationFragment.a(a, true);
    Timber.b(URLVerificationFragment.m(), "CASH-LOG: Loading the URL: %s", new Object[] { paramString });
    URLVerificationFragment.b(a, false);
    if (paramString.equals("https://support.snapchat.com/success"))
    {
      URLVerificationFragment.b(a, true);
      URLVerificationFragment.c(a, true);
    }
    for (;;)
    {
      if (URLVerificationFragment.a(a)) {
        URLVerificationFragment.b(a);
      }
      return URLVerificationFragment.a(a);
      if (paramString.equals("https://support.snapchat.com/failure"))
      {
        URLVerificationFragment.b(a, true);
        URLVerificationFragment.c(a, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.URLVerificationFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */