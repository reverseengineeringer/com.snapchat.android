package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.internal.zzik;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class zzx
  extends Thread
  implements zzf
{
  private volatile boolean mClosed;
  private final GoogleAnalytics zzBN;
  private final LinkedBlockingQueue<Runnable> zzCJ = new LinkedBlockingQueue();
  private volatile boolean zzCK;
  private volatile String zzCL;
  private volatile zzak zzCM;
  private final Lock zzCN;
  private final List<zzik> zzCO = new ArrayList();
  
  zzx(GoogleAnalytics paramGoogleAnalytics, zzak paramzzak)
  {
    super("GAThread");
    com.google.android.gms.common.internal.zzx.zzl(paramGoogleAnalytics);
    zzBN = paramGoogleAnalytics;
    zzCM = paramzzak;
    zzCO.add(new zzik("appendVersion", "&_v".substring(1), "ma4.0.6"));
    zzCN = new ReentrantLock();
    start();
  }
  
  /* Error */
  static String zzH(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 106
    //   3: invokevirtual 112	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   6: astore_3
    //   7: aload_3
    //   8: astore_2
    //   9: sipush 8192
    //   12: newarray <illegal type>
    //   14: astore 4
    //   16: aload_3
    //   17: astore_2
    //   18: aload_3
    //   19: aload 4
    //   21: iconst_0
    //   22: sipush 8192
    //   25: invokevirtual 118	java/io/FileInputStream:read	([BII)I
    //   28: istore_1
    //   29: aload_3
    //   30: astore_2
    //   31: aload_3
    //   32: invokevirtual 122	java/io/FileInputStream:available	()I
    //   35: ifle +25 -> 60
    //   38: aload_3
    //   39: astore_2
    //   40: ldc 124
    //   42: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   45: aload_3
    //   46: astore_2
    //   47: aload_3
    //   48: invokevirtual 132	java/io/FileInputStream:close	()V
    //   51: aload_0
    //   52: ldc 106
    //   54: invokevirtual 136	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   57: pop
    //   58: aconst_null
    //   59: areturn
    //   60: aload_3
    //   61: astore_2
    //   62: aload_3
    //   63: invokevirtual 132	java/io/FileInputStream:close	()V
    //   66: aload_0
    //   67: ldc 106
    //   69: invokevirtual 136	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   72: pop
    //   73: iload_1
    //   74: ifgt +52 -> 126
    //   77: ldc -118
    //   79: invokestatic 141	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   82: aconst_null
    //   83: areturn
    //   84: astore_0
    //   85: aconst_null
    //   86: astore_3
    //   87: aload_3
    //   88: astore_2
    //   89: ldc -113
    //   91: invokestatic 146	com/google/android/gms/analytics/zzae:zzaa	(Ljava/lang/String;)V
    //   94: aload_3
    //   95: ifnull -37 -> 58
    //   98: aload_3
    //   99: invokevirtual 132	java/io/FileInputStream:close	()V
    //   102: aconst_null
    //   103: areturn
    //   104: astore_0
    //   105: new 148	java/lang/StringBuilder
    //   108: dup
    //   109: ldc -106
    //   111: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_0
    //   115: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   118: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   124: aconst_null
    //   125: areturn
    //   126: new 74	java/lang/String
    //   129: dup
    //   130: aload 4
    //   132: iconst_0
    //   133: iload_1
    //   134: invokespecial 162	java/lang/String:<init>	([BII)V
    //   137: astore_2
    //   138: new 148	java/lang/StringBuilder
    //   141: dup
    //   142: ldc -92
    //   144: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   147: aload_2
    //   148: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 146	com/google/android/gms/analytics/zzae:zzaa	(Ljava/lang/String;)V
    //   157: aload_2
    //   158: areturn
    //   159: astore_2
    //   160: aconst_null
    //   161: astore_3
    //   162: aload_3
    //   163: astore_2
    //   164: ldc -87
    //   166: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   169: aload_3
    //   170: astore_2
    //   171: aload_0
    //   172: ldc 106
    //   174: invokevirtual 136	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   177: pop
    //   178: aload_3
    //   179: ifnull -121 -> 58
    //   182: aload_3
    //   183: invokevirtual 132	java/io/FileInputStream:close	()V
    //   186: aconst_null
    //   187: areturn
    //   188: astore_0
    //   189: new 148	java/lang/StringBuilder
    //   192: dup
    //   193: ldc -106
    //   195: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   198: aload_0
    //   199: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   208: aconst_null
    //   209: areturn
    //   210: astore_0
    //   211: aconst_null
    //   212: astore_2
    //   213: aload_2
    //   214: ifnull +7 -> 221
    //   217: aload_2
    //   218: invokevirtual 132	java/io/FileInputStream:close	()V
    //   221: aload_0
    //   222: athrow
    //   223: astore_2
    //   224: new 148	java/lang/StringBuilder
    //   227: dup
    //   228: ldc -106
    //   230: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   233: aload_2
    //   234: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   237: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   240: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   243: goto -22 -> 221
    //   246: astore_0
    //   247: goto -34 -> 213
    //   250: astore_2
    //   251: goto -89 -> 162
    //   254: astore_0
    //   255: goto -168 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	258	0	paramContext	android.content.Context
    //   28	106	1	i	int
    //   8	150	2	localObject	Object
    //   159	1	2	localIOException1	java.io.IOException
    //   163	55	2	localFileInputStream1	java.io.FileInputStream
    //   223	11	2	localIOException2	java.io.IOException
    //   250	1	2	localIOException3	java.io.IOException
    //   6	177	3	localFileInputStream2	java.io.FileInputStream
    //   14	117	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   0	7	84	java/io/FileNotFoundException
    //   51	58	84	java/io/FileNotFoundException
    //   66	73	84	java/io/FileNotFoundException
    //   77	82	84	java/io/FileNotFoundException
    //   126	157	84	java/io/FileNotFoundException
    //   98	102	104	java/io/IOException
    //   0	7	159	java/io/IOException
    //   51	58	159	java/io/IOException
    //   66	73	159	java/io/IOException
    //   77	82	159	java/io/IOException
    //   126	157	159	java/io/IOException
    //   182	186	188	java/io/IOException
    //   0	7	210	finally
    //   51	58	210	finally
    //   66	73	210	finally
    //   77	82	210	finally
    //   126	157	210	finally
    //   217	221	223	java/io/IOException
    //   9	16	246	finally
    //   18	29	246	finally
    //   31	38	246	finally
    //   40	45	246	finally
    //   47	51	246	finally
    //   62	66	246	finally
    //   89	94	246	finally
    //   164	169	246	finally
    //   171	178	246	finally
    //   9	16	250	java/io/IOException
    //   18	29	250	java/io/IOException
    //   31	38	250	java/io/IOException
    //   40	45	250	java/io/IOException
    //   47	51	250	java/io/IOException
    //   62	66	250	java/io/IOException
    //   9	16	254	java/io/FileNotFoundException
    //   18	29	254	java/io/FileNotFoundException
    //   31	38	254	java/io/FileNotFoundException
    //   40	45	254	java/io/FileNotFoundException
    //   47	51	254	java/io/FileNotFoundException
    //   62	66	254	java/io/FileNotFoundException
  }
  
  static int zzan(String paramString)
  {
    int k = 1;
    if (!TextUtils.isEmpty(paramString))
    {
      int j = paramString.length();
      int i = 0;
      j -= 1;
      for (;;)
      {
        k = i;
        if (j < 0) {
          break;
        }
        k = paramString.charAt(j);
        k = (i << 6 & 0xFFFFFFF) + k + (k << 14);
        int m = 0xFE00000 & k;
        i = k;
        if (m != 0) {
          i = k ^ m >> 21;
        }
        j -= 1;
      }
    }
    return k;
  }
  
  private void zzc(Runnable paramRunnable)
  {
    zzCJ.add(paramRunnable);
  }
  
  private String zzf(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public void dispatch()
  {
    zzc(new zzb(null));
  }
  
  public Thread getThread()
  {
    return this;
  }
  
  /* Error */
  protected void init()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/google/android/gms/analytics/zzx:zzCM	Lcom/google/android/gms/analytics/zzak;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: new 232	com/google/android/gms/analytics/zzw
    //   18: dup
    //   19: aload_0
    //   20: getfield 64	com/google/android/gms/analytics/zzx:zzBN	Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   23: invokevirtual 238	com/google/android/gms/analytics/GoogleAnalytics:getContext	()Landroid/content/Context;
    //   26: aload_0
    //   27: invokespecial 241	com/google/android/gms/analytics/zzw:<init>	(Landroid/content/Context;Lcom/google/android/gms/analytics/zzf;)V
    //   30: putfield 66	com/google/android/gms/analytics/zzx:zzCM	Lcom/google/android/gms/analytics/zzak;
    //   33: aload_0
    //   34: getfield 66	com/google/android/gms/analytics/zzx:zzCM	Lcom/google/android/gms/analytics/zzak;
    //   37: invokeinterface 246 1 0
    //   42: goto -31 -> 11
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	zzx
    //   6	2	1	localzzak	zzak
    //   45	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   14	42	45	finally
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 255	android/os/Process:setThreadPriority	(I)V
    //   5: ldc2_w 256
    //   8: invokestatic 261	java/lang/Thread:sleep	(J)V
    //   11: aload_0
    //   12: invokevirtual 263	com/google/android/gms/analytics/zzx:init	()V
    //   15: aload_0
    //   16: aload_0
    //   17: getfield 64	com/google/android/gms/analytics/zzx:zzBN	Lcom/google/android/gms/analytics/GoogleAnalytics;
    //   20: invokevirtual 238	com/google/android/gms/analytics/GoogleAnalytics:getContext	()Landroid/content/Context;
    //   23: invokestatic 265	com/google/android/gms/analytics/zzx:zzH	(Landroid/content/Context;)Ljava/lang/String;
    //   26: putfield 173	com/google/android/gms/analytics/zzx:zzCL	Ljava/lang/String;
    //   29: ldc_w 267
    //   32: invokestatic 270	com/google/android/gms/analytics/zzae:zzab	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: getfield 272	com/google/android/gms/analytics/zzx:mClosed	Z
    //   39: ifne +159 -> 198
    //   42: aload_0
    //   43: getfield 51	com/google/android/gms/analytics/zzx:zzCJ	Ljava/util/concurrent/LinkedBlockingQueue;
    //   46: invokevirtual 276	java/util/concurrent/LinkedBlockingQueue:take	()Ljava/lang/Object;
    //   49: checkcast 278	java/lang/Runnable
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 94	com/google/android/gms/analytics/zzx:zzCN	Ljava/util/concurrent/locks/Lock;
    //   57: invokeinterface 283 1 0
    //   62: aload_0
    //   63: getfield 285	com/google/android/gms/analytics/zzx:zzCK	Z
    //   66: ifne +9 -> 75
    //   69: aload_1
    //   70: invokeinterface 287 1 0
    //   75: aload_0
    //   76: getfield 94	com/google/android/gms/analytics/zzx:zzCN	Ljava/util/concurrent/locks/Lock;
    //   79: invokeinterface 290 1 0
    //   84: goto -49 -> 35
    //   87: astore_1
    //   88: aload_1
    //   89: invokevirtual 291	java/lang/InterruptedException:toString	()Ljava/lang/String;
    //   92: invokestatic 146	com/google/android/gms/analytics/zzae:zzaa	(Ljava/lang/String;)V
    //   95: goto -60 -> 35
    //   98: astore_1
    //   99: new 148	java/lang/StringBuilder
    //   102: dup
    //   103: ldc_w 293
    //   106: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_0
    //   110: aload_1
    //   111: invokespecial 295	com/google/android/gms/analytics/zzx:zzf	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   114: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   123: ldc_w 297
    //   126: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   129: aload_0
    //   130: iconst_1
    //   131: putfield 285	com/google/android/gms/analytics/zzx:zzCK	Z
    //   134: goto -99 -> 35
    //   137: astore_1
    //   138: ldc_w 299
    //   141: invokestatic 141	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   144: goto -133 -> 11
    //   147: astore_1
    //   148: new 148	java/lang/StringBuilder
    //   151: dup
    //   152: ldc_w 301
    //   155: invokespecial 151	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_0
    //   159: aload_1
    //   160: invokespecial 295	com/google/android/gms/analytics/zzx:zzf	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   163: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 159	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   172: ldc_w 303
    //   175: invokestatic 129	com/google/android/gms/analytics/zzae:zzZ	(Ljava/lang/String;)V
    //   178: aload_0
    //   179: iconst_1
    //   180: putfield 285	com/google/android/gms/analytics/zzx:zzCK	Z
    //   183: goto -148 -> 35
    //   186: astore_1
    //   187: aload_0
    //   188: getfield 94	com/google/android/gms/analytics/zzx:zzCN	Ljava/util/concurrent/locks/Lock;
    //   191: invokeinterface 290 1 0
    //   196: aload_1
    //   197: athrow
    //   198: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	zzx
    //   52	18	1	localRunnable	Runnable
    //   87	2	1	localInterruptedException1	InterruptedException
    //   98	13	1	localThrowable1	Throwable
    //   137	1	1	localInterruptedException2	InterruptedException
    //   147	13	1	localThrowable2	Throwable
    //   186	11	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   42	62	87	java/lang/InterruptedException
    //   75	84	87	java/lang/InterruptedException
    //   187	198	87	java/lang/InterruptedException
    //   42	62	98	java/lang/Throwable
    //   75	84	98	java/lang/Throwable
    //   88	95	98	java/lang/Throwable
    //   187	198	98	java/lang/Throwable
    //   5	11	137	java/lang/InterruptedException
    //   11	35	147	java/lang/Throwable
    //   62	75	186	finally
  }
  
  public void zzfa()
  {
    zzc(new zza(null));
  }
  
  public void zzfh()
  {
    zzc(new zzc(null));
  }
  
  public LinkedBlockingQueue<Runnable> zzfi()
  {
    return zzCJ;
  }
  
  public void zzfj()
  {
    init();
    Object localObject1 = new ArrayList();
    zzCJ.drainTo((Collection)localObject1);
    zzCN.lock();
    try
    {
      zzCK = true;
      localObject1 = ((List)localObject1).iterator();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          Runnable localRunnable = (Runnable)((Iterator)localObject1).next();
          try
          {
            localRunnable.run();
          }
          catch (Throwable localThrowable)
          {
            zzae.zzZ("Error dispatching all events on exit, giving up: " + zzf(localThrowable));
          }
        }
      }
      return;
    }
    finally
    {
      zzCN.unlock();
    }
  }
  
  public void zzx(Map<String, String> paramMap)
  {
    zzc(new zzd(paramMap));
  }
  
  class zza
    implements Runnable
  {
    private zza() {}
    
    public void run()
    {
      zzx.zzd(zzx.this).zzfa();
    }
  }
  
  class zzb
    implements Runnable
  {
    private zzb() {}
    
    public void run()
    {
      zzx.zzd(zzx.this).dispatch();
    }
  }
  
  class zzc
    implements Runnable
  {
    private zzc() {}
    
    public void run()
    {
      zzx.zzd(zzx.this).zzfh();
    }
  }
  
  class zzd
    implements Runnable
  {
    private final Map<String, String> zzCQ;
    
    zzd()
    {
      zzCQ = new HashMap((Map)localObject);
      Object localObject = (String)((Map)localObject).get("&ht");
      this$1 = (zzx)localObject;
      if (localObject != null) {}
      try
      {
        Long.valueOf((String)localObject);
        this$1 = (zzx)localObject;
      }
      catch (NumberFormatException this$1)
      {
        for (;;)
        {
          long l;
          this$1 = null;
        }
      }
      if (zzx.this == null)
      {
        l = System.currentTimeMillis();
        zzCQ.put("&ht", Long.toString(l));
      }
    }
    
    private void zzA(Map<String, String> paramMap)
    {
      zzg localzzg = zzx.zza(zzx.this).zzgo();
      zzan.zza(paramMap, "&an", localzzg);
      zzan.zza(paramMap, "&av", localzzg);
      zzan.zza(paramMap, "&aid", localzzg);
      zzan.zza(paramMap, "&aiid", localzzg);
      paramMap.put("&v", "1");
    }
    
    private boolean zzB(Map<String, String> paramMap)
    {
      if (paramMap.get("&sf") == null) {
        return false;
      }
      double d = zzan.zza((String)paramMap.get("&sf"), 100.0D);
      if (d >= 100.0D) {
        return false;
      }
      if (zzx.zzan((String)paramMap.get("&cid")) % 10000 >= d * 100.0D)
      {
        if (paramMap.get("&t") == null) {}
        for (paramMap = "unknown";; paramMap = (String)paramMap.get("&t"))
        {
          zzae.zzab(String.format("%s hit sampled out", new Object[] { paramMap }));
          return true;
        }
      }
      return false;
    }
    
    private String zzy(Map<String, String> paramMap)
    {
      if (paramMap.containsKey("useSecure"))
      {
        if (zzan.zze((String)paramMap.get("useSecure"), true)) {
          return "https:";
        }
        return "http:";
      }
      return "https:";
    }
    
    private void zzz(Map<String, String> paramMap)
    {
      zzx.zza(zzx.this).getContext();
      zza localzza = zzx.zza(zzx.this).zzgq();
      zzan.zza(paramMap, "&adid", localzza);
      zzan.zza(paramMap, "&ate", localzza);
    }
    
    public void run()
    {
      zzz(zzCQ);
      if (TextUtils.isEmpty((CharSequence)zzCQ.get("&cid")))
      {
        localObject = zzx.zza(zzx.this).zzgp();
        zzCQ.put("&cid", ((zzk)localObject).getValue("&cid"));
      }
      if ((zzx.zza(zzx.this).getAppOptOut()) || (zzB(zzCQ))) {
        return;
      }
      if (!TextUtils.isEmpty(zzx.zzb(zzx.this)))
      {
        zzy.zzfV().zzF(true);
        localObject = new HitBuilders.HitBuilder().setCampaignParamsFromUrl(zzx.zzb(zzx.this));
        zzx.zza(zzx.this, null);
        localObject = ((HitBuilders.HitBuilder)localObject).build();
        zzy.zzfV().zzF(false);
        zzCQ.putAll((Map)localObject);
      }
      zzA(zzCQ);
      Object localObject = zzac.zzC(zzCQ);
      zzx.zzd(zzx.this).zzb((Map)localObject, Long.valueOf((String)zzCQ.get("&ht")).longValue(), zzy(zzCQ), zzx.zzc(zzx.this));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */