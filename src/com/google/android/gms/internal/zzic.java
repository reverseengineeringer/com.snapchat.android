package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Map;
import org.json.JSONObject;

@zzgi
public abstract interface zzic
{
  public abstract void destroy();
  
  public abstract Context getContext();
  
  public abstract ViewGroup.LayoutParams getLayoutParams();
  
  public abstract void getLocationOnScreen(int[] paramArrayOfInt);
  
  public abstract int getMeasuredHeight();
  
  public abstract int getMeasuredWidth();
  
  public abstract ViewParent getParent();
  
  public abstract int getRequestedOrientation();
  
  public abstract WebView getWebView();
  
  public abstract boolean isDestroyed();
  
  public abstract void loadData(String paramString1, String paramString2, String paramString3);
  
  public abstract void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract void loadUrl(String paramString);
  
  public abstract void measure(int paramInt1, int paramInt2);
  
  public abstract void setBackgroundColor(int paramInt);
  
  public abstract void setContext(Context paramContext);
  
  public abstract void setOnClickListener(View.OnClickListener paramOnClickListener);
  
  public abstract void setOnTouchListener(View.OnTouchListener paramOnTouchListener);
  
  public abstract void setRequestedOrientation(int paramInt);
  
  public abstract void setWebViewClient(WebViewClient paramWebViewClient);
  
  public abstract void setWillNotDraw(boolean paramBoolean);
  
  public abstract void stopLoading();
  
  public abstract boolean willNotDraw();
  
  public abstract void zzA(boolean paramBoolean);
  
  public abstract void zzB(boolean paramBoolean);
  
  public abstract void zza(Context paramContext, zzba paramzzba);
  
  public abstract void zza(zzba paramzzba);
  
  public abstract void zza(zzel paramzzel);
  
  public abstract void zza(String paramString, JSONObject paramJSONObject);
  
  public abstract zzba zzad();
  
  public abstract void zzb(String paramString1, String paramString2);
  
  public abstract void zzb(String paramString, Map<String, ?> paramMap);
  
  public abstract void zzb(String paramString, JSONObject paramJSONObject);
  
  public abstract void zzdh();
  
  public abstract Activity zzeD();
  
  public abstract Context zzeE();
  
  public abstract zzel zzeF();
  
  public abstract zzid zzeG();
  
  public abstract boolean zzeH();
  
  public abstract zzk zzeI();
  
  public abstract zzhy zzeJ();
  
  public abstract boolean zzeK();
  
  public abstract void zzeL();
  
  public abstract void zzp(int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */