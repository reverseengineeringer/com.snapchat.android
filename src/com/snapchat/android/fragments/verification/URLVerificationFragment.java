package com.snapchat.android.fragments.verification;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.fragments.settings.WebFragment;
import com.snapchat.android.ui.window.WindowConfiguration.StatusBarDrawMode;

public class URLVerificationFragment
  extends WebFragment
{
  private static final String f = URLVerificationFragment.class.getSimpleName();
  public a a;
  public boolean d;
  public boolean e;
  
  private void n()
  {
    if (a != null)
    {
      if (e)
      {
        AnalyticsEvents.T();
        a.a();
      }
    }
    else
    {
      a = null;
      return;
    }
    if (d) {
      AnalyticsEvents.U();
    }
    for (;;)
    {
      a.b();
      break;
      AnalyticsEvents.V();
    }
  }
  
  public final void a(String paramString)
  {
    paramString = Uri.parse(paramString).buildUpon();
    paramString.appendQueryParameter("success_url", "https://support.snapchat.com/success");
    paramString.appendQueryParameter("failure_url", "https://support.snapchat.com/failure");
    paramString.appendQueryParameter("client", "chartreuse");
    paramString = paramString.build().toString();
    Timber.b(f, "CASH-LOG: Setting the URL to %s", new Object[] { paramString });
    super.a(paramString);
  }
  
  protected final WindowConfiguration.StatusBarDrawMode b()
  {
    return WindowConfiguration.StatusBarDrawMode.DRAW_BELOW_FOR_ADJUSTABLE_UI;
  }
  
  public final boolean g()
  {
    n();
    return false;
  }
  
  protected final void i()
  {
    n();
    getActivity().onBackPressed();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968751, paramViewGroup, false);
    a(paramBundle);
    b.getSettings().setJavaScriptEnabled(true);
    b.setWebViewClient(new b((byte)0));
    return mFragmentLayout;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  final class b
    extends WebViewClient
  {
    private b() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      URLVerificationFragment.a(URLVerificationFragment.this, false);
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      URLVerificationFragment.a(URLVerificationFragment.this, true);
      Timber.b(URLVerificationFragment.m(), "CASH-LOG: Loading the URL: %s", new Object[] { paramString });
      URLVerificationFragment.b(URLVerificationFragment.this, false);
      if (paramString.equals("https://support.snapchat.com/success"))
      {
        URLVerificationFragment.b(URLVerificationFragment.this, true);
        URLVerificationFragment.c(URLVerificationFragment.this, true);
      }
      for (;;)
      {
        if (URLVerificationFragment.a(URLVerificationFragment.this)) {
          URLVerificationFragment.b(URLVerificationFragment.this);
        }
        return URLVerificationFragment.a(URLVerificationFragment.this);
        if (paramString.equals("https://support.snapchat.com/failure"))
        {
          URLVerificationFragment.b(URLVerificationFragment.this, true);
          URLVerificationFragment.c(URLVerificationFragment.this, false);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.verification.URLVerificationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */