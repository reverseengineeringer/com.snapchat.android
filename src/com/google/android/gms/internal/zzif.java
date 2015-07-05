package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzif
  extends WebView
  implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, zzic
{
  private final zza zzAa;
  private zzel zzAb;
  private boolean zzAc;
  private boolean zzAd;
  private boolean zzAe;
  private boolean zzAf;
  private boolean zzAg;
  private int zzAh;
  boolean zzAi;
  private final Object zznh = new Object();
  private final zzhy zznl;
  private final WindowManager zznu;
  private zzba zzsF;
  private int zztI = -1;
  private int zztJ = -1;
  private int zztL = -1;
  private int zztM = -1;
  private final zzid zzvy;
  private final zzk zzwg;
  private Boolean zzyV;
  
  protected zzif(zza paramzza, zzba paramzzba, boolean paramBoolean1, boolean paramBoolean2, zzk paramzzk, zzhy paramzzhy)
  {
    super(paramzza);
    zzAa = paramzza;
    zzsF = paramzzba;
    zzAe = paramBoolean1;
    zzAg = false;
    zzAh = -1;
    zzwg = paramzzk;
    zznl = paramzzhy;
    zznu = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramzzba = getSettings();
    paramzzba.setJavaScriptEnabled(true);
    paramzzba.setSavePassword(false);
    paramzzba.setSupportMultipleWindows(true);
    paramzzba.setJavaScriptCanOpenWindowsAutomatically(true);
    if (Build.VERSION.SDK_INT >= 21) {
      paramzzba.setMixedContentMode(0);
    }
    zzab.zzaM().zza(paramzza, zzzH, paramzzba);
    zzab.zzaO().zza(getContext(), paramzzba);
    setDownloadListener(this);
    zzvy = zzab.zzaO().zzb(this, paramBoolean2);
    setWebViewClient(zzvy);
    setWebChromeClient(zzab.zzaO().zzb(this));
    zzeW();
  }
  
  static zzif zzb(Context paramContext, zzba paramzzba, boolean paramBoolean1, boolean paramBoolean2, zzk paramzzk, zzhy paramzzhy)
  {
    return new zzif(new zza(paramContext), paramzzba, paramBoolean1, paramBoolean2, paramzzk, paramzzhy);
  }
  
  private void zzeT()
  {
    synchronized (zznh)
    {
      zzyV = zzab.zzaP().zzek();
      Boolean localBoolean = zzyV;
      if (localBoolean == null) {}
      try
      {
        evaluateJavascript("(function(){})()", null);
        zzb(Boolean.valueOf(true));
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          zzb(Boolean.valueOf(false));
        }
      }
    }
  }
  
  private void zzeU()
  {
    Activity localActivity = zzeD();
    if ((zzAg) && (localActivity != null))
    {
      zzab.zzaO().zzb(localActivity, this);
      zzAg = false;
    }
  }
  
  private void zzeW()
  {
    for (;;)
    {
      synchronized (zznh)
      {
        if ((zzAe) || (zzsF.zzpb))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            zzhx.zzY("Disabling hardware acceleration on an overlay.");
            zzeX();
            return;
          }
          zzhx.zzY("Enabling hardware acceleration on an overlay.");
          zzeY();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        zzhx.zzY("Disabling hardware acceleration on an AdView.");
        zzeX();
      }
      else
      {
        zzhx.zzY("Enabling hardware acceleration on an AdView.");
        zzeY();
      }
    }
  }
  
  private void zzeX()
  {
    synchronized (zznh)
    {
      if (!zzAf) {
        zzab.zzaO().zzk(this);
      }
      zzAf = true;
      return;
    }
  }
  
  private void zzeY()
  {
    synchronized (zznh)
    {
      if (zzAf) {
        zzab.zzaO().zzj(this);
      }
      zzAf = false;
      return;
    }
  }
  
  public void destroy()
  {
    synchronized (zznh)
    {
      zzeU();
      if (zzAb != null)
      {
        zzAb.close();
        zzAb.onDestroy();
        zzAb = null;
      }
      zzvy.reset();
      if (zzAd) {
        return;
      }
      zzAd = true;
      super.destroy();
      return;
    }
  }
  
  public void evaluateJavascript(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (zznh)
    {
      if (isDestroyed())
      {
        zzhx.zzac("The webview is destroyed. Ignoring action.");
        if (paramValueCallback != null) {
          paramValueCallback.onReceiveValue(null);
        }
        return;
      }
      super.evaluateJavascript(paramString, paramValueCallback);
      return;
    }
  }
  
  public int getRequestedOrientation()
  {
    synchronized (zznh)
    {
      int i = zzAh;
      return i;
    }
  }
  
  public WebView getWebView()
  {
    return this;
  }
  
  public boolean isDestroyed()
  {
    synchronized (zznh)
    {
      boolean bool = zzAd;
      return bool;
    }
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    synchronized (zznh)
    {
      if (!isDestroyed())
      {
        super.loadData(paramString1, paramString2, paramString3);
        return;
      }
      zzhx.zzac("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (zznh)
    {
      if (!isDestroyed())
      {
        super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
        return;
      }
      zzhx.zzac("The webview is destroyed. Ignoring action.");
    }
  }
  
  protected void onAttachedToWindow()
  {
    synchronized (zznh)
    {
      super.onAttachedToWindow();
      zzAi = true;
      if (zzvy.zzba()) {
        zzeV();
      }
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    synchronized (zznh)
    {
      zzeU();
      zzAi = false;
      super.onDetachedFromWindow();
      return;
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      getContext().startActivity(paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      zzhx.zzY("Couldn't find an Activity to view url/mimetype: " + paramString1 + " / " + paramString4);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((Build.VERSION.SDK_INT == 21) && (paramCanvas.isHardwareAccelerated()) && (!isAttachedToWindow())) {
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void onGlobalLayout()
  {
    boolean bool = zzeS();
    zzel localzzel = zzeF();
    if ((localzzel != null) && (bool)) {
      localzzel.zzdg();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = Integer.MAX_VALUE;
    synchronized (zznh)
    {
      if ((isInEditMode()) || (zzAe))
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
      if (zzsF.zzpb)
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        zznu.getDefaultDisplay().getMetrics(localDisplayMetrics);
        setMeasuredDimension(widthPixels, heightPixels);
        return;
      }
    }
    int n = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt2);
    if (n != Integer.MIN_VALUE) {
      if (n == 1073741824) {
        break label328;
      }
    }
    for (;;)
    {
      if ((zzsF.widthPixels > paramInt1) || (zzsF.heightPixels > paramInt2))
      {
        float f = zzAa.getResources().getDisplayMetrics().density;
        zzhx.zzac("Not enough space to show ad. Needs " + (int)(zzsF.widthPixels / f) + "x" + (int)(zzsF.heightPixels / f) + " dp, but only has " + (int)(i / f) + "x" + (int)(k / f) + " dp.");
        if (getVisibility() != 8) {
          setVisibility(4);
        }
        setMeasuredDimension(0, 0);
      }
      for (;;)
      {
        return;
        if (getVisibility() != 8) {
          setVisibility(0);
        }
        setMeasuredDimension(zzsF.widthPixels, zzsF.heightPixels);
      }
      paramInt1 = Integer.MAX_VALUE;
      break label331;
      label328:
      paramInt1 = i;
      label331:
      if (m != Integer.MIN_VALUE)
      {
        paramInt2 = j;
        if (m != 1073741824) {}
      }
      else
      {
        paramInt2 = k;
      }
    }
  }
  
  public void onPause()
  {
    if (isDestroyed()) {
      return;
    }
    try
    {
      super.onPause();
      return;
    }
    catch (Exception localException)
    {
      zzhx.zzb("Could not pause webview.", localException);
    }
  }
  
  public void onResume()
  {
    if (isDestroyed()) {
      return;
    }
    try
    {
      super.onResume();
      return;
    }
    catch (Exception localException)
    {
      zzhx.zzb("Could not resume webview.", localException);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (zzwg != null) {
      zzwg.zza(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setContext(Context paramContext)
  {
    zzAa.setBaseContext(paramContext);
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    synchronized (zznh)
    {
      zzAh = paramInt;
      if (zzAb != null) {
        zzAb.setRequestedOrientation(zzAh);
      }
      return;
    }
  }
  
  public void stopLoading()
  {
    if (isDestroyed()) {
      return;
    }
    try
    {
      super.stopLoading();
      return;
    }
    catch (Exception localException)
    {
      zzhx.zzb("Could not stop loading webview.", localException);
    }
  }
  
  public void zzA(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      zzAe = paramBoolean;
      zzeW();
      return;
    }
  }
  
  public void zzB(boolean paramBoolean)
  {
    synchronized (zznh)
    {
      if (zzAb != null)
      {
        zzAb.zza(zzvy.zzba(), paramBoolean);
        return;
      }
      zzAc = paramBoolean;
    }
  }
  
  public void zza(Context paramContext, zzba paramzzba)
  {
    synchronized (zznh)
    {
      zzeU();
      setContext(paramContext);
      zzAb = null;
      zzsF = paramzzba;
      zzAe = false;
      zzAc = false;
      zzAh = -1;
      zzab.zzaO().zzb(this);
      loadUrl("about:blank");
      zzvy.reset();
      setOnTouchListener(null);
      setOnClickListener(null);
      return;
    }
  }
  
  public void zza(zzba paramzzba)
  {
    synchronized (zznh)
    {
      zzsF = paramzzba;
      requestLayout();
      return;
    }
  }
  
  public void zza(zzel paramzzel)
  {
    synchronized (zznh)
    {
      zzAb = paramzzel;
      return;
    }
  }
  
  protected void zza(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (zznh)
    {
      if (!isDestroyed()) {
        evaluateJavascript(paramString, paramValueCallback);
      }
      do
      {
        return;
        zzhx.zzac("The webview is destroyed. Ignoring action.");
      } while (paramValueCallback == null);
      paramValueCallback.onReceiveValue(null);
    }
  }
  
  public void zza(String paramString, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    zzb(paramString, localJSONObject.toString());
  }
  
  public zzba zzad()
  {
    synchronized (zznh)
    {
      zzba localzzba = zzsF;
      return localzzba;
    }
  }
  
  protected void zzad(String paramString)
  {
    synchronized (zznh)
    {
      if (!isDestroyed())
      {
        loadUrl(paramString);
        return;
      }
      zzhx.zzac("The webview is destroyed. Ignoring action.");
    }
  }
  
  protected void zzae(String paramString)
  {
    if (zzme.zzkj())
    {
      if (zzek() == null) {
        zzeT();
      }
      if (zzek().booleanValue())
      {
        zza(paramString, null);
        return;
      }
      zzad("javascript:" + paramString);
      return;
    }
    zzad("javascript:" + paramString);
  }
  
  void zzb(Boolean paramBoolean)
  {
    zzyV = paramBoolean;
    zzab.zzaP().zzb(paramBoolean);
  }
  
  public void zzb(String paramString1, String paramString2)
  {
    zzae(paramString1 + "(" + paramString2 + ");");
  }
  
  public void zzb(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = zzab.zzaM().zzw(paramMap);
      zzb(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      zzhx.zzac("Could not convert parameters to JSON.");
    }
  }
  
  public void zzb(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    zzhx.zzab("Dispatching AFMA event: " + ((StringBuilder)localObject).toString());
    zzae(((StringBuilder)localObject).toString());
  }
  
  public void zzdh()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", zznl.zzzH);
    zzb("onshow", localHashMap);
  }
  
  public Activity zzeD()
  {
    return zzAa.zzeD();
  }
  
  public Context zzeE()
  {
    return zzAa.zzeE();
  }
  
  public zzel zzeF()
  {
    synchronized (zznh)
    {
      zzel localzzel = zzAb;
      return localzzel;
    }
  }
  
  public zzid zzeG()
  {
    return zzvy;
  }
  
  public boolean zzeH()
  {
    return zzAc;
  }
  
  public zzk zzeI()
  {
    return zzwg;
  }
  
  public zzhy zzeJ()
  {
    return zznl;
  }
  
  public boolean zzeK()
  {
    synchronized (zznh)
    {
      boolean bool = zzAe;
      return bool;
    }
  }
  
  public void zzeL()
  {
    synchronized (zznh)
    {
      zzeV();
      return;
    }
  }
  
  public boolean zzeS()
  {
    if (!zzeG().zzba()) {
      return false;
    }
    DisplayMetrics localDisplayMetrics = zzab.zzaM().zza(zznu);
    int k = zzbe.zzbD().zzb(localDisplayMetrics, widthPixels);
    int m = zzbe.zzbD().zzb(localDisplayMetrics, heightPixels);
    Object localObject = zzeD();
    int j;
    int i;
    if ((localObject == null) || (((Activity)localObject).getWindow() == null))
    {
      j = m;
      i = k;
      label77:
      if ((zztI == k) && (zztJ == m) && (zztL == i) && (zztM == j)) {
        break label224;
      }
      if ((zztI == k) && (zztJ == m)) {
        break label226;
      }
    }
    label224:
    label226:
    for (boolean bool = true;; bool = false)
    {
      zztI = k;
      zztJ = m;
      zztL = i;
      zztM = j;
      new zzeg(this).zza(k, m, i, j, density, zznu.getDefaultDisplay().getRotation());
      return bool;
      localObject = zzab.zzaM().zzg((Activity)localObject);
      i = zzbe.zzbD().zzb(localDisplayMetrics, localObject[0]);
      j = zzbe.zzbD().zzb(localDisplayMetrics, localObject[1]);
      break label77;
      break;
    }
  }
  
  void zzeV()
  {
    Activity localActivity = zzeD();
    if ((!zzAg) && (localActivity != null) && (zzAi))
    {
      zzab.zzaM().zza(localActivity, this);
      zzAg = true;
    }
  }
  
  Boolean zzek()
  {
    synchronized (zznh)
    {
      Boolean localBoolean = zzyV;
      return localBoolean;
    }
  }
  
  public void zzp(int paramInt)
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("closetype", String.valueOf(paramInt));
    localHashMap.put("version", zznl.zzzH);
    zzb("onhide", localHashMap);
  }
  
  @zzgi
  public static class zza
    extends MutableContextWrapper
  {
    private Activity zzAj;
    private Context zzAk;
    private Context zznk;
    
    public zza(Context paramContext)
    {
      super();
      setBaseContext(paramContext);
    }
    
    public Object getSystemService(String paramString)
    {
      return zzAk.getSystemService(paramString);
    }
    
    public void setBaseContext(Context paramContext)
    {
      zznk = paramContext.getApplicationContext();
      if ((paramContext instanceof Activity)) {}
      for (Activity localActivity = (Activity)paramContext;; localActivity = null)
      {
        zzAj = localActivity;
        zzAk = paramContext;
        super.setBaseContext(zznk);
        return;
      }
    }
    
    public void startActivity(Intent paramIntent)
    {
      if ((zzAj != null) && (!zzme.zzkk()))
      {
        zzAj.startActivity(paramIntent);
        return;
      }
      paramIntent.setFlags(268435456);
      zznk.startActivity(paramIntent);
    }
    
    public Activity zzeD()
    {
      return zzAj;
    }
    
    public Context zzeE()
    {
      return zzAk;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */