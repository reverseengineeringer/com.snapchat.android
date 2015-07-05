package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.os.Message;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

@zzgi
public class zzig
  extends WebChromeClient
{
  private final zzic zzmu;
  
  public zzig(zzic paramzzic)
  {
    zzmu = paramzzic;
  }
  
  private static void zza(AlertDialog.Builder paramBuilder, String paramString, JsResult paramJsResult)
  {
    paramBuilder.setMessage(paramString).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzAl.confirm();
      }
    }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzAl.cancel();
      }
    }).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        zzAl.cancel();
      }
    }).create().show();
  }
  
  private static void zza(final Context paramContext, AlertDialog.Builder paramBuilder, String paramString1, String paramString2, JsPromptResult paramJsPromptResult)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    TextView localTextView = new TextView(paramContext);
    localTextView.setText(paramString1);
    paramContext = new EditText(paramContext);
    paramContext.setText(paramString2);
    localLinearLayout.addView(localTextView);
    localLinearLayout.addView(paramContext);
    paramBuilder.setView(localLinearLayout).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzAm.confirm(paramContext.getText().toString());
      }
    }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzAm.cancel();
      }
    }).setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        zzAm.cancel();
      }
    }).create().show();
  }
  
  private final Context zzc(WebView paramWebView)
  {
    if (!(paramWebView instanceof zzic)) {
      paramWebView = paramWebView.getContext();
    }
    zzic localzzic;
    Activity localActivity;
    do
    {
      return paramWebView;
      localzzic = (zzic)paramWebView;
      localActivity = localzzic.zzeD();
      paramWebView = localActivity;
    } while (localActivity != null);
    return localzzic.getContext();
  }
  
  public final void onCloseWindow(WebView paramWebView)
  {
    if (!(paramWebView instanceof zzic))
    {
      zzhx.zzac("Tried to close a WebView that wasn't an AdWebView.");
      return;
    }
    paramWebView = ((zzic)paramWebView).zzeF();
    if (paramWebView == null)
    {
      zzhx.zzac("Tried to close an AdWebView not associated with an overlay.");
      return;
    }
    paramWebView.close();
  }
  
  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    String str = "JS: " + paramConsoleMessage.message() + " (" + paramConsoleMessage.sourceId() + ":" + paramConsoleMessage.lineNumber() + ")";
    if (str.contains("Application Cache")) {
      return super.onConsoleMessage(paramConsoleMessage);
    }
    switch (7.zzAo[paramConsoleMessage.messageLevel().ordinal()])
    {
    default: 
      zzhx.zzaa(str);
    }
    for (;;)
    {
      return super.onConsoleMessage(paramConsoleMessage);
      zzhx.zzZ(str);
      continue;
      zzhx.zzac(str);
      continue;
      zzhx.zzaa(str);
      continue;
      zzhx.zzY(str);
    }
  }
  
  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    WebView.WebViewTransport localWebViewTransport = (WebView.WebViewTransport)obj;
    paramWebView = new WebView(paramWebView.getContext());
    paramWebView.setWebViewClient(zzmu.zzeG());
    localWebViewTransport.setWebView(paramWebView);
    paramMessage.sendToTarget();
    return true;
  }
  
  public final void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    long l = 5242880L - paramLong3;
    if (l <= 0L)
    {
      paramQuotaUpdater.updateQuota(paramLong1);
      return;
    }
    if (paramLong1 == 0L)
    {
      if ((paramLong2 <= l) && (paramLong2 <= 1048576L)) {}
      for (;;)
      {
        paramQuotaUpdater.updateQuota(paramLong2);
        return;
        paramLong2 = 0L;
      }
    }
    if (paramLong2 == 0L) {
      paramLong3 = Math.min(Math.min(131072L, l) + paramLong1, 1048576L);
    }
    for (;;)
    {
      paramLong2 = paramLong3;
      break;
      paramLong3 = paramLong1;
      if (paramLong2 <= Math.min(1048576L - paramLong1, l)) {
        paramLong3 = paramLong1 + paramLong2;
      }
    }
  }
  
  public final void onHideCustomView()
  {
    zzel localzzel = zzmu.zzeF();
    if (localzzel == null)
    {
      zzhx.zzac("Could not get ad overlay when hiding custom view.");
      return;
    }
    localzzel.zzdc();
  }
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return zza(zzc(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return zza(zzc(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return zza(zzc(paramWebView), paramString1, paramString2, null, paramJsResult, null, false);
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    return zza(zzc(paramWebView), paramString1, paramString2, paramString3, null, paramJsPromptResult, true);
  }
  
  public final void onReachedMaxAppCacheSize(long paramLong1, long paramLong2, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    paramLong1 = 131072L + paramLong1;
    if (5242880L - paramLong2 < paramLong1)
    {
      paramQuotaUpdater.updateQuota(0L);
      return;
    }
    paramQuotaUpdater.updateQuota(paramLong1);
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    zza(paramView, -1, paramCustomViewCallback);
  }
  
  protected final void zza(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    zzel localzzel = zzmu.zzeF();
    if (localzzel == null)
    {
      zzhx.zzac("Could not get ad overlay when showing custom view.");
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    localzzel.zza(paramView, paramCustomViewCallback);
    localzzel.setRequestedOrientation(paramInt);
  }
  
  protected boolean zza(Context paramContext, String paramString1, String paramString2, String paramString3, JsResult paramJsResult, JsPromptResult paramJsPromptResult, boolean paramBoolean)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
      localBuilder.setTitle(paramString1);
      if (paramBoolean) {
        zza(paramContext, localBuilder, paramString2, paramString3, paramJsPromptResult);
      } else {
        zza(localBuilder, paramString2, paramJsResult);
      }
    }
    catch (WindowManager.BadTokenException paramContext)
    {
      zzhx.zzd("Fail to display Dialog.", paramContext);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */