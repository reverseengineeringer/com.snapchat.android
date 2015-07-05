package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.R.drawable;
import com.google.android.gms.R.string;
import com.google.android.gms.common.internal.zze;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzo;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzlu;
import com.google.android.gms.internal.zzme;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Scanner;

public final class GooglePlayServicesUtil
{
  public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
  public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
  public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 7095000;
  public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
  public static boolean zzLD = false;
  public static boolean zzLE = false;
  private static int zzLF = -1;
  private static final Object zzLG = new Object();
  
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return getErrorDialog(paramInt1, paramActivity, paramInt2, null);
  }
  
  public static Dialog getErrorDialog(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return zza(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  protected static int getErrorNotificationId(int paramInt)
  {
    switch (paramInt)
    {
    case 2: 
    default: 
      return 39789;
    }
    return 10436;
  }
  
  public static PendingIntent getErrorPendingIntent(int paramInt1, Context paramContext, int paramInt2)
  {
    Intent localIntent = zzan(paramInt1);
    if (localIntent == null) {
      return null;
    }
    return PendingIntent.getActivity(paramContext, paramInt2, localIntent, 268435456);
  }
  
  public static String getErrorString(int paramInt)
  {
    switch (paramInt)
    {
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    default: 
      return "UNKNOWN_ERROR_CODE";
    case 0: 
      return "SUCCESS";
    case 1: 
      return "SERVICE_MISSING";
    case 2: 
      return "SERVICE_VERSION_UPDATE_REQUIRED";
    case 3: 
      return "SERVICE_DISABLED";
    case 4: 
      return "SIGN_IN_REQUIRED";
    case 5: 
      return "INVALID_ACCOUNT";
    case 6: 
      return "RESOLUTION_REQUIRED";
    case 7: 
      return "NETWORK_ERROR";
    case 8: 
      return "INTERNAL_ERROR";
    case 9: 
      return "SERVICE_INVALID";
    case 10: 
      return "DEVELOPER_ERROR";
    case 11: 
      return "LICENSE_CHECK_FAILED";
    }
    return "API_UNAVAILABLE";
  }
  
  public static String getOpenSourceSoftwareLicenseInfo(Context paramContext)
  {
    Object localObject = new Uri.Builder().scheme("android.resource").authority("com.google.android.gms").appendPath("raw").appendPath("oss_notice").build();
    try
    {
      InputStream localInputStream = paramContext.getContentResolver().openInputStream((Uri)localObject);
      try
      {
        paramContext = new Scanner(localInputStream).useDelimiter("\\A").next();
        localObject = paramContext;
        if (localInputStream != null)
        {
          localInputStream.close();
          return paramContext;
        }
      }
      catch (NoSuchElementException paramContext)
      {
        paramContext = paramContext;
        if (localInputStream == null) {
          break label97;
        }
        localInputStream.close();
        break label97;
      }
      finally
      {
        paramContext = finally;
        if (localInputStream != null) {
          localInputStream.close();
        }
        throw paramContext;
      }
      return (String)localObject;
    }
    catch (Exception paramContext)
    {
      localObject = null;
    }
    label97:
    return null;
  }
  
  public static Context getRemoteContext(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static Resources getRemoteResource(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static int isGooglePlayServicesAvailable(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    if (!zze.zzPq) {}
    try
    {
      paramContext.getResources().getString(R.string.common_google_play_services_unknown_issue);
      if (!zze.zzPq) {
        zzJ(paramContext);
      }
      for (;;)
      {
        PackageInfo localPackageInfo;
        zzc localzzc;
        try
        {
          localPackageInfo = localPackageManager.getPackageInfo("com.google.android.gms", 64);
          localzzc = zzc.zzhP();
          if ((zzlu.zzbd(versionCode)) || (zzlu.zzQ(paramContext)))
          {
            if (localzzc.zza(localPackageInfo, zzb.zzaq.zzLC) != null) {
              break label121;
            }
            return 9;
          }
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          return 1;
        }
        try
        {
          paramContext = localPackageManager.getPackageInfo("com.android.vending", 64);
          paramContext = localzzc.zza(paramContext, zzb.zzaq.zzLC);
          if (paramContext == null) {
            continue;
          }
          if (localzzc.zza(localPackageInfo, new zzb.zza[] { paramContext }) == null) {
            continue;
          }
          label121:
          int i = zzlu.zzbb(7095000);
          if (zzlu.zzbb(versionCode) < i)
          {
            new StringBuilder("Google Play services out of date.  Requires 7095000 but found ").append(versionCode);
            return 2;
          }
          try
          {
            paramContext = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
            if (!enabled) {
              return 3;
            }
          }
          catch (PackageManager.NameNotFoundException paramContext)
          {
            Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.");
            paramContext.printStackTrace();
            return 1;
          }
          return 0;
        }
        catch (PackageManager.NameNotFoundException paramContext)
        {
          return 9;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  public static boolean isUserRecoverableError(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return false;
    }
    return true;
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, paramInt2, null);
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return showErrorDialogFragment(paramInt1, paramActivity, null, paramInt2, paramOnCancelListener);
  }
  
  public static boolean showErrorDialogFragment(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramFragment = zza(paramInt1, paramActivity, paramFragment, paramInt2, paramOnCancelListener);
    if (paramFragment == null) {
      return false;
    }
    if ((paramActivity instanceof FragmentActivity))
    {
      paramActivity = mFragments;
      SupportErrorDialogFragment.newInstance(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    for (;;)
    {
      return true;
      if (!zzme.zzkd()) {
        break;
      }
      paramActivity = paramActivity.getFragmentManager();
      ErrorDialogFragment.newInstance(paramFragment, paramOnCancelListener).show(paramActivity, "GooglePlayServicesErrorDialog");
    }
    throw new RuntimeException("This Activity does not support Fragments.");
  }
  
  public static void showErrorNotification(int paramInt, Context paramContext)
  {
    int i = paramInt;
    if (zzlu.zzQ(paramContext))
    {
      i = paramInt;
      if (paramInt == 2) {
        i = 42;
      }
    }
    if ((zzh(paramContext, i)) || (zzi(paramContext, i)))
    {
      zzK(paramContext);
      return;
    }
    zza(i, paramContext);
  }
  
  public static void zzI(Context paramContext)
  {
    int i = isGooglePlayServicesAvailable(paramContext);
    if (i != 0)
    {
      paramContext = zzan(i);
      if (paramContext == null) {
        throw new GooglePlayServicesNotAvailableException(i);
      }
      throw new GooglePlayServicesRepairableException(i, "Google Play Services not available", paramContext);
    }
  }
  
  private static void zzJ(Context paramContext)
  {
    Object localObject = null;
    int i;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      paramContext = metaData;
      if (paramContext == null) {
        break label89;
      }
      i = paramContext.getInt("com.google.android.gms.version");
      if (i == 7095000) {
        return;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        Log.wtf("GooglePlayServicesUtil", "This should never happen.", paramContext);
        paramContext = (Context)localObject;
      }
    }
    throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected 7095000 but found " + i + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
    label89:
    throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
  }
  
  private static void zzK(Context paramContext)
  {
    paramContext = new zza(paramContext);
    paramContext.sendMessageDelayed(paramContext.obtainMessage(1), 120000L);
  }
  
  public static void zzL(Context paramContext)
  {
    try
    {
      ((NotificationManager)paramContext.getSystemService("notification")).cancel(10436);
      return;
    }
    catch (SecurityException paramContext) {}
  }
  
  private static String zzM(Context paramContext)
  {
    Object localObject2 = getApplicationInfoname;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      localObject2 = paramContext.getApplicationContext().getPackageManager();
    }
    try
    {
      paramContext = ((PackageManager)localObject2).getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext != null) {
        localObject1 = ((PackageManager)localObject2).getApplicationLabel(paramContext).toString();
      }
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
  
  private static Dialog zza(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    int i = paramInt1;
    if (zzlu.zzQ(paramActivity))
    {
      i = paramInt1;
      if (paramInt1 == 2) {
        i = 42;
      }
    }
    if (zzme.zzkg())
    {
      localObject1 = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, (TypedValue)localObject1, true);
      if (!"Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(resourceId))) {}
    }
    for (Object localObject1 = new AlertDialog.Builder(paramActivity, 5);; localObject1 = null)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new AlertDialog.Builder(paramActivity);
      }
      ((AlertDialog.Builder)localObject2).setMessage(zze(paramActivity, i));
      if (paramOnCancelListener != null) {
        ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
      }
      paramOnCancelListener = zzan(i);
      if (paramFragment == null) {}
      for (paramFragment = new zzg(paramActivity, paramOnCancelListener, paramInt2);; paramFragment = new zzg(paramFragment, paramOnCancelListener, paramInt2))
      {
        paramActivity = zzf(paramActivity, i);
        if (paramActivity != null) {
          ((AlertDialog.Builder)localObject2).setPositiveButton(paramActivity, paramFragment);
        }
        switch (i)
        {
        default: 
          return ((AlertDialog.Builder)localObject2).create();
        }
      }
      return null;
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_install_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_enable_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_update_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_android_wear_update_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_unsupported_title).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_network_error_title).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_invalid_account_title).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).create();
      return ((AlertDialog.Builder)localObject2).setTitle(R.string.common_google_play_services_sign_in_failed_title).create();
    }
  }
  
  private static void zza(int paramInt, Context paramContext)
  {
    zza(paramInt, paramContext, null);
  }
  
  private static void zza(int paramInt, Context paramContext, String paramString)
  {
    Object localObject = paramContext.getResources();
    String str1 = zzg(paramContext, paramInt);
    String str2 = ((Resources)localObject).getString(R.string.common_google_play_services_error_notification_requested_by_msg, new Object[] { zzM(paramContext) });
    PendingIntent localPendingIntent = getErrorPendingIntent(paramInt, paramContext, 0);
    if (zzlu.zzQ(paramContext))
    {
      zzx.zzN(zzme.zzkh());
      localObject = new Notification.Builder(paramContext).setSmallIcon(R.drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new Notification.BigTextStyle().bigText(str1 + " " + str2)).addAction(R.drawable.common_full_open_on_phone, ((Resources)localObject).getString(R.string.common_open_on_phone), localPendingIntent).build();
      paramContext = (NotificationManager)paramContext.getSystemService("notification");
      if (paramString != null) {
        paramContext.notify(paramString, getErrorNotificationId(paramInt), (Notification)localObject);
      }
    }
    else
    {
      localObject = new Notification(17301642, ((Resources)localObject).getString(R.string.common_google_play_services_notification_ticker), System.currentTimeMillis());
      flags |= 0x10;
      if (Build.VERSION.SDK_INT >= 21) {
        flags |= 0x100;
      }
      for (;;)
      {
        ((Notification)localObject).setLatestEventInfo(paramContext, str1, str2, localPendingIntent);
        break;
        if (Build.VERSION.SDK_INT >= 19) {
          extras.putBoolean("android.support.localOnly", true);
        }
      }
    }
    paramContext.notify(getErrorNotificationId(paramInt), (Notification)localObject);
  }
  
  public static boolean zza(Context paramContext, int paramInt, String paramString)
  {
    boolean bool2 = false;
    if (zzme.zzkj()) {
      paramContext = (AppOpsManager)paramContext.getSystemService("appops");
    }
    for (;;)
    {
      try
      {
        paramContext.checkPackage(paramInt, paramString);
        bool1 = true;
        return bool1;
      }
      catch (SecurityException paramContext) {}
      paramContext = paramContext.getPackageManager().getPackagesForUid(paramInt);
      boolean bool1 = bool2;
      if (paramString != null)
      {
        bool1 = bool2;
        if (paramContext != null)
        {
          paramInt = 0;
          for (;;)
          {
            bool1 = bool2;
            if (paramInt >= paramContext.length) {
              break;
            }
            if (paramString.equals(paramContext[paramInt])) {
              return true;
            }
            paramInt += 1;
          }
        }
      }
    }
    return false;
  }
  
  public static boolean zza(Resources paramResources)
  {
    if (paramResources == null) {}
    for (;;)
    {
      return false;
      if ((getConfigurationscreenLayout & 0xF) > 3) {}
      for (int i = 1; ((zzme.zzkd()) && (i != 0)) || (zzb(paramResources)); i = 0) {
        return true;
      }
    }
  }
  
  public static Intent zzan(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return zzo.zzbl("com.google.android.gms");
    case 42: 
      return zzo.zzjl();
    }
    return zzo.zzbj("com.google.android.gms");
  }
  
  public static boolean zzb(PackageManager paramPackageManager)
  {
    synchronized (zzLG)
    {
      int i = zzLF;
      if (i == -1) {}
      try
      {
        paramPackageManager = paramPackageManager.getPackageInfo("com.google.android.gms", 64);
        if (zzc.zzhP().zza(paramPackageManager, new zzb.zza[] { zzb.zzLv[1] }) != null) {}
        for (zzLF = 1; zzLF != 0; zzLF = 0) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramPackageManager)
      {
        for (;;)
        {
          zzLF = 0;
        }
      }
    }
    return false;
  }
  
  @Deprecated
  public static boolean zzb(PackageManager paramPackageManager, String paramString)
  {
    return zzc.zzhP().zzb(paramPackageManager, paramString);
  }
  
  private static boolean zzb(Resources paramResources)
  {
    boolean bool2 = false;
    paramResources = paramResources.getConfiguration();
    boolean bool1 = bool2;
    if (zzme.zzkf())
    {
      bool1 = bool2;
      if ((screenLayout & 0xF) <= 3)
      {
        bool1 = bool2;
        if (smallestScreenWidthDp >= 600) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean zzc(PackageManager paramPackageManager)
  {
    return (zzb(paramPackageManager)) || (!zzhO());
  }
  
  public static boolean zzd(Context paramContext, int paramInt)
  {
    return (zza(paramContext, paramInt, "com.google.android.gms")) && (zzb(paramContext.getPackageManager(), "com.google.android.gms"));
  }
  
  public static String zze(Context paramContext, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return localResources.getString(R.string.common_google_play_services_unknown_issue);
    case 1: 
      if (zza(paramContext.getResources())) {
        return localResources.getString(R.string.common_google_play_services_install_text_tablet);
      }
      return localResources.getString(R.string.common_google_play_services_install_text_phone);
    case 3: 
      return localResources.getString(R.string.common_google_play_services_enable_text);
    case 2: 
      return localResources.getString(R.string.common_google_play_services_update_text);
    case 42: 
      return localResources.getString(R.string.common_android_wear_update_text);
    case 9: 
      return localResources.getString(R.string.common_google_play_services_unsupported_text);
    case 7: 
      return localResources.getString(R.string.common_google_play_services_network_error_text);
    case 5: 
      return localResources.getString(R.string.common_google_play_services_invalid_account_text);
    case 16: 
      return localResources.getString(R.string.commono_google_play_services_api_unavailable_text);
    }
    return localResources.getString(R.string.common_google_play_services_sign_in_failed_text);
  }
  
  public static String zzf(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(17039370);
    case 1: 
      return paramContext.getString(R.string.common_google_play_services_install_button);
    case 3: 
      return paramContext.getString(R.string.common_google_play_services_enable_button);
    }
    return paramContext.getString(R.string.common_google_play_services_update_button);
  }
  
  public static String zzg(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(R.string.common_google_play_services_unknown_issue);
    case 1: 
      return paramContext.getString(R.string.common_google_play_services_notification_needs_installation_title);
    case 2: 
      return paramContext.getString(R.string.common_google_play_services_notification_needs_update_title);
    case 42: 
      return paramContext.getString(R.string.common_android_wear_notification_needs_update_text);
    case 3: 
      return paramContext.getString(R.string.common_google_play_services_needs_enabling_title);
    case 9: 
      return paramContext.getString(R.string.common_google_play_services_unsupported_text);
    case 7: 
      return paramContext.getString(R.string.common_google_play_services_network_error_text);
    case 5: 
      return paramContext.getString(R.string.common_google_play_services_invalid_account_text);
    case 16: 
      return paramContext.getString(R.string.commono_google_play_services_api_unavailable_text);
    }
    return paramContext.getString(R.string.common_google_play_services_sign_in_failed_text);
  }
  
  private static boolean zzg(Context paramContext, String paramString)
  {
    if (zzme.zzkl())
    {
      paramContext = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      do
      {
        if (!paramContext.hasNext()) {
          break;
        }
      } while (!paramString.equals(((PackageInstaller.SessionInfo)paramContext.next()).getAppPackageName()));
      return true;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      boolean bool = getApplicationInfo8192enabled;
      if (bool) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean zzh(Context paramContext, int paramInt)
  {
    if (paramInt == 1) {
      return zzg(paramContext, "com.google.android.gms");
    }
    return false;
  }
  
  public static boolean zzhO()
  {
    if (zzLD) {
      return zzLE;
    }
    return "user".equals(Build.TYPE);
  }
  
  public static boolean zzi(Context paramContext, int paramInt)
  {
    if (paramInt == 9) {
      return zzg(paramContext, "com.android.vending");
    }
    return false;
  }
  
  static class zza
    extends Handler
  {
    private final Context zznk;
    
    zza(Context paramContext) {}
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        new StringBuilder("Don't know how to handle this message: ").append(what);
      }
      int i;
      do
      {
        return;
        i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(zznk);
      } while (!GooglePlayServicesUtil.isUserRecoverableError(i));
      GooglePlayServicesUtil.zzb(i, zznk);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.GooglePlayServicesUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */