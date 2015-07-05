package com.snapchat.android;

import aby;
import adj;
import adj.1;
import adj.5;
import aeg;
import ahr;
import ajx;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.media.CamcorderProfile;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.StrictMode.VmPolicy.Builder;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import aoa;
import aol;
import aue;
import aux;
import aux.a;
import avl;
import avp;
import axa;
import ayg;
import ayl;
import aza;
import azb;
import azb.a;
import azc;
import azl;
import azn;
import azt;
import azx;
import bpd;
import com.snapchat.android.analytics.framework.ScAnalyticsEventEngine;
import com.snapchat.android.analytics.framework.UniqueDeviceIdBuilder;
import com.snapchat.android.analytics.framework.UserPropertiesProvider;
import com.snapchat.android.content.SnapchatProvider;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.debug.ScApplicationInfo;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.inject.Inject;
import lv;
import mj;
import mq;
import ov;
import ws;
import z;

@avl
public class SnapchatApplication
  extends Application
{
  protected static SnapchatApplication a;
  protected static boolean d = false;
  static List<WeakReference<a>> e = new LinkedList();
  protected aza b;
  protected aux c = aux.a();
  @Inject
  public ayg f;
  @Inject
  public ReleaseManager g;
  @Inject
  public azx h;
  @Inject
  public mj i;
  @Inject
  public adj j;
  @Inject
  public aby k;
  @Inject
  public ov l;
  @Inject
  public ws m;
  @Inject
  public azn n;
  @Inject
  public aol o;
  @Inject
  public aeg p;
  private final lv q = new lv();
  private final ScAnalyticsEventEngine r = ScAnalyticsEventEngine.a();
  private azl s = new azl();
  
  public static boolean a()
  {
    return d;
  }
  
  public static SnapchatApplication b()
  {
    return a;
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    z.a(this);
  }
  
  public final aza c()
  {
    return b;
  }
  
  public void onCreate()
  {
    Object localObject1 = null;
    int i2 = Integer.MAX_VALUE;
    c.a(aux.a.APPLICATION_CREATE_CHECKPOINT$6dad94c5);
    super.onCreate();
    a = this;
    Object localObject2 = azb.d();
    androidModule = new ayl(this);
    if (androidModule == null) {
      throw new IllegalStateException("androidModule must be set");
    }
    if (discoverModule == null) {
      discoverModule = new azc();
    }
    b = new azb((azb.a)localObject2, (byte)0);
    b.a(this);
    ReleaseManager.a(this);
    ahr.a(this);
    p.a = new avp(this);
    localObject2 = j;
    h = this;
    i = getContentResolver();
    d.start();
    g = new Handler(d.getLooper());
    i.registerContentObserver(SnapchatProvider.c, false, new adj.1((adj)localObject2, g));
    i.registerContentObserver(SnapchatProvider.b, false, new adj.5((adj)localObject2, g));
    localObject2 = i;
    mAppContext = this;
    ((mj)localObject2).a(new mq(), null);
    k.b();
    localObject2 = l;
    if (CamcorderProfile.hasProfile(1)) {
      localObject1 = CamcorderProfile.get(1);
    }
    for (;;)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      int i3;
      int i4;
      label314:
      int i1;
      if (heightPixels > widthPixels)
      {
        i3 = heightPixels;
        i4 = widthPixels;
        if (localObject1 == null) {
          break label756;
        }
        if (videoFrameHeight <= videoFrameWidth) {
          break label741;
        }
        i1 = videoFrameHeight;
        i2 = videoFrameWidth;
        label344:
        mResolution = new aue(i4, i3);
        mMaxVideoHeight = Math.min(i3, i1);
        mMaxVideoWidth = Math.min(i4, i2);
        Timber.b("ScreenParameterProvider", "Computed screen parameter values: height=%d, width=%d, maxVideoHeight=%d, maxVideoWidth=%d", new Object[] { Integer.valueOf(mResolution.b()), Integer.valueOf(mResolution.a()), Integer.valueOf(mMaxVideoHeight), Integer.valueOf(mMaxVideoWidth) });
        m.a(this);
        q.a(this);
        n.mSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        o.c = this;
        ScAnalyticsEventEngine.a(this, UserPropertiesProvider.d());
        if (!aoa.a()) {
          bpd.a(aoa.a(this));
        }
        i1 = ScApplicationInfo.c(this);
        if (i1 != ajx.i())
        {
          Timber.c("SnapchatApplication", "app upgrade detected", new Object[0]);
          new azt();
          ajx.r(false);
          ajx.a(i1);
        }
        if (!d) {
          Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
          {
            public final void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
            {
              Iterator localIterator = SnapchatApplication.e.iterator();
              while (localIterator.hasNext())
              {
                SnapchatApplication.a locala = (SnapchatApplication.a)((WeakReference)localIterator.next()).get();
                if (locala != null) {
                  locala.a(SnapchatApplication.this, paramAnonymousThread, paramAnonymousThrowable);
                }
              }
              a.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
            }
          });
        }
      }
      try
      {
        Class.forName("android.os.AsyncTask");
        if (ReleaseManager.c())
        {
          StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().penaltyDropBox().build());
          StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectAll().penaltyLog().penaltyDropBox().build());
        }
        axa.a(getCacheDir(), getExternalCacheDir());
        if (ajx.bw() == null)
        {
          new UniqueDeviceIdBuilder();
          ajx.a(UniqueDeviceIdBuilder.a(this));
        }
        new Thread(new Runnable()
        {
          /* Error */
          public final void run()
          {
            // Byte code:
            //   0: aconst_null
            //   1: astore 5
            //   3: aconst_null
            //   4: astore 4
            //   6: invokestatic 27	java/lang/Thread:currentThread	()Ljava/lang/Thread;
            //   9: ldc 29
            //   11: invokevirtual 33	java/lang/Thread:setName	(Ljava/lang/String;)V
            //   14: aload_0
            //   15: getfield 14	com/snapchat/android/SnapchatApplication$1:a	Lcom/snapchat/android/SnapchatApplication;
            //   18: getfield 37	com/snapchat/android/SnapchatApplication:f	Layg;
            //   21: astore 7
            //   23: aload 7
            //   25: getfield 43	ayg:mShouldRunTasksInBackground	Z
            //   28: ifeq +6 -> 34
            //   31: invokestatic 48	bgp:b	()V
            //   34: invokestatic 51	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
            //   37: astore 6
            //   39: aload 7
            //   41: iconst_1
            //   42: putfield 54	ayg:mBackingFileIsEmpty	Z
            //   45: aload 6
            //   47: invokevirtual 60	android/content/Context:getCacheDir	()Ljava/io/File;
            //   50: astore_3
            //   51: aload_3
            //   52: ifnonnull +12 -> 64
            //   55: aload 7
            //   57: getfield 64	ayg:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
            //   60: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
            //   63: return
            //   64: aload 7
            //   66: aload_3
            //   67: ldc 71
            //   69: invokevirtual 74	ayg:a	(Ljava/io/File;Ljava/lang/String;)Z
            //   72: istore_1
            //   73: new 76	java/io/File
            //   76: dup
            //   77: new 78	java/lang/StringBuilder
            //   80: dup
            //   81: invokespecial 79	java/lang/StringBuilder:<init>	()V
            //   84: aload_3
            //   85: invokevirtual 83	java/io/File:getPath	()Ljava/lang/String;
            //   88: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   91: ldc 89
            //   93: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   96: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
            //   99: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
            //   102: astore 8
            //   104: aload 8
            //   106: invokevirtual 98	java/io/File:exists	()Z
            //   109: istore_2
            //   110: iload_2
            //   111: ifne +50 -> 161
            //   114: aload 7
            //   116: getfield 64	ayg:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
            //   119: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
            //   122: return
            //   123: astore_3
            //   124: invokestatic 103	com/snapchat/android/util/debug/ReleaseManager:e	()Z
            //   127: ifeq +25 -> 152
            //   130: new 105	java/lang/RuntimeException
            //   133: dup
            //   134: ldc 107
            //   136: aload_3
            //   137: invokespecial 110	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
            //   140: athrow
            //   141: astore_3
            //   142: aload 7
            //   144: getfield 64	ayg:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
            //   147: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
            //   150: aload_3
            //   151: athrow
            //   152: aload 7
            //   154: getfield 64	ayg:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
            //   157: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
            //   160: return
            //   161: new 112	java/io/FileInputStream
            //   164: dup
            //   165: aload 8
            //   167: invokespecial 115	java/io/FileInputStream:<init>	(Ljava/io/File;)V
            //   170: astore_3
            //   171: ldc 117
            //   173: invokestatic 123	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
            //   176: astore 4
            //   178: aload 4
            //   180: iconst_2
            //   181: aload 6
            //   183: invokestatic 126	ayg:a	(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
            //   186: invokevirtual 130	javax/crypto/Cipher:init	(ILjava/security/Key;)V
            //   189: new 132	javax/crypto/CipherInputStream
            //   192: dup
            //   193: aload_3
            //   194: aload 4
            //   196: invokespecial 135	javax/crypto/CipherInputStream:<init>	(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
            //   199: astore 5
            //   201: new 137	java/lang/String
            //   204: dup
            //   205: aload 5
            //   207: invokestatic 143	org/apache/commons/io/IOUtils:toByteArray	(Ljava/io/InputStream;)[B
            //   210: ldc -111
            //   212: invokestatic 151	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
            //   215: invokespecial 154	java/lang/String:<init>	([BLjava/nio/charset/Charset;)V
            //   218: astore 4
            //   220: new 156	ayg$1
            //   223: dup
            //   224: aload 7
            //   226: invokespecial 159	ayg$1:<init>	(Layg;)V
            //   229: invokevirtual 163	ayg$1:getType	()Ljava/lang/reflect/Type;
            //   232: astore 6
            //   234: invokestatic 168	atn:a	()Lcom/google/gson/Gson;
            //   237: aload 4
            //   239: aload 6
            //   241: invokevirtual 174	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
            //   244: checkcast 176	java/util/HashMap
            //   247: astore 6
            //   249: aload 6
            //   251: ifnull +310 -> 561
            //   254: aload 6
            //   256: invokevirtual 179	java/util/HashMap:isEmpty	()Z
            //   259: ifne +302 -> 561
            //   262: aload 7
            //   264: getfield 183	ayg:mMap	Ljava/util/HashMap;
            //   267: astore 4
            //   269: aload 4
            //   271: monitorenter
            //   272: aload 7
            //   274: getfield 183	ayg:mMap	Ljava/util/HashMap;
            //   277: aload 6
            //   279: invokevirtual 187	java/util/HashMap:putAll	(Ljava/util/Map;)V
            //   282: aload 4
            //   284: monitorexit
            //   285: aload 7
            //   287: iconst_0
            //   288: putfield 54	ayg:mBackingFileIsEmpty	Z
            //   291: goto +270 -> 561
            //   294: aload 7
            //   296: iload_1
            //   297: putfield 190	ayg:mBackingFileIsUpToDate	Z
            //   300: aload 5
            //   302: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   305: aload_3
            //   306: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   309: aload 7
            //   311: getfield 64	ayg:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
            //   314: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
            //   317: return
            //   318: astore 6
            //   320: aload 4
            //   322: monitorexit
            //   323: aload 6
            //   325: athrow
            //   326: astore 6
            //   328: aload_3
            //   329: astore 4
            //   331: aload 5
            //   333: astore_3
            //   334: aload 6
            //   336: astore 5
            //   338: aload 5
            //   340: instanceof 197
            //   343: ifne +13 -> 356
            //   346: aload 5
            //   348: instanceof 199
            //   351: istore_1
            //   352: iload_1
            //   353: ifeq +68 -> 421
            //   356: aload 8
            //   358: invokevirtual 202	java/io/File:getAbsolutePath	()Ljava/lang/String;
            //   361: astore 6
            //   363: ldc -52
            //   365: new 78	java/lang/StringBuilder
            //   368: dup
            //   369: ldc -50
            //   371: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
            //   374: aload 6
            //   376: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   379: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
            //   382: iconst_0
            //   383: anewarray 4	java/lang/Object
            //   386: invokestatic 213	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
            //   389: aload 8
            //   391: invokevirtual 216	java/io/File:delete	()Z
            //   394: pop
            //   395: ldc -52
            //   397: new 78	java/lang/StringBuilder
            //   400: dup
            //   401: ldc -38
            //   403: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
            //   406: aload 6
            //   408: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   411: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
            //   414: iconst_0
            //   415: anewarray 4	java/lang/Object
            //   418: invokestatic 213	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
            //   421: ldc -52
            //   423: aload 5
            //   425: invokestatic 220	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
            //   428: aload_3
            //   429: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   432: aload 4
            //   434: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   437: goto -128 -> 309
            //   440: iconst_0
            //   441: istore_1
            //   442: goto -148 -> 294
            //   445: astore 6
            //   447: ldc -52
            //   449: new 78	java/lang/StringBuilder
            //   452: dup
            //   453: ldc -34
            //   455: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
            //   458: aload 6
            //   460: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
            //   463: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
            //   466: iconst_0
            //   467: anewarray 4	java/lang/Object
            //   470: invokestatic 227	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
            //   473: goto -52 -> 421
            //   476: astore 6
            //   478: aload 4
            //   480: astore 5
            //   482: aload_3
            //   483: astore 4
            //   485: aload 6
            //   487: astore_3
            //   488: aload 4
            //   490: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   493: aload 5
            //   495: invokestatic 195	bfo:a	(Ljava/io/Closeable;)V
            //   498: aload_3
            //   499: athrow
            //   500: astore_3
            //   501: aconst_null
            //   502: astore 4
            //   504: goto -16 -> 488
            //   507: astore 6
            //   509: aconst_null
            //   510: astore 4
            //   512: aload_3
            //   513: astore 5
            //   515: aload 6
            //   517: astore_3
            //   518: goto -30 -> 488
            //   521: astore 4
            //   523: aload_3
            //   524: astore 6
            //   526: aload 4
            //   528: astore_3
            //   529: aload 5
            //   531: astore 4
            //   533: aload 6
            //   535: astore 5
            //   537: goto -49 -> 488
            //   540: astore 5
            //   542: aconst_null
            //   543: astore_3
            //   544: goto -206 -> 338
            //   547: astore 5
            //   549: aconst_null
            //   550: astore 6
            //   552: aload_3
            //   553: astore 4
            //   555: aload 6
            //   557: astore_3
            //   558: goto -220 -> 338
            //   561: iload_1
            //   562: ifne -122 -> 440
            //   565: iconst_1
            //   566: istore_1
            //   567: goto -273 -> 294
            // Local variable table:
            //   start	length	slot	name	signature
            //   0	570	0	this	1
            //   72	495	1	bool1	boolean
            //   109	2	2	bool2	boolean
            //   50	35	3	localFile1	java.io.File
            //   123	14	3	localException1	Exception
            //   141	10	3	localObject1	Object
            //   170	329	3	localObject2	Object
            //   500	13	3	localObject3	Object
            //   517	41	3	localObject4	Object
            //   521	6	4	localObject6	Object
            //   531	23	4	localObject7	Object
            //   1	535	5	localObject8	Object
            //   540	1	5	localException2	Exception
            //   547	1	5	localException3	Exception
            //   37	241	6	localObject9	Object
            //   318	6	6	localObject10	Object
            //   326	9	6	localException4	Exception
            //   361	46	6	str	String
            //   445	14	6	localException5	Exception
            //   476	10	6	localObject11	Object
            //   507	9	6	localObject12	Object
            //   524	32	6	localObject13	Object
            //   21	289	7	localayg	ayg
            //   102	288	8	localFile2	java.io.File
            // Exception table:
            //   from	to	target	type
            //   45	51	123	java/lang/Exception
            //   64	110	123	java/lang/Exception
            //   45	51	141	finally
            //   64	110	141	finally
            //   124	141	141	finally
            //   300	309	141	finally
            //   428	437	141	finally
            //   488	500	141	finally
            //   272	285	318	finally
            //   320	323	318	finally
            //   201	249	326	java/lang/Exception
            //   254	272	326	java/lang/Exception
            //   285	291	326	java/lang/Exception
            //   294	300	326	java/lang/Exception
            //   323	326	326	java/lang/Exception
            //   356	421	445	java/lang/Exception
            //   338	352	476	finally
            //   356	421	476	finally
            //   421	428	476	finally
            //   447	473	476	finally
            //   161	171	500	finally
            //   171	201	507	finally
            //   201	249	521	finally
            //   254	272	521	finally
            //   285	291	521	finally
            //   294	300	521	finally
            //   323	326	521	finally
            //   161	171	540	java/lang/Exception
            //   171	201	547	java/lang/Exception
          }
        }).start();
        if ((ReleaseManager.b()) || ((ReleaseManager.c()) && (!ReleaseManager.i())))
        {
          localObject1 = s;
          e.add(new WeakReference(localObject1));
        }
        return;
        if (!CamcorderProfile.hasProfile(0)) {
          continue;
        }
        localObject1 = CamcorderProfile.get(0);
        continue;
        i3 = widthPixels;
        i4 = heightPixels;
        break label314;
        label741:
        i1 = videoFrameWidth;
        i2 = videoFrameHeight;
        break label344;
        label756:
        i1 = Integer.MAX_VALUE;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        for (;;)
        {
          Timber.a("SnapchatApplication", localClassNotFoundException);
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(Context paramContext, Thread paramThread, Throwable paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */