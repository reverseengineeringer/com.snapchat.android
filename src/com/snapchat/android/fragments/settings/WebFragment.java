package com.snapchat.android.fragments.settings;

import akr;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import aum;
import azy;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.util.fragment.SnapchatFragment;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EncodingUtils;
import pj;

public class WebFragment
  extends SnapchatFragment
{
  private String a;
  public WebView b;
  @Inject
  public aum c;
  private String d;
  private String e;
  private boolean f;
  
  public WebFragment() {}
  
  @SuppressLint({"ValidFragment"})
  public WebFragment(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, false, null);
  }
  
  @SuppressLint({"ValidFragment"})
  public WebFragment(String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "https://accounts.snapchat.com";
    }
    a = str;
    d = paramString2;
    f = paramBoolean;
    e = paramString3;
    SnapchatApplication.b().c().a(this);
  }
  
  private static String a(List<BasicNameValuePair> paramList)
  {
    if (paramList.isEmpty()) {
      return "";
    }
    localStringBuilder = new StringBuilder();
    try
    {
      localStringBuilder.append(((BasicNameValuePair)paramList.get(0)).getName() + "=" + URLEncoder.encode(((BasicNameValuePair)paramList.get(0)).getValue(), "UTF-8"));
      int i = 1;
      while (i < paramList.size())
      {
        localStringBuilder.append("&" + ((BasicNameValuePair)paramList.get(i)).getName() + "=" + URLEncoder.encode(((BasicNameValuePair)paramList.get(i)).getValue(), "UTF-8"));
        i += 1;
      }
      return localStringBuilder.toString();
    }
    catch (UnsupportedEncodingException paramList) {}
  }
  
  private static String b(String paramString)
  {
    try
    {
      paramString = pj.a(akr.F(), paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      return "Unknown";
    }
    catch (NoSuchAlgorithmException paramString)
    {
      for (;;) {}
    }
  }
  
  private String m()
  {
    try
    {
      Object localObject = getActivity().getPackageManager();
      if (localObject != null)
      {
        localObject = getPackageInfogetActivitygetPackageName0versionName;
        return (String)localObject;
      }
    }
    catch (Exception localException) {}
    return "Unknown";
  }
  
  public final void a(Bundle paramBundle)
  {
    c(2131361895).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        i();
      }
    });
    b = ((WebView)c(2131362751));
    Object localObject = b.getSettings();
    ((WebSettings)localObject).setJavaScriptEnabled(false);
    ((WebSettings)localObject).setAllowFileAccess(false);
    ((WebSettings)localObject).setSaveFormData(false);
    ((WebSettings)localObject).setSavePassword(false);
    if (d != null) {
      ((TextView)c(2131361896)).setText(d);
    }
    b.setWebViewClient(new WebViewClient()
    {
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView = Uri.parse(paramAnonymousString);
        paramAnonymousString = paramAnonymousWebView.getScheme();
        String str = paramAnonymousWebView.getHost();
        if ((TextUtils.equals(paramAnonymousString, "https")) && ((TextUtils.equals(str, "support.snapchat.com")) || (TextUtils.equals(str, "accounts.snapchat.com")) || (TextUtils.equals(str, "www.snapchat.com")))) {
          return false;
        }
        paramAnonymousWebView = new Intent("android.intent.action.VIEW", paramAnonymousWebView);
        startActivity(paramAnonymousWebView);
        return true;
      }
    });
    b.setClickable(true);
    b.requestFocus(130);
    b.setOnTouchListener(new View.OnTouchListener()
    {
      public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return false;
          if (!paramAnonymousView.hasFocus()) {
            paramAnonymousView.requestFocus();
          }
        }
      }
    });
    b.getSettings().setJavaScriptEnabled(true);
    b.getSettings().setAllowFileAccess(false);
    if (paramBundle != null)
    {
      b.restoreState(paramBundle);
      return;
    }
    if (f)
    {
      localObject = Long.toString(new Date().getTime());
      paramBundle = new ArrayList();
      paramBundle.add(new BasicNameValuePair("username", akr.l()));
      paramBundle.add(new BasicNameValuePair("req_token", b((String)localObject)));
      paramBundle.add(new BasicNameValuePair("timestamp", (String)localObject));
      localObject = new HashMap();
      ((Map)localObject).put("device", Build.MANUFACTURER + " " + Build.MODEL);
      ((Map)localObject).put("os_version", "Android");
      ((Map)localObject).put("api_version", Build.VERSION.RELEASE);
      ((Map)localObject).put("sc_version", m());
      paramBundle.add(new BasicNameValuePair("device", c.a(localObject)));
      localObject = GLES20.glGetString(7936);
      String str = GLES20.glGetString(7937);
      if ((localObject != null) && (str != null)) {
        paramBundle.add(new BasicNameValuePair("gpu_arch", (String)localObject + " " + str));
      }
      if (e != null) {
        paramBundle.add(new BasicNameValuePair("next", e));
      }
      a(paramBundle);
      paramBundle = a(paramBundle);
      b.postUrl(a + "/accounts/client_native_auth", EncodingUtils.getBytes(paramBundle, "UTF-8"));
      return;
    }
    b.loadUrl(a);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public boolean g()
  {
    if ((b != null) && (b.canGoBack()))
    {
      b.goBack();
      return true;
    }
    return false;
  }
  
  public void i()
  {
    if ((b != null) && (b.canGoBack()))
    {
      b.goBack();
      return;
    }
    getActivity().onBackPressed();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    mFragmentLayout = paramLayoutInflater.inflate(2130968784, paramViewGroup, false);
    a(paramBundle);
    return mFragmentLayout;
  }
  
  public void onPause()
  {
    b.stopLoading();
    b.clearCache(true);
    b.clearFormData();
    b.clearHistory();
    super.onPause();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (b != null) {
      b.saveState(paramBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.fragments.settings.WebFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */