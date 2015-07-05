package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzjo;
import java.net.URISyntaxException;

public final class GoogleAuthUtil
{
  public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
  public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
  public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
  public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
  public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
  public static final String KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
  public static final String KEY_CALLER_UID;
  public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";
  @Deprecated
  public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
  public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
  private static final ComponentName zzHk = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
  private static final ComponentName zzHl = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    KEY_CALLER_UID = "callerUid";
    i = Build.VERSION.SDK_INT;
  }
  
  /* Error */
  public static void clearToken(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 76	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore_2
    //   5: ldc 78
    //   7: invokestatic 84	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   10: aload_2
    //   11: invokestatic 88	com/google/android/gms/auth/GoogleAuthUtil:zzI	(Landroid/content/Context;)V
    //   14: new 90	android/os/Bundle
    //   17: dup
    //   18: invokespecial 91	android/os/Bundle:<init>	()V
    //   21: astore_3
    //   22: aload_0
    //   23: invokevirtual 95	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   26: getfield 100	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   29: astore_0
    //   30: aload_3
    //   31: ldc 102
    //   33: aload_0
    //   34: invokevirtual 105	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_3
    //   38: getstatic 45	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   41: invokevirtual 109	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   44: ifne +11 -> 55
    //   47: aload_3
    //   48: getstatic 45	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   51: aload_0
    //   52: invokevirtual 105	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: new 111	com/google/android/gms/common/zza
    //   58: dup
    //   59: invokespecial 112	com/google/android/gms/common/zza:<init>	()V
    //   62: astore_0
    //   63: aload_2
    //   64: invokestatic 118	com/google/android/gms/common/internal/zzm:zzP	(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;
    //   67: astore_2
    //   68: aload_2
    //   69: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   72: aload_0
    //   73: ldc 120
    //   75: invokevirtual 124	com/google/android/gms/common/internal/zzm:zza	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   78: ifeq +90 -> 168
    //   81: aload_0
    //   82: invokevirtual 128	com/google/android/gms/common/zza:zzhJ	()Landroid/os/IBinder;
    //   85: invokestatic 133	com/google/android/gms/internal/zzr$zza:zza	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzr;
    //   88: aload_1
    //   89: aload_3
    //   90: invokeinterface 138 3 0
    //   95: astore_1
    //   96: aload_1
    //   97: getstatic 143	com/google/android/gms/internal/zzjo:zzIi	Ljava/lang/String;
    //   100: invokevirtual 147	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   103: astore_3
    //   104: aload_1
    //   105: ldc -107
    //   107: invokevirtual 152	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   110: ifne +36 -> 146
    //   113: new 154	com/google/android/gms/auth/GoogleAuthException
    //   116: dup
    //   117: aload_3
    //   118: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   121: athrow
    //   122: astore_1
    //   123: new 158	java/io/IOException
    //   126: dup
    //   127: ldc -96
    //   129: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   132: athrow
    //   133: astore_1
    //   134: aload_2
    //   135: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   138: aload_0
    //   139: ldc 120
    //   141: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   144: aload_1
    //   145: athrow
    //   146: aload_2
    //   147: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   150: aload_0
    //   151: ldc 120
    //   153: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   156: return
    //   157: astore_1
    //   158: new 154	com/google/android/gms/auth/GoogleAuthException
    //   161: dup
    //   162: ldc -89
    //   164: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   167: athrow
    //   168: new 158	java/io/IOException
    //   171: dup
    //   172: ldc -87
    //   174: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	paramContext	Context
    //   0	178	1	paramString	String
    //   4	143	2	localObject1	Object
    //   21	97	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   81	122	122	android/os/RemoteException
    //   81	122	133	finally
    //   123	133	133	finally
    //   158	168	133	finally
    //   81	122	157	java/lang/InterruptedException
  }
  
  /* Error */
  public static java.util.List<AccountChangeEvent> getAccountChangeEvents(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: ldc -83
    //   3: invokestatic 176	com/google/android/gms/common/internal/zzx:zzb	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    //   6: pop
    //   7: ldc 78
    //   9: invokestatic 84	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: invokevirtual 76	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   16: astore_3
    //   17: aload_3
    //   18: invokestatic 88	com/google/android/gms/auth/GoogleAuthUtil:zzI	(Landroid/content/Context;)V
    //   21: new 111	com/google/android/gms/common/zza
    //   24: dup
    //   25: invokespecial 112	com/google/android/gms/common/zza:<init>	()V
    //   28: astore_0
    //   29: aload_3
    //   30: invokestatic 118	com/google/android/gms/common/internal/zzm:zzP	(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;
    //   33: astore_3
    //   34: aload_3
    //   35: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   38: aload_0
    //   39: ldc 120
    //   41: invokevirtual 124	com/google/android/gms/common/internal/zzm:zza	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   44: ifeq +81 -> 125
    //   47: aload_0
    //   48: invokevirtual 128	com/google/android/gms/common/zza:zzhJ	()Landroid/os/IBinder;
    //   51: invokestatic 133	com/google/android/gms/internal/zzr$zza:zza	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzr;
    //   54: new 178	com/google/android/gms/auth/AccountChangeEventsRequest
    //   57: dup
    //   58: invokespecial 179	com/google/android/gms/auth/AccountChangeEventsRequest:<init>	()V
    //   61: aload_2
    //   62: invokevirtual 183	com/google/android/gms/auth/AccountChangeEventsRequest:setAccountName	(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    //   65: iload_1
    //   66: invokevirtual 187	com/google/android/gms/auth/AccountChangeEventsRequest:setEventIndex	(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    //   69: invokeinterface 190 2 0
    //   74: invokevirtual 196	com/google/android/gms/auth/AccountChangeEventsResponse:getEvents	()Ljava/util/List;
    //   77: astore_2
    //   78: aload_3
    //   79: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   82: aload_0
    //   83: ldc 120
    //   85: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   88: aload_2
    //   89: areturn
    //   90: astore_2
    //   91: new 158	java/io/IOException
    //   94: dup
    //   95: ldc -96
    //   97: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   100: athrow
    //   101: astore_2
    //   102: aload_3
    //   103: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   106: aload_0
    //   107: ldc 120
    //   109: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   112: aload_2
    //   113: athrow
    //   114: astore_2
    //   115: new 154	com/google/android/gms/auth/GoogleAuthException
    //   118: dup
    //   119: ldc -89
    //   121: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   124: athrow
    //   125: new 158	java/io/IOException
    //   128: dup
    //   129: ldc -87
    //   131: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   134: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	paramContext	Context
    //   0	135	1	paramInt	int
    //   0	135	2	paramString	String
    //   16	87	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   47	78	90	android/os/RemoteException
    //   47	78	101	finally
    //   91	101	101	finally
    //   115	125	101	finally
    //   47	78	114	java/lang/InterruptedException
  }
  
  public static String getAccountId(Context paramContext, String paramString)
  {
    zzx.zzb(paramString, "accountName must be provided");
    zzx.zzbe("Calling this from your main thread can lead to deadlock");
    zzI(paramContext.getApplicationContext());
    return getToken(paramContext, paramString, "^^_account_id_^^", new Bundle());
  }
  
  public static String getToken(Context paramContext, Account paramAccount, String paramString)
  {
    return getToken(paramContext, paramAccount, paramString, new Bundle());
  }
  
  public static String getToken(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    return zza(paramContext, paramAccount, paramString, paramBundle, null);
  }
  
  @Deprecated
  public static String getToken(Context paramContext, String paramString1, String paramString2)
  {
    return getToken(paramContext, new Account(paramString1, "com.google"), paramString2);
  }
  
  @Deprecated
  public static String getToken(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    return getToken(paramContext, new Account(paramString1, "com.google"), paramString2, paramBundle);
  }
  
  public static String getTokenWithNotification(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putBoolean("handle_notification", true);
    return zza(paramContext, paramAccount, paramString, localBundle);
  }
  
  public static String getTokenWithNotification(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle, Intent paramIntent)
  {
    zzh(paramIntent);
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putParcelable("callback_intent", paramIntent);
    localBundle.putBoolean("handle_notification", true);
    return zza(paramContext, paramAccount, paramString, localBundle);
  }
  
  public static String getTokenWithNotification(Context paramContext, Account paramAccount, String paramString1, Bundle paramBundle1, String paramString2, Bundle paramBundle2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      throw new IllegalArgumentException("Authority cannot be empty or null.");
    }
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    paramBundle1 = paramBundle2;
    if (paramBundle2 == null) {
      paramBundle1 = new Bundle();
    }
    ContentResolver.validateSyncExtrasBundle(paramBundle1);
    localBundle.putString("authority", paramString2);
    localBundle.putBundle("sync_extras", paramBundle1);
    localBundle.putBoolean("handle_notification", true);
    return zza(paramContext, paramAccount, paramString1, localBundle);
  }
  
  @Deprecated
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    return getTokenWithNotification(paramContext, new Account(paramString1, "com.google"), paramString2, paramBundle);
  }
  
  @Deprecated
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle, Intent paramIntent)
  {
    return getTokenWithNotification(paramContext, new Account(paramString1, "com.google"), paramString2, paramBundle, paramIntent);
  }
  
  @Deprecated
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle1, String paramString3, Bundle paramBundle2)
  {
    return getTokenWithNotification(paramContext, new Account(paramString1, "com.google"), paramString2, paramBundle1, paramString3, paramBundle2);
  }
  
  @Deprecated
  public static void invalidateToken(Context paramContext, String paramString)
  {
    AccountManager.get(paramContext).invalidateAuthToken("com.google", paramString);
  }
  
  private static void zzI(Context paramContext)
  {
    try
    {
      GooglePlayServicesUtil.zzI(paramContext);
      return;
    }
    catch (GooglePlayServicesRepairableException paramContext)
    {
      throw new GooglePlayServicesAvailabilityException(paramContext.getConnectionStatusCode(), paramContext.getMessage(), paramContext.getIntent());
    }
    catch (GooglePlayServicesNotAvailableException paramContext)
    {
      throw new GoogleAuthException(paramContext.getMessage());
    }
  }
  
  private static String zza(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    try
    {
      paramAccount = getToken(paramContext, paramAccount, paramString, localBundle);
      return paramAccount;
    }
    catch (GooglePlayServicesAvailabilityException paramAccount)
    {
      GooglePlayServicesUtil.showErrorNotification(paramAccount.getConnectionStatusCode(), paramContext);
      throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
    }
    catch (UserRecoverableAuthException paramContext)
    {
      throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
    }
  }
  
  /* Error */
  public static String zza(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle, Boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 76	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore 6
    //   6: ldc 78
    //   8: invokestatic 84	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   11: aload 6
    //   13: invokestatic 88	com/google/android/gms/auth/GoogleAuthUtil:zzI	(Landroid/content/Context;)V
    //   16: aload_3
    //   17: ifnonnull +146 -> 163
    //   20: new 90	android/os/Bundle
    //   23: dup
    //   24: invokespecial 91	android/os/Bundle:<init>	()V
    //   27: astore_3
    //   28: aload_0
    //   29: invokevirtual 95	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   32: getfield 100	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   35: astore_0
    //   36: aload_3
    //   37: ldc 102
    //   39: aload_0
    //   40: invokevirtual 105	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_3
    //   44: getstatic 45	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   47: invokevirtual 109	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   50: ifne +11 -> 61
    //   53: aload_3
    //   54: getstatic 45	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   57: aload_0
    //   58: invokevirtual 105	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: aload 4
    //   63: ifnull +15 -> 78
    //   66: aload_3
    //   67: ldc_w 323
    //   70: aload 4
    //   72: invokevirtual 329	java/lang/Boolean:booleanValue	()Z
    //   75: invokevirtual 227	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   78: new 111	com/google/android/gms/common/zza
    //   81: dup
    //   82: invokespecial 112	com/google/android/gms/common/zza:<init>	()V
    //   85: astore_0
    //   86: aload 6
    //   88: invokestatic 118	com/google/android/gms/common/internal/zzm:zzP	(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzm;
    //   91: astore 4
    //   93: aload 4
    //   95: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   98: aload_0
    //   99: ldc 120
    //   101: invokevirtual 124	com/google/android/gms/common/internal/zzm:zza	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   104: ifeq +175 -> 279
    //   107: aload_0
    //   108: invokevirtual 128	com/google/android/gms/common/zza:zzhJ	()Landroid/os/IBinder;
    //   111: invokestatic 133	com/google/android/gms/internal/zzr$zza:zza	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzr;
    //   114: aload_1
    //   115: aload_2
    //   116: aload_3
    //   117: invokeinterface 332 4 0
    //   122: astore_1
    //   123: aload_1
    //   124: ifnonnull +51 -> 175
    //   127: new 154	com/google/android/gms/auth/GoogleAuthException
    //   130: dup
    //   131: ldc_w 334
    //   134: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   137: athrow
    //   138: astore_1
    //   139: new 158	java/io/IOException
    //   142: dup
    //   143: ldc -96
    //   145: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   148: athrow
    //   149: astore_1
    //   150: aload 4
    //   152: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   155: aload_0
    //   156: ldc 120
    //   158: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   161: aload_1
    //   162: athrow
    //   163: new 90	android/os/Bundle
    //   166: dup
    //   167: aload_3
    //   168: invokespecial 336	android/os/Bundle:<init>	(Landroid/os/Bundle;)V
    //   171: astore_3
    //   172: goto -144 -> 28
    //   175: aload_1
    //   176: ldc_w 338
    //   179: invokevirtual 147	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   182: astore_2
    //   183: aload_2
    //   184: invokestatic 247	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   187: istore 5
    //   189: iload 5
    //   191: ifne +16 -> 207
    //   194: aload 4
    //   196: getstatic 57	com/google/android/gms/auth/GoogleAuthUtil:zzHk	Landroid/content/ComponentName;
    //   199: aload_0
    //   200: ldc 120
    //   202: invokevirtual 165	com/google/android/gms/common/internal/zzm:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   205: aload_2
    //   206: areturn
    //   207: aload_1
    //   208: ldc_w 340
    //   211: invokevirtual 147	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   214: astore_2
    //   215: aload_1
    //   216: ldc_w 342
    //   219: invokevirtual 346	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   222: checkcast 348	android/content/Intent
    //   225: astore_1
    //   226: aload_2
    //   227: invokestatic 351	com/google/android/gms/auth/GoogleAuthUtil:zzaD	(Ljava/lang/String;)Z
    //   230: ifeq +24 -> 254
    //   233: new 311	com/google/android/gms/auth/UserRecoverableAuthException
    //   236: dup
    //   237: aload_2
    //   238: aload_1
    //   239: invokespecial 354	com/google/android/gms/auth/UserRecoverableAuthException:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   242: athrow
    //   243: astore_1
    //   244: new 154	com/google/android/gms/auth/GoogleAuthException
    //   247: dup
    //   248: ldc -89
    //   250: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   253: athrow
    //   254: aload_2
    //   255: invokestatic 357	com/google/android/gms/auth/GoogleAuthUtil:zzaC	(Ljava/lang/String;)Z
    //   258: ifeq +12 -> 270
    //   261: new 158	java/io/IOException
    //   264: dup
    //   265: aload_2
    //   266: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   269: athrow
    //   270: new 154	com/google/android/gms/auth/GoogleAuthException
    //   273: dup
    //   274: aload_2
    //   275: invokespecial 156	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   278: athrow
    //   279: new 158	java/io/IOException
    //   282: dup
    //   283: ldc -87
    //   285: invokespecial 161	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   288: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	paramContext	Context
    //   0	289	1	paramAccount	Account
    //   0	289	2	paramString	String
    //   0	289	3	paramBundle	Bundle
    //   0	289	4	paramBoolean	Boolean
    //   187	3	5	bool	boolean
    //   4	83	6	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   107	123	138	android/os/RemoteException
    //   127	138	138	android/os/RemoteException
    //   175	189	138	android/os/RemoteException
    //   207	243	138	android/os/RemoteException
    //   254	270	138	android/os/RemoteException
    //   270	279	138	android/os/RemoteException
    //   107	123	149	finally
    //   127	138	149	finally
    //   139	149	149	finally
    //   175	189	149	finally
    //   207	243	149	finally
    //   244	254	149	finally
    //   254	270	149	finally
    //   270	279	149	finally
    //   107	123	243	java/lang/InterruptedException
    //   127	138	243	java/lang/InterruptedException
    //   175	189	243	java/lang/InterruptedException
    //   207	243	243	java/lang/InterruptedException
    //   254	270	243	java/lang/InterruptedException
    //   270	279	243	java/lang/InterruptedException
  }
  
  private static boolean zzaC(String paramString)
  {
    return ("NetworkError".equals(paramString)) || ("ServiceUnavailable".equals(paramString)) || ("Timeout".equals(paramString));
  }
  
  private static boolean zzaD(String paramString)
  {
    return ("BadAuthentication".equals(paramString)) || ("CaptchaRequired".equals(paramString)) || ("DeviceManagementRequiredOrSyncDisabled".equals(paramString)) || ("NeedPermission".equals(paramString)) || ("NeedsBrowser".equals(paramString)) || ("UserCancel".equals(paramString)) || ("AppDownloadRequired".equals(paramString)) || (zzjo.zzHG.zzhg().equals(paramString)) || (zzjo.zzHH.zzhg().equals(paramString)) || (zzjo.zzHI.zzhg().equals(paramString)) || (zzjo.zzHJ.zzhg().equals(paramString)) || (zzjo.zzHK.zzhg().equals(paramString)) || (zzjo.zzHL.zzhg().equals(paramString)) || (zzjo.zzHE.zzhg().equals(paramString));
  }
  
  private static void zzh(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("Callback cannot be null.");
    }
    paramIntent = paramIntent.toUri(1);
    try
    {
      Intent.parseUri(paramIntent, 1);
      return;
    }
    catch (URISyntaxException paramIntent)
    {
      throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.GoogleAuthUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */