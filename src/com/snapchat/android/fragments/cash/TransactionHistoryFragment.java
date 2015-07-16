package com.snapchat.android.fragments.cash;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import azy;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.fragments.settings.WebFragment;
import javax.inject.Inject;
import yj;
import ym;

public class TransactionHistoryFragment
  extends WebFragment
{
  @Inject
  public yj a;
  
  public TransactionHistoryFragment()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  @SuppressLint({"ValidFragment"})
  public TransactionHistoryFragment(String paramString)
  {
    super(null, paramString);
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(String paramString)
  {
    paramString = Uri.parse(paramString).buildUpon();
    paramString.appendQueryParameter("client", "chartreuse");
    super.a(paramString.build().toString());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968753, paramViewGroup, false);
    a(paramBundle);
    b.getSettings().setJavaScriptEnabled(true);
    b.setWebViewClient(new a((byte)0));
    return mFragmentLayout;
  }
  
  final class a
    extends WebViewClient
  {
    private boolean b = false;
    
    private a() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      if (a != null)
      {
        paramString = a.a();
        if (paramString == null) {
          throw new RuntimeException("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!");
        }
        paramWebView.loadUrl("javascript:var authorizationToken='Bearer " + a + "';");
        b = true;
        TransactionHistoryFragment.a(TransactionHistoryFragment.this);
      }
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      if (!b) {
        return false;
      }
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      startActivity(paramWebView);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.TransactionHistoryFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */