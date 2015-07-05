package com.snapchat.android.analytics.framework;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.snapchat.android.Timber;
import ft;
import fu;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import ls;
import lt;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;

class ScAnalyticsEventEngineStatic
{
  static WorkerThread a;
  static WorkerThread b;
  private static Context c;
  private static boolean d = false;
  private static Runnable e;
  private static long f = -1L;
  private static AtomicBoolean g = new AtomicBoolean(false);
  private static AtomicBoolean h = new AtomicBoolean(false);
  private static final Gson i = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES).create();
  private static ScAnalyticsEventEngine.UserPropertiesInterface j;
  
  static
  {
    a = new WorkerThread("sLogThread");
    b = new WorkerThread("sHttpThread");
    a.start();
    b.start();
  }
  
  private static Integer a(String paramString, JSONArray paramJSONArray)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    try
    {
      localHttpPost.setEntity(new StringEntity(paramJSONArray.toString(), "UTF-8"));
      paramString = new BasicHttpParams();
      HttpConnectionParams.setSoTimeout(paramString, 10000);
      localDefaultHttpClient = new DefaultHttpClient(paramString);
      paramString = null;
      try
      {
        int k = localDefaultHttpClient.execute(localHttpPost).getStatusLine().getStatusCode();
        paramJSONArray = Integer.valueOf(k);
        paramString = paramJSONArray;
        if (localDefaultHttpClient.getConnectionManager() != null)
        {
          localDefaultHttpClient.getConnectionManager().shutdown();
          paramString = paramJSONArray;
        }
      }
      catch (HttpHostConnectException paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", "No service, will attempt to re-upload events later.", new Object[0]);
        return null;
      }
      catch (UnknownHostException paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", "No service, will attempt to re-upload events later.", new Object[0]);
        return null;
      }
      catch (ClientProtocolException paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", paramJSONArray.toString(), new Object[0]);
        return null;
      }
      catch (IOException paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", paramJSONArray.toString(), new Object[0]);
        return null;
      }
      catch (AssertionError paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", "Exception:", new Object[] { paramJSONArray });
        return null;
      }
      catch (Exception paramJSONArray)
      {
        Timber.f("com.amplitude.api.Amplitude", "Exception:", new Object[] { paramJSONArray });
        return null;
      }
      finally
      {
        if (localDefaultHttpClient.getConnectionManager() == null) {
          break label370;
        }
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        Timber.f("com.amplitude.api.Amplitude", paramString.toString(), new Object[0]);
      }
    }
  }
  
  public static void a()
  {
    if (!a("uploadEvents()")) {
      return;
    }
    a.a(new Runnable()
    {
      public final void run() {}
    });
  }
  
  public static void a(Context paramContext, ScAnalyticsEventEngine.UserPropertiesInterface paramUserPropertiesInterface)
  {
    if (paramContext == null) {}
    for (;;)
    {
      try
      {
        Timber.f("com.amplitude.api.Amplitude", "Argument context cannot be null in initialize()", new Object[0]);
        return;
      }
      finally {}
      if (paramUserPropertiesInterface == null)
      {
        Timber.f("com.amplitude.api.Amplitude", "Argument userProperties cannot be null in initialize()", new Object[0]);
      }
      else
      {
        c = paramContext.getApplicationContext();
        j = paramUserPropertiesInterface;
      }
    }
  }
  
  private static void a(Runnable paramRunnable)
  {
    if (Thread.currentThread() != a)
    {
      a.a(paramRunnable);
      return;
    }
    paramRunnable.run();
  }
  
  public static void a(ls paramls)
  {
    if (!a("logEvent()")) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        ScAnalyticsEventEngineStatic.a(a, b);
      }
    });
  }
  
  public static void a(lt paramlt)
  {
    if (!a("logEvent()")) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        a.userId = ScAnalyticsEventEngineStatic.d().a();
        ScAnalyticsEventEngineStatic.a(a, b);
      }
    });
  }
  
  /* Error */
  private static void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 471	ajx:m	()Z
    //   3: ifne +17 -> 20
    //   6: ldc_w 326
    //   9: ldc_w 473
    //   12: iconst_0
    //   13: anewarray 4	java/lang/Object
    //   16: invokestatic 447	com/snapchat/android/Timber:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   19: return
    //   20: getstatic 60	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   23: iconst_1
    //   24: invokevirtual 238	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   27: ifne -8 -> 19
    //   30: getstatic 181	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:c	Landroid/content/Context;
    //   33: invokestatic 186	com/snapchat/android/analytics/framework/DatabaseHelper:a	(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;
    //   36: astore 8
    //   38: iload_0
    //   39: ifeq +237 -> 276
    //   42: bipush 100
    //   44: istore_3
    //   45: aload 8
    //   47: iload_3
    //   48: invokevirtual 476	com/snapchat/android/analytics/framework/DatabaseHelper:a	(I)Landroid/util/Pair;
    //   51: astore 8
    //   53: aload 8
    //   55: getfield 482	android/util/Pair:first	Ljava/lang/Object;
    //   58: checkcast 484	java/lang/Long
    //   61: invokevirtual 487	java/lang/Long:longValue	()J
    //   64: lstore 4
    //   66: aload 8
    //   68: getfield 490	android/util/Pair:second	Ljava/lang/Object;
    //   71: checkcast 266	org/json/JSONArray
    //   74: astore 8
    //   76: aload 8
    //   78: invokevirtual 375	org/json/JSONArray:length	()I
    //   81: i2l
    //   82: lstore 6
    //   84: lload 6
    //   86: lconst_0
    //   87: lcmp
    //   88: ifeq -69 -> 19
    //   91: invokestatic 198	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:w	()Z
    //   94: ifeq +137 -> 231
    //   97: invokestatic 203	java/lang/System:currentTimeMillis	()J
    //   100: l2d
    //   101: ldc2_w 117
    //   104: ddiv
    //   105: dstore_1
    //   106: new 492	fs
    //   109: dup
    //   110: invokespecial 493	fs:<init>	()V
    //   113: astore 9
    //   115: aload 9
    //   117: getstatic 135	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   120: invokeinterface 495 1 0
    //   125: putfield 500	lt:userId	Ljava/lang/String;
    //   128: aload 9
    //   130: getstatic 135	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   133: invokeinterface 140 1 0
    //   138: putfield 143	hk:userAgent	Ljava/lang/String;
    //   141: aload 9
    //   143: getstatic 135	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   146: invokeinterface 146 1 0
    //   151: putfield 150	hk:friendCount	Ljava/lang/Long;
    //   154: aload 9
    //   156: dload_1
    //   157: invokestatic 124	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   160: putfield 130	hk:clientTs	Ljava/lang/Double;
    //   163: aload 9
    //   165: dload_1
    //   166: invokestatic 124	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   169: putfield 503	hk:clientUploadTs	Ljava/lang/Double;
    //   172: aload 9
    //   174: invokestatic 506	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:x	()J
    //   177: l2d
    //   178: ldc2_w 117
    //   181: ddiv
    //   182: invokestatic 124	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   185: putfield 509	fs:firstFailureTs	Ljava/lang/Double;
    //   188: aload 9
    //   190: invokestatic 512	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:y	()J
    //   193: invokestatic 515	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   196: putfield 518	fs:rejectedEventCount	Ljava/lang/Long;
    //   199: aload 9
    //   201: invokestatic 212	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:z	()J
    //   204: invokestatic 515	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   207: putfield 521	fs:overflowedEventCount	Ljava/lang/Long;
    //   210: aload 8
    //   212: new 383	org/json/JSONObject
    //   215: dup
    //   216: getstatic 80	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:i	Lcom/google/gson/Gson;
    //   219: aload 9
    //   221: invokevirtual 179	com/google/gson/Gson:toJson	(Ljava/lang/Object;)Ljava/lang/String;
    //   224: invokespecial 522	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   227: invokevirtual 525	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   230: pop
    //   231: getstatic 93	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:b	Lcom/snapchat/android/analytics/framework/WorkerThread;
    //   234: new 20	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8
    //   237: dup
    //   238: aload 8
    //   240: lload 4
    //   242: lload 6
    //   244: invokespecial 528	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8:<init>	(Lorg/json/JSONArray;JJ)V
    //   247: invokevirtual 347	com/snapchat/android/analytics/framework/WorkerThread:a	(Ljava/lang/Runnable;)V
    //   250: return
    //   251: astore 8
    //   253: getstatic 60	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   256: iconst_0
    //   257: invokevirtual 450	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   260: ldc_w 326
    //   263: aload 8
    //   265: invokevirtual 388	org/json/JSONException:toString	()Ljava/lang/String;
    //   268: iconst_0
    //   269: anewarray 4	java/lang/Object
    //   272: invokestatic 332	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   275: return
    //   276: iconst_m1
    //   277: istore_3
    //   278: goto -233 -> 45
    //   281: astore 9
    //   283: ldc_w 326
    //   286: ldc_w 530
    //   289: iconst_0
    //   290: anewarray 4	java/lang/Object
    //   293: invokestatic 332	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   296: goto -65 -> 231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	299	0	paramBoolean	boolean
    //   105	61	1	d1	double
    //   44	234	3	k	int
    //   64	177	4	l1	long
    //   82	161	6	l2	long
    //   36	203	8	localObject	Object
    //   251	13	8	localJSONException1	org.json.JSONException
    //   113	107	9	localfs	fs
    //   281	1	9	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   45	84	251	org/json/JSONException
    //   91	210	251	org/json/JSONException
    //   231	250	251	org/json/JSONException
    //   283	296	251	org/json/JSONException
    //   210	231	281	org/json/JSONException
  }
  
  private static boolean a(String paramString)
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        if (c == null)
        {
          Timber.f("com.amplitude.api.Amplitude", "context cannot be null, set context with initialize() before calling " + paramString, new Object[0]);
          return bool;
        }
        if (j == null) {
          Timber.f("com.amplitude.api.Amplitude", "userPrefs cannot be null, set userPrefs with initialize() before calling " + paramString, new Object[0]);
        } else {
          bool = true;
        }
      }
      finally {}
    }
  }
  
  public static void b()
  {
    if (!a("startSession()")) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        ScAnalyticsEventEngineStatic.a.b(ScAnalyticsEventEngineStatic.g());
        long l1 = ScAnalyticsEventEngineStatic.h();
        long l2 = ScAnalyticsEventEngineStatic.i();
        if ((l1 != -1L) && (a - l2 < 15000L)) {
          DatabaseHelper.a(ScAnalyticsEventEngineStatic.j()).b(l1);
        }
        ScAnalyticsEventEngineStatic.a(a);
        ScAnalyticsEventEngineStatic.k();
        ScAnalyticsEventEngineStatic.a();
      }
    });
  }
  
  public static void c()
  {
    if (!a("endSession()")) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        if (ScAnalyticsEventEngineStatic.l())
        {
          ft localft = new ft();
          SharedPreferences localSharedPreferences = ScAnalyticsEventEngineStatic.m();
          long l2 = localSharedPreferences.getLong(Constants.d, -1L);
          long l3 = ScAnalyticsEventEngineStatic.b(a - l2);
          long l1 = localSharedPreferences.getLong(Constants.h, 0L) + ScAnalyticsEventEngineStatic.b(a - ScAnalyticsEventEngineStatic.n());
          userId = ScAnalyticsEventEngineStatic.d().a();
          sessionStartTs = Double.valueOf(ScAnalyticsEventEngineStatic.c(l2));
          sessionTimeSec = Long.valueOf(l3);
          sessionActiveTimeSec = Long.valueOf(l1);
          l2 = ScAnalyticsEventEngineStatic.a(localft, a);
          localSharedPreferences.edit().putLong(Constants.f, l2).putLong(Constants.e, a).putLong(Constants.h, l1).commit();
        }
        ScAnalyticsEventEngineStatic.o();
      }
    });
    a.b(e);
    e = new Runnable()
    {
      public final void run()
      {
        ScAnalyticsEventEngineStatic.m().edit().remove(Constants.h).commit();
        ScAnalyticsEventEngineStatic.p();
        ScAnalyticsEventEngineStatic.a();
      }
    };
    a.a(e, 16000L);
  }
  
  private static void f(long paramLong)
  {
    d = true;
    Object localObject = u();
    ((SharedPreferences)localObject).edit().putLong(Constants.d, paramLong).commit();
    String str = UUID.randomUUID().toString();
    ((SharedPreferences)localObject).edit().putString(Constants.g, str).commit();
    long l = ((SharedPreferences)localObject).getLong(Constants.i, 0L) + 1L;
    ((SharedPreferences)localObject).edit().putLong(Constants.i, l).commit();
    paramLong = h(paramLong - v());
    localObject = new fu();
    sessionSeqNum = Long.valueOf(l);
    sinceLastSessionSec = Long.valueOf(paramLong);
    a((lt)localObject);
  }
  
  private static void g(long paramLong)
  {
    if (d) {}
    do
    {
      return;
      f = paramLong;
      if (paramLong - v() >= 15000L) {
        break;
      }
    } while (u().getString(Constants.g, null) != null);
    f(paramLong);
    return;
    f(paramLong);
  }
  
  private static long h(long paramLong)
  {
    return Math.round(paramLong / 1000.0D);
  }
  
  private static void i(long paramLong)
  {
    if (w())
    {
      Timber.f("com.amplitude.api.Amplitude", "First failure has already occurred - aborting overwrite of first failure timestamp.", new Object[0]);
      return;
    }
    u().edit().putLong(Constants.l, paramLong).commit();
  }
  
  private static SharedPreferences u()
  {
    return c.getSharedPreferences(Constants.c + "." + c.getPackageName(), 0);
  }
  
  private static long v()
  {
    return u().getLong(Constants.e, -1L);
  }
  
  private static boolean w()
  {
    return x() != -1L;
  }
  
  private static long x()
  {
    return u().getLong(Constants.l, -1L);
  }
  
  private static long y()
  {
    return u().getLong(Constants.j, 0L);
  }
  
  private static long z()
  {
    return u().getLong(Constants.k, 0L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */