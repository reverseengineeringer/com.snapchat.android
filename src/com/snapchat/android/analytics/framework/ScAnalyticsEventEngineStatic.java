package com.snapchat.android.analytics.framework;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import gc;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicBoolean;
import mk;
import ml;
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
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      catch (UnknownHostException paramJSONArray)
      {
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      catch (ClientProtocolException paramJSONArray)
      {
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      catch (IOException paramJSONArray)
      {
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      catch (AssertionError paramJSONArray)
      {
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      catch (Exception paramJSONArray)
      {
        do
        {
          paramJSONArray = paramJSONArray;
        } while (localDefaultHttpClient.getConnectionManager() == null);
        localDefaultHttpClient.getConnectionManager().shutdown();
        return null;
      }
      finally
      {
        paramString = finally;
        if (localDefaultHttpClient.getConnectionManager() == null) {
          break label264;
        }
        localDefaultHttpClient.getConnectionManager().shutdown();
        throw paramString;
      }
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      DefaultHttpClient localDefaultHttpClient;
      label264:
      for (;;) {}
    }
  }
  
  public static void a()
  {
    if (!s()) {
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
      return;
      if (paramUserPropertiesInterface == null) {
        continue;
      }
      try
      {
        c = paramContext.getApplicationContext();
        j = paramUserPropertiesInterface;
      }
      finally {}
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
  
  public static void a(mk parammk)
  {
    if (!s()) {
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
  
  public static void a(ml paramml)
  {
    if (!s()) {
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
  
  public static void b()
  {
    if ((!s()) || (d)) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        if (ScAnalyticsEventEngineStatic.g()) {
          return;
        }
        ScAnalyticsEventEngineStatic.a(true);
        ScAnalyticsEventEngineStatic.a(a);
        long l1 = ScAnalyticsEventEngineStatic.h();
        long l2 = ScAnalyticsEventEngineStatic.i();
        if ((l1 != -1L) && (a - l2 < 15000L))
        {
          ScAnalyticsEventEngineStatic.b(l1);
          return;
        }
        ScAnalyticsEventEngineStatic.c(a);
      }
    });
  }
  
  /* Error */
  private static void b(boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 451	akr:m	()Z
    //   3: ifne +4 -> 7
    //   6: return
    //   7: getstatic 60	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   10: iconst_1
    //   11: invokevirtual 237	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   14: ifne -8 -> 6
    //   17: getstatic 179	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:c	Landroid/content/Context;
    //   20: invokestatic 184	com/snapchat/android/analytics/framework/DatabaseHelper:a	(Landroid/content/Context;)Lcom/snapchat/android/analytics/framework/DatabaseHelper;
    //   23: astore 8
    //   25: iload_0
    //   26: ifeq +222 -> 248
    //   29: bipush 100
    //   31: istore_3
    //   32: aload 8
    //   34: iload_3
    //   35: invokevirtual 454	com/snapchat/android/analytics/framework/DatabaseHelper:a	(I)Landroid/util/Pair;
    //   38: astore 8
    //   40: aload 8
    //   42: getfield 460	android/util/Pair:first	Ljava/lang/Object;
    //   45: checkcast 462	java/lang/Long
    //   48: invokevirtual 465	java/lang/Long:longValue	()J
    //   51: lstore 4
    //   53: aload 8
    //   55: getfield 468	android/util/Pair:second	Ljava/lang/Object;
    //   58: checkcast 265	org/json/JSONArray
    //   61: astore 8
    //   63: aload 8
    //   65: invokevirtual 354	org/json/JSONArray:length	()I
    //   68: i2l
    //   69: lstore 6
    //   71: lload 6
    //   73: lconst_0
    //   74: lcmp
    //   75: ifeq -69 -> 6
    //   78: invokestatic 196	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:t	()Z
    //   81: ifeq +137 -> 218
    //   84: invokestatic 201	java/lang/System:currentTimeMillis	()J
    //   87: l2d
    //   88: ldc2_w 115
    //   91: ddiv
    //   92: dstore_1
    //   93: new 470	gb
    //   96: dup
    //   97: invokespecial 471	gb:<init>	()V
    //   100: astore 9
    //   102: aload 9
    //   104: getstatic 133	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   107: invokeinterface 473 1 0
    //   112: putfield 478	ml:userId	Ljava/lang/String;
    //   115: aload 9
    //   117: getstatic 133	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   120: invokeinterface 138 1 0
    //   125: putfield 141	ht:userAgent	Ljava/lang/String;
    //   128: aload 9
    //   130: getstatic 133	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   133: invokeinterface 144 1 0
    //   138: putfield 148	ht:friendCount	Ljava/lang/Long;
    //   141: aload 9
    //   143: dload_1
    //   144: invokestatic 122	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   147: putfield 128	ht:clientTs	Ljava/lang/Double;
    //   150: aload 9
    //   152: dload_1
    //   153: invokestatic 122	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   156: putfield 481	ht:clientUploadTs	Ljava/lang/Double;
    //   159: aload 9
    //   161: invokestatic 484	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:u	()J
    //   164: l2d
    //   165: ldc2_w 115
    //   168: ddiv
    //   169: invokestatic 122	java/lang/Double:valueOf	(D)Ljava/lang/Double;
    //   172: putfield 487	gb:firstFailureTs	Ljava/lang/Double;
    //   175: aload 9
    //   177: invokestatic 490	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:v	()J
    //   180: invokestatic 493	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   183: putfield 496	gb:rejectedEventCount	Ljava/lang/Long;
    //   186: aload 9
    //   188: invokestatic 211	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:w	()J
    //   191: invokestatic 493	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   194: putfield 499	gb:overflowedEventCount	Ljava/lang/Long;
    //   197: aload 8
    //   199: new 362	org/json/JSONObject
    //   202: dup
    //   203: getstatic 80	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:i	Lcom/google/gson/Gson;
    //   206: aload 9
    //   208: invokevirtual 177	com/google/gson/Gson:toJson	(Ljava/lang/Object;)Ljava/lang/String;
    //   211: invokespecial 500	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   214: invokevirtual 503	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   217: pop
    //   218: getstatic 93	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:b	Lcom/snapchat/android/analytics/framework/WorkerThread;
    //   221: new 20	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8
    //   224: dup
    //   225: aload 8
    //   227: lload 4
    //   229: lload 6
    //   231: invokespecial 506	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic$8:<init>	(Lorg/json/JSONArray;JJ)V
    //   234: invokevirtual 330	com/snapchat/android/analytics/framework/WorkerThread:a	(Ljava/lang/Runnable;)V
    //   237: return
    //   238: astore 8
    //   240: getstatic 60	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   243: iconst_0
    //   244: invokevirtual 424	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   247: return
    //   248: iconst_m1
    //   249: istore_3
    //   250: goto -218 -> 32
    //   253: astore 9
    //   255: goto -37 -> 218
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	paramBoolean	boolean
    //   92	61	1	d1	double
    //   31	219	3	k	int
    //   51	177	4	l1	long
    //   69	161	6	l2	long
    //   23	203	8	localObject	Object
    //   238	1	8	localJSONException1	org.json.JSONException
    //   100	107	9	localgb	gb
    //   253	1	9	localJSONException2	org.json.JSONException
    // Exception table:
    //   from	to	target	type
    //   32	71	238	org/json/JSONException
    //   78	197	238	org/json/JSONException
    //   218	237	238	org/json/JSONException
    //   197	218	253	org/json/JSONException
  }
  
  public static void c()
  {
    if ((!s()) || (!d)) {
      return;
    }
    a(new Runnable()
    {
      public final void run()
      {
        if (!ScAnalyticsEventEngineStatic.g()) {
          return;
        }
        SharedPreferences localSharedPreferences = ScAnalyticsEventEngineStatic.j();
        long l2 = localSharedPreferences.getLong(Constants.d, -1L);
        long l3 = ScAnalyticsEventEngineStatic.d(a - l2);
        long l1 = localSharedPreferences.getLong(Constants.h, 0L) + ScAnalyticsEventEngineStatic.d(a - ScAnalyticsEventEngineStatic.k());
        gc localgc = new gc();
        userId = ScAnalyticsEventEngineStatic.d().a();
        sessionStartTs = Double.valueOf(ScAnalyticsEventEngineStatic.e(l2));
        sessionTimeSec = Long.valueOf(l3);
        sessionActiveTimeSec = Long.valueOf(l1);
        l2 = ScAnalyticsEventEngineStatic.a(localgc, a);
        localSharedPreferences.edit().putLong(Constants.f, l2).putLong(Constants.e, a).putLong(Constants.h, l1).commit();
        ScAnalyticsEventEngineStatic.a(false);
      }
    });
    a.b(e);
    e = new Runnable()
    {
      public final void run()
      {
        ScAnalyticsEventEngineStatic.j().edit().remove(Constants.h).commit();
        ScAnalyticsEventEngineStatic.a(-1L);
        ScAnalyticsEventEngineStatic.a();
      }
    };
    a.a(e, 16000L);
  }
  
  private static long h(long paramLong)
  {
    return Math.round(paramLong / 1000.0D);
  }
  
  private static void i(long paramLong)
  {
    if (t()) {
      return;
    }
    q().edit().putLong(Constants.l, paramLong).commit();
  }
  
  private static SharedPreferences q()
  {
    return c.getSharedPreferences(Constants.c + "." + c.getPackageName(), 0);
  }
  
  private static long r()
  {
    return q().getLong(Constants.e, -1L);
  }
  
  /* Error */
  private static boolean s()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_0
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 179	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:c	Landroid/content/Context;
    //   8: astore_1
    //   9: aload_1
    //   10: ifnonnull +8 -> 18
    //   13: ldc 2
    //   15: monitorexit
    //   16: iload_0
    //   17: ireturn
    //   18: getstatic 133	com/snapchat/android/analytics/framework/ScAnalyticsEventEngineStatic:j	Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine$UserPropertiesInterface;
    //   21: astore_1
    //   22: aload_1
    //   23: ifnull -10 -> 13
    //   26: iconst_1
    //   27: istore_0
    //   28: goto -15 -> 13
    //   31: astore_1
    //   32: ldc 2
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	27	0	bool	boolean
    //   8	15	1	localObject1	Object
    //   31	5	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   5	9	31	finally
    //   18	22	31	finally
  }
  
  private static boolean t()
  {
    return u() != -1L;
  }
  
  private static long u()
  {
    return q().getLong(Constants.l, -1L);
  }
  
  private static long v()
  {
    return q().getLong(Constants.j, 0L);
  }
  
  private static long w()
  {
    return q().getLong(Constants.k, 0L);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngineStatic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */