package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.PopupWindow;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzho
{
  private final Object zznh = new Object();
  private String zzyW;
  private boolean zzzq = true;
  private boolean zzzr = false;
  
  private JSONArray zza(Collection<?> paramCollection)
  {
    JSONArray localJSONArray = new JSONArray();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      zza(localJSONArray, paramCollection.next());
    }
    return localJSONArray;
  }
  
  private void zza(JSONArray paramJSONArray, Object paramObject)
  {
    if ((paramObject instanceof Bundle))
    {
      paramJSONArray.put(zzg((Bundle)paramObject));
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramJSONArray.put(zzw((Map)paramObject));
      return;
    }
    if ((paramObject instanceof Collection))
    {
      paramJSONArray.put(zza((Collection)paramObject));
      return;
    }
    if ((paramObject instanceof Object[]))
    {
      paramJSONArray.put(zza((Object[])paramObject));
      return;
    }
    paramJSONArray.put(paramObject);
  }
  
  private void zza(JSONObject paramJSONObject, String paramString, Object paramObject)
  {
    if ((paramObject instanceof Bundle))
    {
      paramJSONObject.put(paramString, zzg((Bundle)paramObject));
      return;
    }
    if ((paramObject instanceof Map))
    {
      paramJSONObject.put(paramString, zzw((Map)paramObject));
      return;
    }
    if ((paramObject instanceof Collection))
    {
      if (paramString != null) {}
      for (;;)
      {
        paramJSONObject.put(paramString, zza((Collection)paramObject));
        return;
        paramString = "null";
      }
    }
    if ((paramObject instanceof Object[]))
    {
      paramJSONObject.put(paramString, zza(Arrays.asList((Object[])paramObject)));
      return;
    }
    paramJSONObject.put(paramString, paramObject);
  }
  
  private JSONObject zzg(Bundle paramBundle)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      zza(localJSONObject, str, paramBundle.get(str));
    }
    return localJSONObject;
  }
  
  public String zzS(String paramString)
  {
    return Uri.parse(paramString).buildUpon().query(null).build().toString();
  }
  
  public int zzT(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      zzhx.zzac("Could not parse value:" + paramString);
    }
    return 0;
  }
  
  public boolean zzU(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return paramString.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
  }
  
  public DisplayMetrics zza(WindowManager paramWindowManager)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
    return localDisplayMetrics;
  }
  
  public PopupWindow zza(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return new PopupWindow(paramView, paramInt1, paramInt2, paramBoolean);
  }
  
  public String zza(Context paramContext, View paramView, zzba paramzzba)
  {
    if (!((Boolean)zzca.zzqM.get()).booleanValue()) {
      return null;
    }
    for (;;)
    {
      try
      {
        JSONObject localJSONObject1 = new JSONObject();
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("width", width);
        localJSONObject2.put("height", height);
        localJSONObject1.put("size", localJSONObject2);
        localJSONObject1.put("activity", zzy(paramContext));
        if (!zzpb)
        {
          paramContext = new JSONArray();
          if (paramView != null)
          {
            paramzzba = paramView.getParent();
            if (paramzzba != null)
            {
              int i = -1;
              if ((paramzzba instanceof ViewGroup)) {
                i = ((ViewGroup)paramzzba).indexOfChild(paramView);
              }
              paramView = new JSONObject();
              paramView.put("type", paramzzba.getClass().getName());
              paramView.put("index_of_child", i);
              paramContext.put(paramView);
            }
            if ((paramzzba == null) || (!(paramzzba instanceof View))) {
              break label222;
            }
            paramView = (View)paramzzba;
            continue;
          }
          if (paramContext.length() > 0) {
            localJSONObject1.put("parents", paramContext);
          }
        }
        paramContext = localJSONObject1.toString();
        return paramContext;
      }
      catch (JSONException paramContext)
      {
        zzhx.zzd("Fail to get view hierarchy json", paramContext);
        return null;
      }
      label222:
      paramView = null;
    }
  }
  
  public String zza(Context paramContext, zzk paramzzk, String paramString)
  {
    if (paramzzk == null) {
      return paramString;
    }
    try
    {
      Uri localUri2 = Uri.parse(paramString);
      Uri localUri1 = localUri2;
      if (paramzzk.zzc(localUri2)) {
        localUri1 = paramzzk.zza(localUri2, paramContext);
      }
      paramContext = localUri1.toString();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return paramString;
  }
  
  public String zza(InputStreamReader paramInputStreamReader)
  {
    StringBuilder localStringBuilder = new StringBuilder(8192);
    char[] arrayOfChar = new char['ࠀ'];
    for (;;)
    {
      int i = paramInputStreamReader.read(arrayOfChar);
      if (i == -1) {
        break;
      }
      localStringBuilder.append(arrayOfChar, 0, i);
    }
    return localStringBuilder.toString();
  }
  
  JSONArray zza(Object[] paramArrayOfObject)
  {
    JSONArray localJSONArray = new JSONArray();
    int j = paramArrayOfObject.length;
    int i = 0;
    while (i < j)
    {
      zza(localJSONArray, paramArrayOfObject[i]);
      i += 1;
    }
    return localJSONArray;
  }
  
  public void zza(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      paramActivity.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(paramOnGlobalLayoutListener);
    }
  }
  
  public void zza(Context paramContext, String paramString, WebSettings paramWebSettings)
  {
    paramWebSettings.setUserAgentString(zze(paramContext, paramString));
  }
  
  public void zza(Context paramContext, String paramString, List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      new zzhu(paramContext, paramString, (String)paramList.next()).start();
    }
  }
  
  public void zza(Context paramContext, String paramString1, List<String> paramList, String paramString2)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      new zzhu(paramContext, paramString1, (String)paramList.next(), paramString2).start();
    }
  }
  
  public void zza(Context paramContext, String paramString, boolean paramBoolean, HttpURLConnection paramHttpURLConnection)
  {
    zza(paramContext, paramString, paramBoolean, paramHttpURLConnection, false);
  }
  
  public void zza(Context paramContext, String paramString1, boolean paramBoolean, HttpURLConnection paramHttpURLConnection, String paramString2)
  {
    paramHttpURLConnection.setConnectTimeout(60000);
    paramHttpURLConnection.setInstanceFollowRedirects(paramBoolean);
    paramHttpURLConnection.setReadTimeout(60000);
    paramHttpURLConnection.setRequestProperty("User-Agent", paramString2);
    paramHttpURLConnection.setUseCaches(false);
  }
  
  public void zza(Context paramContext, String paramString, boolean paramBoolean1, HttpURLConnection paramHttpURLConnection, boolean paramBoolean2)
  {
    paramHttpURLConnection.setConnectTimeout(60000);
    paramHttpURLConnection.setInstanceFollowRedirects(paramBoolean1);
    paramHttpURLConnection.setReadTimeout(60000);
    paramHttpURLConnection.setRequestProperty("User-Agent", zze(paramContext, paramString));
    paramHttpURLConnection.setUseCaches(paramBoolean2);
  }
  
  public boolean zza(PackageManager paramPackageManager, String paramString1, String paramString2)
  {
    return paramPackageManager.checkPermission(paramString2, paramString1) == 0;
  }
  
  public boolean zza(ClassLoader paramClassLoader, Class<?> paramClass, String paramString)
  {
    try
    {
      boolean bool = paramClass.isAssignableFrom(Class.forName(paramString, false, paramClassLoader));
      return bool;
    }
    catch (Throwable paramClassLoader) {}
    return false;
  }
  
  public String zzb(zzic paramzzic, String paramString)
  {
    return zza(paramzzic.getContext(), paramzzic.zzeI(), paramString);
  }
  
  public void zzc(Context paramContext, String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    zza(paramContext, paramString1, localArrayList);
  }
  
  public Map<String, String> zzd(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = zzab.zzaO().zze(paramUri).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramUri.getQueryParameter(str));
    }
    return localHashMap;
  }
  
  public String zze(final Context paramContext, String paramString)
  {
    synchronized (zznh)
    {
      if (zzyW != null)
      {
        paramContext = zzyW;
        return paramContext;
      }
    }
    try
    {
      zzyW = zzab.zzaO().getDefaultUserAgent(paramContext);
      if (TextUtils.isEmpty(zzyW))
      {
        if (zzbe.zzbD().zzeC()) {
          break label132;
        }
        zzyW = null;
        zzhw.zzzG.post(new Runnable()
        {
          public void run()
          {
            synchronized (zzho.zza(zzho.this))
            {
              zzho.zza(zzho.this, zzv(paramContext));
              zzho.zza(zzho.this);
              return;
            }
          }
        });
        while (zzyW == null) {}
      }
      for (;;)
      {
        zzyW = (zzyW + " (Mobile; " + paramString + ")");
        paramContext = zzyW;
        return paramContext;
        paramContext = finally;
        throw paramContext;
        try
        {
          label132:
          zzyW = zzv(paramContext);
        }
        catch (Exception paramContext)
        {
          zzyW = zzet();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public boolean zzes()
  {
    return zzzq;
  }
  
  String zzet()
  {
    StringBuffer localStringBuffer = new StringBuffer(256);
    localStringBuffer.append("Mozilla/5.0 (Linux; U; Android");
    if (Build.VERSION.RELEASE != null) {
      localStringBuffer.append(" ").append(Build.VERSION.RELEASE);
    }
    localStringBuffer.append("; ").append(Locale.getDefault());
    if (Build.DEVICE != null)
    {
      localStringBuffer.append("; ").append(Build.DEVICE);
      if (Build.DISPLAY != null) {
        localStringBuffer.append(" Build/").append(Build.DISPLAY);
      }
    }
    localStringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
    return localStringBuffer.toString();
  }
  
  public String zzeu()
  {
    Object localObject1 = UUID.randomUUID();
    byte[] arrayOfByte1 = BigInteger.valueOf(((UUID)localObject1).getLeastSignificantBits()).toByteArray();
    byte[] arrayOfByte2 = BigInteger.valueOf(((UUID)localObject1).getMostSignificantBits()).toByteArray();
    localObject1 = new BigInteger(1, arrayOfByte1).toString();
    int i = 0;
    while (i < 2)
    {
      try
      {
        Object localObject2 = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject2).update(arrayOfByte1);
        ((MessageDigest)localObject2).update(arrayOfByte2);
        byte[] arrayOfByte3 = new byte[8];
        System.arraycopy(((MessageDigest)localObject2).digest(), 0, arrayOfByte3, 0, 8);
        localObject2 = new BigInteger(1, arrayOfByte3).toString();
        localObject1 = localObject2;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        for (;;) {}
      }
      i += 1;
    }
    return (String)localObject1;
  }
  
  public String zzev()
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    if (str2.startsWith(str1)) {
      return str2;
    }
    return str1 + " " + str2;
  }
  
  protected int[] zzew()
  {
    return new int[] { 0, 0 };
  }
  
  public int[] zzg(Activity paramActivity)
  {
    paramActivity = paramActivity.getWindow();
    if (paramActivity != null)
    {
      paramActivity = paramActivity.findViewById(16908290);
      if (paramActivity != null) {
        return new int[] { paramActivity.getWidth(), paramActivity.getHeight() };
      }
    }
    return zzew();
  }
  
  public Bitmap zzh(View paramView)
  {
    paramView.setDrawingCacheEnabled(true);
    Bitmap localBitmap = Bitmap.createBitmap(paramView.getDrawingCache());
    paramView.setDrawingCacheEnabled(false);
    return localBitmap;
  }
  
  public int[] zzh(Activity paramActivity)
  {
    int[] arrayOfInt = zzg(paramActivity);
    return new int[] { zzbe.zzbD().zzc(paramActivity, arrayOfInt[0]), zzbe.zzbD().zzc(paramActivity, arrayOfInt[1]) };
  }
  
  public int[] zzi(Activity paramActivity)
  {
    paramActivity = paramActivity.getWindow();
    if (paramActivity != null)
    {
      paramActivity = paramActivity.findViewById(16908290);
      if (paramActivity != null) {
        return new int[] { paramActivity.getTop(), paramActivity.getBottom() };
      }
    }
    return zzew();
  }
  
  public int[] zzj(Activity paramActivity)
  {
    int[] arrayOfInt = zzi(paramActivity);
    return new int[] { zzbe.zzbD().zzc(paramActivity, arrayOfInt[0]), zzbe.zzbD().zzc(paramActivity, arrayOfInt[1]) };
  }
  
  public int zzk(Activity paramActivity)
  {
    if (paramActivity == null)
    {
      zzhx.zzac("Fail to get AdActivity type since it is null");
      return 0;
    }
    paramActivity = zzeo.zzb(paramActivity.getIntent());
    if (paramActivity == null)
    {
      zzhx.zzac("Fail to get AdOverlayInfo");
      return 0;
    }
    switch (zzuw)
    {
    default: 
      return 0;
    case 1: 
      return 1;
    case 2: 
      return 2;
    }
    return 3;
  }
  
  public boolean zzt(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    paramContext = paramContext.getPackageManager().resolveActivity(localIntent, 65536);
    if ((paramContext == null) || (activityInfo == null))
    {
      zzhx.zzac("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
      return false;
    }
    if ((activityInfo.configChanges & 0x10) == 0) {
      zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "keyboard" }));
    }
    for (boolean bool = false;; bool = true)
    {
      if ((activityInfo.configChanges & 0x20) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "keyboardHidden" }));
        bool = false;
      }
      if ((activityInfo.configChanges & 0x80) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "orientation" }));
        bool = false;
      }
      if ((activityInfo.configChanges & 0x100) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "screenLayout" }));
        bool = false;
      }
      if ((activityInfo.configChanges & 0x200) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "uiMode" }));
        bool = false;
      }
      if ((activityInfo.configChanges & 0x400) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "screenSize" }));
        bool = false;
      }
      if ((activityInfo.configChanges & 0x800) == 0)
      {
        zzhx.zzac(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", new Object[] { "smallestScreenSize" }));
        return false;
      }
      return bool;
    }
  }
  
  public boolean zzu(Context paramContext)
  {
    if (zzzr) {
      return false;
    }
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.getApplicationContext().registerReceiver(new zza(null), localIntentFilter);
    zzzr = true;
    return true;
  }
  
  protected String zzv(Context paramContext)
  {
    return new WebView(paramContext).getSettings().getUserAgentString();
  }
  
  public AlertDialog.Builder zzw(Context paramContext)
  {
    return new AlertDialog.Builder(paramContext);
  }
  
  public JSONObject zzw(Map<String, ?> paramMap)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        zza(localJSONObject, str, paramMap.get(str));
      }
      return localJSONObject;
    }
    catch (ClassCastException paramMap)
    {
      throw new JSONException("Could not convert map to JSON: " + paramMap.getMessage());
    }
  }
  
  public zzbu zzx(Context paramContext)
  {
    return new zzbu(paramContext);
  }
  
  public String zzy(Context paramContext)
  {
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    if (paramContext == null) {
      return null;
    }
    paramContext = paramContext.getRunningTasks(1);
    if ((paramContext != null) && (!paramContext.isEmpty()))
    {
      paramContext = (ActivityManager.RunningTaskInfo)paramContext.get(0);
      if ((paramContext != null) && (topActivity != null)) {
        return topActivity.getClassName();
      }
    }
    return null;
  }
  
  final class zza
    extends BroadcastReceiver
  {
    private zza() {}
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      kkxxkk.b041E041EОО041EО(paramContext);
      xkkkxk.b041E041EООО041E(paramContext);
      if ("android.intent.action.USER_PRESENT".equals(paramIntent.getAction())) {
        zzho.zza(zzho.this, true);
      }
      while (!"android.intent.action.SCREEN_OFF".equals(paramIntent.getAction())) {
        return;
      }
      zzho.zza(zzho.this, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */