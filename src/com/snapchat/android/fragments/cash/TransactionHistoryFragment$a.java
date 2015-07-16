package com.snapchat.android.fragments.cash;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import yj;
import ym;

final class TransactionHistoryFragment$a
  extends WebViewClient
{
  private boolean b = false;
  
  private TransactionHistoryFragment$a(TransactionHistoryFragment paramTransactionHistoryFragment) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (a.a != null)
    {
      paramString = a.a.a();
      if (paramString == null) {
        throw new RuntimeException("We shouldn't ever be creating a SquareRequestTask with a null CashAuthToken!");
      }
      paramWebView.loadUrl("javascript:var authorizationToken='Bearer " + a + "';");
      b = true;
      TransactionHistoryFragment.a(a);
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!b) {
      return false;
    }
    paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    a.startActivity(paramWebView);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.cash.TransactionHistoryFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */