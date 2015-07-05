package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import com.flurry.android.impl.analytics.FlurryAnalyticsModule;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicInteger;

public class dj
  implements dm.b, dq.a
{
  static int a = 100;
  static int b = 10;
  static int c = 1000;
  static int d = 160000;
  static int e = 50;
  static int f = 20;
  private static final String g = dj.class.getSimpleName();
  private String A = "";
  private String B = "";
  private byte C = -1;
  private Location D;
  private boolean E;
  private String F;
  private byte G;
  private long H;
  private long I;
  private final Map<String, cx.a> J = new HashMap();
  private final List<db> K = new ArrayList();
  private boolean L;
  private int M;
  private final List<da> N = new ArrayList();
  private int O;
  private int P;
  private final cy Q = new cy();
  private Map<String, List<String>> R;
  private dm S;
  private int T;
  private boolean U = false;
  private final AtomicInteger h = new AtomicInteger(0);
  private final AtomicInteger i = new AtomicInteger(0);
  private final AtomicInteger j = new AtomicInteger(0);
  private final String k;
  private String l;
  private WeakReference<Context> m;
  private File n = null;
  private List<dh> o;
  private final Map<dr, ByteBuffer> p = new HashMap();
  private boolean q;
  private long r;
  private List<dh> s = new ArrayList();
  private AdvertisingIdClient.Info t;
  private byte[] u;
  private String v;
  private long w;
  private long x;
  private long y;
  private long z;
  
  public dj(String paramString)
  {
    el.a(4, g, "Creating new Flurry session");
    k = paramString;
    m = new WeakReference(null);
  }
  
  private void A()
  {
    try
    {
      el.a(3, g, "generating agent report");
      dc localdc = new dc(k, l, q, o(), r, w, s, p(), Q.a(false), a(), cx.a().b(), System.currentTimeMillis());
      o = new ArrayList(s);
      if (localdc.a() != null)
      {
        el.a(3, g, "generated report of size " + localdc.a().length + " with " + s.size() + " reports.");
        a(localdc.a());
        s.removeAll(o);
        o = null;
        B();
        return;
      }
      el.d(g, "Error generating report");
      return;
    }
    catch (Throwable localThrowable)
    {
      el.a(6, g, "", localThrowable);
    }
  }
  
  /* Error */
  private void B()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   6: invokestatic 280	com/flurry/sdk/fa:a	(Ljava/io/File;)Z
    //   9: ifne +15 -> 24
    //   12: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   15: ldc_w 282
    //   18: invokestatic 270	com/flurry/sdk/el:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: new 284	java/io/DataOutputStream
    //   27: dup
    //   28: new 286	java/io/FileOutputStream
    //   31: dup
    //   32: aload_0
    //   33: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   36: invokespecial 289	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   39: invokespecial 292	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   42: astore_1
    //   43: new 294	com/flurry/sdk/dk
    //   46: dup
    //   47: invokespecial 295	com/flurry/sdk/dk:<init>	()V
    //   50: astore_2
    //   51: aload_2
    //   52: aload_0
    //   53: getfield 190	com/flurry/sdk/dj:q	Z
    //   56: invokevirtual 298	com/flurry/sdk/dk:a	(Z)V
    //   59: aload_2
    //   60: aload_0
    //   61: getfield 195	com/flurry/sdk/dj:r	J
    //   64: invokevirtual 301	com/flurry/sdk/dk:a	(J)V
    //   67: aload_2
    //   68: aload_0
    //   69: getfield 143	com/flurry/sdk/dj:s	Ljava/util/List;
    //   72: invokevirtual 304	com/flurry/sdk/dk:a	(Ljava/util/List;)V
    //   75: aload_2
    //   76: aload_1
    //   77: aload_0
    //   78: getfield 173	com/flurry/sdk/dj:k	Ljava/lang/String;
    //   81: aload_0
    //   82: invokevirtual 306	com/flurry/sdk/dj:i	()Ljava/lang/String;
    //   85: invokevirtual 309	com/flurry/sdk/dk:a	(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    //   88: goto -67 -> 21
    //   91: astore_1
    //   92: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   95: ldc_w 311
    //   98: aload_1
    //   99: invokestatic 314	com/flurry/sdk/el:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   102: goto -81 -> 21
    //   105: astore_1
    //   106: aload_0
    //   107: monitorexit
    //   108: aload_1
    //   109: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	dj
    //   42	35	1	localDataOutputStream	java.io.DataOutputStream
    //   91	8	1	localException	Exception
    //   105	4	1	localObject	Object
    //   50	26	2	localdk	dk
    // Exception table:
    //   from	to	target	type
    //   24	88	91	java/lang/Exception
    //   2	21	105	finally
    //   24	88	105	finally
    //   92	102	105	finally
  }
  
  /* Error */
  private void C()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: iconst_4
    //   6: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   9: new 232	java/lang/StringBuilder
    //   12: dup
    //   13: ldc_w 316
    //   16: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   23: invokevirtual 321	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   26: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 171	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   35: aload_0
    //   36: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   39: invokevirtual 324	java/io/File:exists	()Z
    //   42: istore_3
    //   43: iload_3
    //   44: ifeq +184 -> 228
    //   47: new 326	java/io/FileInputStream
    //   50: dup
    //   51: aload_0
    //   52: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   55: invokespecial 327	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   58: astore 6
    //   60: new 329	java/io/DataInputStream
    //   63: dup
    //   64: aload 6
    //   66: invokespecial 332	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   69: astore 5
    //   71: new 294	com/flurry/sdk/dk
    //   74: dup
    //   75: invokespecial 295	com/flurry/sdk/dk:<init>	()V
    //   78: astore 4
    //   80: aload 4
    //   82: aload 5
    //   84: aload_0
    //   85: getfield 173	com/flurry/sdk/dj:k	Ljava/lang/String;
    //   88: invokevirtual 335	com/flurry/sdk/dk:a	(Ljava/io/DataInputStream;Ljava/lang/String;)Z
    //   91: pop
    //   92: aload_0
    //   93: aload 4
    //   95: invokevirtual 337	com/flurry/sdk/dk:a	()Z
    //   98: putfield 190	com/flurry/sdk/dj:q	Z
    //   101: aload_0
    //   102: aload 4
    //   104: invokevirtual 339	com/flurry/sdk/dk:c	()J
    //   107: putfield 195	com/flurry/sdk/dj:r	J
    //   110: aload_0
    //   111: aload 4
    //   113: invokevirtual 342	com/flurry/sdk/dk:b	()Ljava/util/List;
    //   116: putfield 143	com/flurry/sdk/dj:s	Ljava/util/List;
    //   119: iconst_1
    //   120: istore_1
    //   121: aload 5
    //   123: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   126: aload 6
    //   128: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   131: iload_1
    //   132: istore_2
    //   133: iload_1
    //   134: ifne +23 -> 157
    //   137: iconst_3
    //   138: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   141: ldc_w 349
    //   144: invokestatic 171	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   147: aload_0
    //   148: getfield 133	com/flurry/sdk/dj:n	Ljava/io/File;
    //   151: invokevirtual 352	java/io/File:delete	()Z
    //   154: pop
    //   155: iload_1
    //   156: istore_2
    //   157: iload_2
    //   158: ifne +16 -> 174
    //   161: aload_0
    //   162: iconst_0
    //   163: putfield 190	com/flurry/sdk/dj:q	Z
    //   166: aload_0
    //   167: aload_0
    //   168: getfield 197	com/flurry/sdk/dj:w	J
    //   171: putfield 195	com/flurry/sdk/dj:r	J
    //   174: aload_0
    //   175: monitorexit
    //   176: return
    //   177: astore 6
    //   179: aconst_null
    //   180: astore 5
    //   182: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   185: ldc_w 354
    //   188: aload 6
    //   190: invokestatic 314	com/flurry/sdk/el:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   193: aload 5
    //   195: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   198: aload 4
    //   200: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   203: iconst_0
    //   204: istore_1
    //   205: goto -74 -> 131
    //   208: aload 5
    //   210: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   213: aload 6
    //   215: invokestatic 347	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   218: aload 4
    //   220: athrow
    //   221: astore 4
    //   223: aload_0
    //   224: monitorexit
    //   225: aload 4
    //   227: athrow
    //   228: iconst_4
    //   229: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   232: ldc_w 356
    //   235: invokestatic 171	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   238: iconst_0
    //   239: istore_2
    //   240: goto -83 -> 157
    //   243: astore 4
    //   245: aconst_null
    //   246: astore 5
    //   248: goto -40 -> 208
    //   251: astore 4
    //   253: goto -45 -> 208
    //   256: astore 7
    //   258: aload 4
    //   260: astore 6
    //   262: aload 7
    //   264: astore 4
    //   266: goto -58 -> 208
    //   269: astore 7
    //   271: aconst_null
    //   272: astore 5
    //   274: aload 6
    //   276: astore 4
    //   278: aload 7
    //   280: astore 6
    //   282: goto -100 -> 182
    //   285: astore 7
    //   287: aload 6
    //   289: astore 4
    //   291: aload 7
    //   293: astore 6
    //   295: goto -113 -> 182
    //   298: astore 4
    //   300: aconst_null
    //   301: astore 5
    //   303: aconst_null
    //   304: astore 6
    //   306: goto -98 -> 208
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	309	0	this	dj
    //   120	85	1	i1	int
    //   132	108	2	i2	int
    //   42	2	3	bool	boolean
    //   1	218	4	localdk	dk
    //   221	5	4	localObject1	Object
    //   243	1	4	localObject2	Object
    //   251	8	4	localObject3	Object
    //   264	26	4	localObject4	Object
    //   298	1	4	localObject5	Object
    //   69	233	5	localDataInputStream	java.io.DataInputStream
    //   58	69	6	localFileInputStream	java.io.FileInputStream
    //   177	37	6	localException1	Exception
    //   260	45	6	localObject6	Object
    //   256	7	7	localObject7	Object
    //   269	10	7	localException2	Exception
    //   285	7	7	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   47	60	177	java/lang/Exception
    //   5	43	221	finally
    //   121	131	221	finally
    //   137	155	221	finally
    //   161	174	221	finally
    //   193	203	221	finally
    //   208	221	221	finally
    //   228	238	221	finally
    //   60	71	243	finally
    //   71	119	251	finally
    //   182	193	256	finally
    //   60	71	269	java/lang/Exception
    //   71	119	285	java/lang/Exception
    //   47	60	298	finally
  }
  
  private void D()
  {
    T += 1;
  }
  
  private void E()
  {
    if (T > 0) {
      T -= 1;
    }
  }
  
  private String F()
  {
    return ".flurryagent." + Integer.toString(k.hashCode(), 16);
  }
  
  private int G()
  {
    return h.incrementAndGet();
  }
  
  private int H()
  {
    return i.incrementAndGet();
  }
  
  private void a(long paramLong)
  {
    try
    {
      Iterator localIterator = K.iterator();
      while (localIterator.hasNext())
      {
        db localdb = (db)localIterator.next();
        if ((localdb.a()) && (!localdb.b())) {
          localdb.a(paramLong);
        }
      }
    }
    finally {}
  }
  
  private void a(dr paramdr, ByteBuffer paramByteBuffer)
  {
    synchronized (p)
    {
      p.put(paramdr, paramByteBuffer);
      return;
    }
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    dd localdd = FlurryAnalyticsModule.getInstance().a();
    String str = dn.a().b();
    localdd.b(paramArrayOfByte, k, str);
  }
  
  private Map<String, List<String>> d(Context paramContext)
  {
    Iterator localIterator = null;
    Object localObject = localIterator;
    if ((paramContext instanceof Activity))
    {
      Bundle localBundle = ((Activity)paramContext).getIntent().getExtras();
      localObject = localIterator;
      if (localBundle != null)
      {
        el.a(3, g, "Launch Options Bundle is present " + localBundle.toString());
        localObject = new HashMap();
        localIterator = localBundle.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            paramContext = localBundle.get(str);
            if (paramContext != null) {}
            for (paramContext = paramContext.toString();; paramContext = "null")
            {
              ((Map)localObject).put(str, new ArrayList(Arrays.asList(new String[] { paramContext })));
              el.a(3, g, "Launch options Key: " + str + ". Its value: " + paramContext);
              break;
            }
          }
        }
      }
    }
    return (Map<String, List<String>>)localObject;
  }
  
  private void u()
  {
    dq localdq = dp.a();
    G = ((Byte)localdq.a("Gender")).byteValue();
    localdq.a("Gender", this);
    el.a(4, g, "initSettings, Gender = " + G);
    F = ((String)localdq.a("UserId"));
    localdq.a("UserId", this);
    el.a(4, g, "initSettings, UserId = " + F);
    E = ((Boolean)localdq.a("LogEvents")).booleanValue();
    localdq.a("LogEvents", this);
    el.a(4, g, "initSettings, LogEvents = " + E);
    H = ((Long)localdq.a("Age")).longValue();
    localdq.a("Age", this);
    el.a(4, g, "initSettings, BirthDate = " + H);
    I = ((Long)localdq.a("ContinueSessionMillis")).longValue();
    localdq.a("ContinueSessionMillis", this);
    el.a(4, g, "initSettings, ContinueSessionMillis = " + I);
  }
  
  private void v()
  {
    try
    {
      if (v != null)
      {
        el.a(3, g, "Fetched phone id");
        a(dr.a, ByteBuffer.wrap(v.getBytes()));
      }
      if (u != null)
      {
        el.a(3, g, "Fetched hashed IMEI");
        a(dr.b, ByteBuffer.wrap(u));
      }
      if (t != null)
      {
        el.a(3, g, "Fetched advertising id");
        a(dr.c, ByteBuffer.wrap(t.getId().getBytes()));
      }
      A();
      return;
    }
    catch (Throwable localThrowable)
    {
      el.a(6, g, "", localThrowable);
    }
  }
  
  private void w()
  {
    a(new fc()
    {
      public void a()
      {
        dh localdh = d();
        dj.c(dj.this).clear();
        dj.c(dj.this).add(localdh);
        dj.d(dj.this);
      }
    });
  }
  
  private void x()
  {
    a(new fc()
    {
      public void a()
      {
        dj.e(dj.this);
      }
    });
  }
  
  /* Error */
  private void y()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 143	com/flurry/sdk/dj:s	Ljava/util/List;
    //   6: invokeinterface 251 1 0
    //   11: ifle +16 -> 27
    //   14: iconst_1
    //   15: istore_1
    //   16: aload_0
    //   17: monitorexit
    //   18: iload_1
    //   19: ifeq +7 -> 26
    //   22: aload_0
    //   23: invokespecial 579	com/flurry/sdk/dj:A	()V
    //   26: return
    //   27: iconst_0
    //   28: istore_1
    //   29: goto -13 -> 16
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: athrow
    //   37: astore_2
    //   38: bipush 6
    //   40: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   43: ldc -111
    //   45: aload_2
    //   46: invokestatic 273	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   49: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	dj
    //   15	14	1	i1	int
    //   32	4	2	localObject	Object
    //   37	9	2	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	14	32	finally
    //   16	18	32	finally
    //   33	35	32	finally
    //   0	2	37	java/lang/Throwable
    //   22	26	37	java/lang/Throwable
    //   35	37	37	java/lang/Throwable
  }
  
  private void z()
  {
    a(new fc()
    {
      public void a()
      {
        dz.a().d();
      }
    });
  }
  
  Map<String, List<String>> a()
  {
    return R;
  }
  
  public void a(Context paramContext)
  {
    try
    {
      el.a(4, g, "Initializing new Flurry session with context:" + paramContext);
      m = new WeakReference(paramContext);
      S = new dm(this);
      n = paramContext.getFileStreamPath(F());
      l = eb.a();
      y = -1L;
      O = 0;
      B = TimeZone.getDefault().getID();
      A = (Locale.getDefault().getLanguage() + "_" + Locale.getDefault().getCountry());
      L = true;
      M = 0;
      P = 0;
      R = d(paramContext);
      u();
      long l1 = SystemClock.elapsedRealtime();
      w = System.currentTimeMillis();
      x = l1;
      a(new fc()
      {
        public void a()
        {
          dj.a(dj.this, dw.a());
        }
      });
      a(new fc()
      {
        public void a()
        {
          dj.a(dj.this, dy.a());
        }
      });
      a(new fc()
      {
        public void a()
        {
          dj.a(dj.this, ea.a());
        }
      });
      a(new fc()
      {
        public void a()
        {
          dj.a(dj.this);
        }
      });
      a(new fc()
      {
        public void a()
        {
          dj.b(dj.this);
        }
      });
      em.a().a(this, paramContext);
      U = true;
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void a(fc paramfc)
  {
    do.a().c(paramfc);
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("Gender"))
    {
      G = ((Byte)paramObject).byteValue();
      el.a(4, g, "onSettingUpdate, Gender = " + G);
      return;
    }
    if (paramString.equals("UserId"))
    {
      F = ((String)paramObject);
      el.a(4, g, "onSettingUpdate, UserId = " + F);
      return;
    }
    if (paramString.equals("LogEvents"))
    {
      E = ((Boolean)paramObject).booleanValue();
      el.a(4, g, "onSettingUpdate, LogEvents = " + E);
      return;
    }
    if (paramString.equals("Age"))
    {
      H = ((Long)paramObject).longValue();
      el.a(4, g, "onSettingUpdate, Birthdate = " + H);
      return;
    }
    if (paramString.equals("ContinueSessionMillis"))
    {
      I = ((Long)paramObject).longValue();
      el.a(4, g, "onSettingUpdate, ContinueSessionMillis = " + I);
      return;
    }
    el.a(6, g, "onSettingUpdate internal error!");
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Throwable paramThrowable)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        long l1;
        if ("uncaught".equals(paramString1))
        {
          i1 = 1;
          O += 1;
          if (N.size() < e)
          {
            l1 = System.currentTimeMillis();
            paramString1 = new da(H(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
            N.add(paramString1);
            el.d(g, "Error logged: " + paramString1.c());
          }
        }
        else
        {
          i1 = 0;
          continue;
        }
        if (i1 == 0) {
          break label240;
        }
        int i1 = 0;
        if (i1 >= N.size()) {
          continue;
        }
        da localda = (da)N.get(i1);
        if ((localda.c() != null) && (!"uncaught".equals(localda.c())))
        {
          l1 = System.currentTimeMillis();
          paramString1 = new da(H(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
          N.set(i1, paramString1);
          continue;
        }
        i1 += 1;
      }
      finally {}
      continue;
      label240:
      el.d(g, "Max errors logged. No more errors logged.");
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = K.iterator();
        db localdb;
        int i1;
        if (localIterator.hasNext())
        {
          localdb = (db)localIterator.next();
          if (!localdb.a(paramString)) {
            continue;
          }
          long l1 = SystemClock.elapsedRealtime();
          long l2 = x;
          if ((paramMap != null) && (paramMap.size() > 0) && (M < d))
          {
            i1 = M - localdb.d();
            paramString = new HashMap(localdb.c());
            localdb.a(paramMap);
            if (localdb.d() + i1 > d) {
              break label207;
            }
            if (localdb.c().size() > b)
            {
              el.d(g, "MaxEventParams exceeded on endEvent: " + localdb.c().size());
              localdb.b(paramString);
            }
          }
          else
          {
            localdb.a(l1 - l2);
          }
        }
        else
        {
          return;
        }
        M = (i1 + localdb.d());
        continue;
        localdb.b(paramString);
      }
      finally {}
      label207:
      L = false;
      M = d;
      el.d(g, "Event Log size exceeded. No more event details logged.");
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap, boolean paramBoolean)
  {
    for (;;)
    {
      long l1;
      long l2;
      String str;
      int i1;
      try
      {
        l1 = SystemClock.elapsedRealtime();
        l2 = x;
        str = fb.a(paramString);
        i1 = str.length();
        if (i1 == 0) {
          return;
        }
        paramString = (cx.a)J.get(str);
        if (paramString != null) {
          break label233;
        }
        if (J.size() < a)
        {
          paramString = new cx.a();
          a = 1;
          J.put(str, paramString);
          el.d(g, "Event count started: " + str);
          if ((!E) || (K.size() >= c) || (M >= d)) {
            break label361;
          }
          if (paramMap != null) {
            break label369;
          }
          paramString = Collections.emptyMap();
          if (paramString.size() <= b) {
            break label270;
          }
          el.d(g, "MaxEventParams exceeded: " + paramString.size());
          continue;
        }
        el.d(g, "Too many different events. Event not counted: " + str);
      }
      finally {}
      continue;
      label233:
      a += 1;
      el.d(g, "Event count incremented: " + str);
      continue;
      label270:
      paramString = new db(G(), str, paramString, l1 - l2, paramBoolean);
      if (paramString.d() + M <= d)
      {
        K.add(paramString);
        i1 = M;
        M = (paramString.d() + i1);
      }
      else
      {
        M = d;
        L = false;
        el.d(g, "Event Log size exceeded. No more event details logged.");
        continue;
        label361:
        L = false;
        continue;
        label369:
        paramString = paramMap;
      }
    }
  }
  
  public void b()
  {
    q = true;
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/dj:U	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   17: new 232	java/lang/StringBuilder
    //   20: dup
    //   21: ldc_w 783
    //   24: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_1
    //   28: invokevirtual 595	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   31: ldc_w 785
    //   34: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_0
    //   38: invokevirtual 787	com/flurry/sdk/dj:g	()I
    //   41: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   44: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 270	com/flurry/sdk/el:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: new 175	java/lang/ref/WeakReference
    //   54: dup
    //   55: aload_1
    //   56: invokespecial 178	java/lang/ref/WeakReference:<init>	(Ljava/lang/Object;)V
    //   59: putfield 180	com/flurry/sdk/dj:m	Ljava/lang/ref/WeakReference;
    //   62: aload_0
    //   63: getfield 602	com/flurry/sdk/dj:S	Lcom/flurry/sdk/dm;
    //   66: invokevirtual 788	com/flurry/sdk/dm:b	()Z
    //   69: ifeq +10 -> 79
    //   72: aload_0
    //   73: getfield 602	com/flurry/sdk/dj:S	Lcom/flurry/sdk/dm;
    //   76: invokevirtual 790	com/flurry/sdk/dm:a	()V
    //   79: aload_0
    //   80: invokespecial 792	com/flurry/sdk/dj:D	()V
    //   83: invokestatic 797	com/flurry/sdk/dz:a	()Lcom/flurry/sdk/dz;
    //   86: invokevirtual 799	com/flurry/sdk/dz:c	()V
    //   89: aload_0
    //   90: invokestatic 797	com/flurry/sdk/dz:a	()Lcom/flurry/sdk/dz;
    //   93: invokevirtual 802	com/flurry/sdk/dz:f	()Landroid/location/Location;
    //   96: putfield 804	com/flurry/sdk/dj:D	Landroid/location/Location;
    //   99: invokestatic 669	com/flurry/sdk/em:a	()Lcom/flurry/sdk/em;
    //   102: aload_0
    //   103: aload_1
    //   104: invokevirtual 806	com/flurry/sdk/em:b	(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    //   107: goto -96 -> 11
    //   110: astore_1
    //   111: aload_0
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	dj
    //   0	115	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	110	finally
    //   14	79	110	finally
    //   79	107	110	finally
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/dj:U	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   17: ldc_w 808
    //   20: invokestatic 270	com/flurry/sdk/el:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: aload_0
    //   24: getfield 602	com/flurry/sdk/dj:S	Lcom/flurry/sdk/dm;
    //   27: invokevirtual 788	com/flurry/sdk/dm:b	()Z
    //   30: ifeq +10 -> 40
    //   33: aload_0
    //   34: getfield 602	com/flurry/sdk/dj:S	Lcom/flurry/sdk/dm;
    //   37: invokevirtual 790	com/flurry/sdk/dm:a	()V
    //   40: aload_0
    //   41: invokevirtual 787	com/flurry/sdk/dj:g	()I
    //   44: ifeq +37 -> 81
    //   47: bipush 6
    //   49: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   52: new 232	java/lang/StringBuilder
    //   55: dup
    //   56: ldc_w 810
    //   59: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: aload_0
    //   63: invokevirtual 812	com/flurry/sdk/dj:j	()Ljava/lang/String;
    //   66: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc_w 814
    //   72: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 171	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   81: aload_0
    //   82: iconst_0
    //   83: putfield 358	com/flurry/sdk/dj:T	I
    //   86: aload_0
    //   87: invokespecial 816	com/flurry/sdk/dj:x	()V
    //   90: invokestatic 669	com/flurry/sdk/em:a	()Lcom/flurry/sdk/em;
    //   93: aload_0
    //   94: invokevirtual 818	com/flurry/sdk/em:a	(Lcom/flurry/sdk/dj;)V
    //   97: aload_0
    //   98: new 20	com/flurry/sdk/dj$6
    //   101: dup
    //   102: aload_0
    //   103: invokespecial 819	com/flurry/sdk/dj$6:<init>	(Lcom/flurry/sdk/dj;)V
    //   106: invokevirtual 584	com/flurry/sdk/dj:a	(Lcom/flurry/sdk/fc;)V
    //   109: invokestatic 487	com/flurry/sdk/dp:a	()Lcom/flurry/sdk/dq;
    //   112: ldc_w 489
    //   115: aload_0
    //   116: invokevirtual 822	com/flurry/sdk/dq:b	(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)Z
    //   119: pop
    //   120: invokestatic 487	com/flurry/sdk/dp:a	()Lcom/flurry/sdk/dq;
    //   123: ldc_w 508
    //   126: aload_0
    //   127: invokevirtual 822	com/flurry/sdk/dq:b	(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)Z
    //   130: pop
    //   131: invokestatic 487	com/flurry/sdk/dp:a	()Lcom/flurry/sdk/dq;
    //   134: ldc_w 528
    //   137: aload_0
    //   138: invokevirtual 822	com/flurry/sdk/dq:b	(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)Z
    //   141: pop
    //   142: invokestatic 487	com/flurry/sdk/dp:a	()Lcom/flurry/sdk/dq;
    //   145: ldc_w 514
    //   148: aload_0
    //   149: invokevirtual 822	com/flurry/sdk/dq:b	(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)Z
    //   152: pop
    //   153: invokestatic 487	com/flurry/sdk/dp:a	()Lcom/flurry/sdk/dq;
    //   156: ldc_w 542
    //   159: aload_0
    //   160: invokevirtual 822	com/flurry/sdk/dq:b	(Ljava/lang/String;Lcom/flurry/sdk/dq$a;)Z
    //   163: pop
    //   164: goto -153 -> 11
    //   167: astore_2
    //   168: aload_0
    //   169: monitorexit
    //   170: aload_2
    //   171: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	172	0	this	dj
    //   6	2	1	bool	boolean
    //   167	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	167	finally
    //   14	40	167	finally
    //   40	81	167	finally
    //   81	164	167	finally
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/dj:U	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 669	com/flurry/sdk/em:a	()Lcom/flurry/sdk/em;
    //   17: aload_0
    //   18: aload_1
    //   19: invokevirtual 824	com/flurry/sdk/em:c	(Lcom/flurry/sdk/dj;Landroid/content/Context;)V
    //   22: aload_0
    //   23: invokestatic 797	com/flurry/sdk/dz:a	()Lcom/flurry/sdk/dz;
    //   26: invokevirtual 802	com/flurry/sdk/dz:f	()Landroid/location/Location;
    //   29: putfield 804	com/flurry/sdk/dj:D	Landroid/location/Location;
    //   32: aload_0
    //   33: invokespecial 826	com/flurry/sdk/dj:z	()V
    //   36: aload_0
    //   37: invokespecial 828	com/flurry/sdk/dj:E	()V
    //   40: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   43: new 232	java/lang/StringBuilder
    //   46: dup
    //   47: ldc_w 830
    //   50: invokespecial 236	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   53: aload_1
    //   54: invokevirtual 595	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: ldc_w 785
    //   60: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: aload_0
    //   64: invokevirtual 787	com/flurry/sdk/dj:g	()I
    //   67: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   70: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 270	com/flurry/sdk/el:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   76: aload_0
    //   77: invokestatic 657	android/os/SystemClock:elapsedRealtime	()J
    //   80: aload_0
    //   81: getfield 659	com/flurry/sdk/dj:x	J
    //   84: lsub
    //   85: putfield 618	com/flurry/sdk/dj:y	J
    //   88: aload_0
    //   89: aload_0
    //   90: getfield 618	com/flurry/sdk/dj:y	J
    //   93: invokespecial 831	com/flurry/sdk/dj:a	(J)V
    //   96: aload_0
    //   97: invokespecial 833	com/flurry/sdk/dj:w	()V
    //   100: aload_0
    //   101: invokevirtual 787	com/flurry/sdk/dj:g	()I
    //   104: ifne -93 -> 11
    //   107: aload_0
    //   108: getfield 602	com/flurry/sdk/dj:S	Lcom/flurry/sdk/dm;
    //   111: aload_0
    //   112: getfield 544	com/flurry/sdk/dj:I	J
    //   115: invokevirtual 834	com/flurry/sdk/dm:a	(J)V
    //   118: goto -107 -> 11
    //   121: astore_1
    //   122: aload_0
    //   123: monitorexit
    //   124: aload_1
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	dj
    //   0	126	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	121	finally
    //   14	118	121	finally
  }
  
  /* Error */
  dh d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 839	com/flurry/sdk/di
    //   5: dup
    //   6: invokespecial 840	com/flurry/sdk/di:<init>	()V
    //   9: astore_1
    //   10: aload_1
    //   11: aload_0
    //   12: getfield 188	com/flurry/sdk/dj:l	Ljava/lang/String;
    //   15: invokevirtual 842	com/flurry/sdk/di:a	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: aload_0
    //   20: getfield 197	com/flurry/sdk/dj:w	J
    //   23: invokevirtual 843	com/flurry/sdk/di:a	(J)V
    //   26: aload_1
    //   27: aload_0
    //   28: getfield 618	com/flurry/sdk/dj:y	J
    //   31: invokevirtual 845	com/flurry/sdk/di:b	(J)V
    //   34: aload_1
    //   35: aload_0
    //   36: getfield 847	com/flurry/sdk/dj:z	J
    //   39: invokevirtual 849	com/flurry/sdk/di:c	(J)V
    //   42: aload_1
    //   43: aload_0
    //   44: invokevirtual 851	com/flurry/sdk/dj:k	()Ljava/lang/String;
    //   47: invokevirtual 853	com/flurry/sdk/di:b	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: aload_0
    //   52: invokevirtual 855	com/flurry/sdk/dj:l	()Ljava/lang/String;
    //   55: invokevirtual 857	com/flurry/sdk/di:c	(Ljava/lang/String;)V
    //   58: aload_1
    //   59: aload_0
    //   60: getfield 151	com/flurry/sdk/dj:C	B
    //   63: invokevirtual 859	com/flurry/sdk/di:a	(I)V
    //   66: aload_1
    //   67: aload_0
    //   68: invokevirtual 861	com/flurry/sdk/dj:h	()Ljava/lang/String;
    //   71: invokevirtual 863	com/flurry/sdk/di:d	(Ljava/lang/String;)V
    //   74: aload_1
    //   75: aload_0
    //   76: getfield 804	com/flurry/sdk/dj:D	Landroid/location/Location;
    //   79: invokevirtual 866	com/flurry/sdk/di:a	(Landroid/location/Location;)V
    //   82: aload_1
    //   83: aload_0
    //   84: invokevirtual 868	com/flurry/sdk/dj:f	()I
    //   87: invokevirtual 870	com/flurry/sdk/di:b	(I)V
    //   90: aload_1
    //   91: aload_0
    //   92: getfield 501	com/flurry/sdk/dj:G	B
    //   95: invokevirtual 873	com/flurry/sdk/di:a	(B)V
    //   98: aload_1
    //   99: aload_0
    //   100: getfield 535	com/flurry/sdk/dj:H	J
    //   103: invokestatic 708	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   106: invokevirtual 876	com/flurry/sdk/di:a	(Ljava/lang/Long;)V
    //   109: aload_1
    //   110: aload_0
    //   111: invokevirtual 878	com/flurry/sdk/dj:t	()Ljava/util/Map;
    //   114: invokevirtual 879	com/flurry/sdk/di:a	(Ljava/util/Map;)V
    //   117: aload_1
    //   118: aload_0
    //   119: invokevirtual 881	com/flurry/sdk/dj:r	()Ljava/util/List;
    //   122: invokevirtual 882	com/flurry/sdk/di:a	(Ljava/util/List;)V
    //   125: aload_1
    //   126: aload_0
    //   127: getfield 644	com/flurry/sdk/dj:L	Z
    //   130: invokevirtual 883	com/flurry/sdk/di:a	(Z)V
    //   133: aload_1
    //   134: aload_0
    //   135: invokevirtual 885	com/flurry/sdk/dj:s	()Ljava/util/List;
    //   138: invokevirtual 887	com/flurry/sdk/di:b	(Ljava/util/List;)V
    //   141: aload_1
    //   142: aload_0
    //   143: getfield 620	com/flurry/sdk/dj:O	I
    //   146: invokevirtual 889	com/flurry/sdk/di:c	(I)V
    //   149: new 891	com/flurry/sdk/dh
    //   152: dup
    //   153: aload_1
    //   154: invokespecial 894	com/flurry/sdk/dh:<init>	(Lcom/flurry/sdk/di;)V
    //   157: astore_1
    //   158: aload_1
    //   159: ifnonnull +12 -> 171
    //   162: getstatic 102	com/flurry/sdk/dj:g	Ljava/lang/String;
    //   165: ldc_w 896
    //   168: invokestatic 270	com/flurry/sdk/el:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   171: aload_0
    //   172: monitorexit
    //   173: aload_1
    //   174: areturn
    //   175: astore_1
    //   176: aload_1
    //   177: invokevirtual 899	java/io/IOException:printStackTrace	()V
    //   180: aconst_null
    //   181: astore_1
    //   182: goto -24 -> 158
    //   185: astore_1
    //   186: aload_0
    //   187: monitorexit
    //   188: aload_1
    //   189: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	dj
    //   9	165	1	localObject1	Object
    //   175	2	1	localIOException	java.io.IOException
    //   181	1	1	localObject2	Object
    //   185	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   149	158	175	java/io/IOException
    //   2	149	185	finally
    //   149	158	185	finally
    //   162	171	185	finally
    //   176	180	185	finally
  }
  
  public void e()
  {
    try
    {
      P += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int f()
  {
    return P;
  }
  
  int g()
  {
    return T;
  }
  
  String h()
  {
    if (F == null) {
      return "";
    }
    return F;
  }
  
  public String i()
  {
    return v;
  }
  
  public String j()
  {
    return k;
  }
  
  public String k()
  {
    return A;
  }
  
  public String l()
  {
    return B;
  }
  
  public long m()
  {
    return w;
  }
  
  public long n()
  {
    return x;
  }
  
  public boolean o()
  {
    return (t == null) || (!t.isLimitAdTrackingEnabled());
  }
  
  public Map<dr, ByteBuffer> p()
  {
    return new HashMap(p);
  }
  
  public void q()
  {
    c();
  }
  
  List<db> r()
  {
    return K;
  }
  
  List<da> s()
  {
    return N;
  }
  
  Map<String, cx.a> t()
  {
    return J;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */