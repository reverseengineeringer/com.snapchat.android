import android.content.Context;
import java.util.concurrent.ExecutorService;

public class az
{
  public static void a(Context paramContext, String paramString)
  {
    try
    {
      a(paramContext, paramString, new ba());
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  /* Error */
  private static void a(Context paramContext, String paramString, ba paramba)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_1
    //   4: ifnonnull +15 -> 19
    //   7: ldc 25
    //   9: invokevirtual 31	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   12: invokestatic 35	az:b	(Ljava/lang/String;)V
    //   15: ldc 2
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: ifnonnull +23 -> 43
    //   23: ldc 37
    //   25: invokevirtual 31	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   28: invokestatic 35	az:b	(Ljava/lang/String;)V
    //   31: goto -16 -> 15
    //   34: astore_0
    //   35: aload_0
    //   36: athrow
    //   37: astore_0
    //   38: ldc 2
    //   40: monitorexit
    //   41: aload_0
    //   42: athrow
    //   43: aload_1
    //   44: invokevirtual 41	java/lang/String:length	()I
    //   47: bipush 24
    //   49: if_icmpge +27 -> 76
    //   52: new 43	java/security/InvalidParameterException
    //   55: dup
    //   56: ldc 45
    //   58: invokespecial 47	java/security/InvalidParameterException:<init>	(Ljava/lang/String;)V
    //   61: pop
    //   62: invokestatic 52	bue:h	()V
    //   65: goto -50 -> 15
    //   68: astore_0
    //   69: aload_0
    //   70: invokestatic 55	bue:a	(Ljava/lang/Throwable;)V
    //   73: goto -58 -> 15
    //   76: invokestatic 61	brz:t	()Lbrz;
    //   79: getfield 64	brz:b	Z
    //   82: istore_3
    //   83: iload_3
    //   84: ifne -69 -> 15
    //   87: invokestatic 70	java/lang/System:nanoTime	()J
    //   90: lstore 6
    //   92: invokestatic 61	brz:t	()Lbrz;
    //   95: astore 8
    //   97: invokestatic 73	bue:d	()V
    //   100: aload 8
    //   102: aload_1
    //   103: putfield 76	brz:d	Ljava/lang/String;
    //   106: aload 8
    //   108: new 78	bsc
    //   111: dup
    //   112: aload_2
    //   113: invokespecial 81	bsc:<init>	(Lba;)V
    //   116: putfield 85	brz:w	Lbsc;
    //   119: aload 8
    //   121: aload_0
    //   122: putfield 89	brz:c	Landroid/content/Context;
    //   125: aload 8
    //   127: new 91	bru
    //   130: dup
    //   131: aload 8
    //   133: getfield 89	brz:c	Landroid/content/Context;
    //   136: aload 8
    //   138: getfield 85	brz:w	Lbsc;
    //   141: invokespecial 94	bru:<init>	(Landroid/content/Context;Lba;)V
    //   144: putfield 98	brz:s	Lbru;
    //   147: aload 8
    //   149: aload_0
    //   150: invokevirtual 101	android/content/Context:getPackageName	()Ljava/lang/String;
    //   153: putfield 104	brz:v	Ljava/lang/String;
    //   156: aload 8
    //   158: new 106	bty
    //   161: dup
    //   162: aload_0
    //   163: invokespecial 109	bty:<init>	(Landroid/content/Context;)V
    //   166: putfield 113	brz:y	Lbty;
    //   169: aload 8
    //   171: invokevirtual 116	brz:u	()V
    //   174: ldc2_w 117
    //   177: lstore 4
    //   179: aload 8
    //   181: getfield 120	brz:u	Z
    //   184: ifeq +8 -> 192
    //   187: ldc2_w 121
    //   190: lstore 4
    //   192: aload 8
    //   194: new 124	bti
    //   197: dup
    //   198: lload 4
    //   200: invokespecial 127	bti:<init>	(J)V
    //   203: putfield 131	brz:n	Lbti;
    //   206: aload 8
    //   208: getfield 98	brz:s	Lbru;
    //   211: invokestatic 136	bsp:a	(Lbru;)V
    //   214: aload 8
    //   216: getfield 89	brz:c	Landroid/content/Context;
    //   219: invokestatic 138	bsp:a	(Landroid/content/Context;)V
    //   222: new 140	bst
    //   225: dup
    //   226: invokespecial 141	bst:<init>	()V
    //   229: invokestatic 144	bsp:a	(Lbss;)V
    //   232: new 146	bse
    //   235: dup
    //   236: aload 8
    //   238: getfield 89	brz:c	Landroid/content/Context;
    //   241: aload 8
    //   243: getfield 85	brz:w	Lbsc;
    //   246: invokespecial 147	bse:<init>	(Landroid/content/Context;Lba;)V
    //   249: invokestatic 150	bsp:a	(Lbse;)V
    //   252: aload 8
    //   254: getfield 89	brz:c	Landroid/content/Context;
    //   257: invokestatic 155	bup:a	(Landroid/content/Context;)Ljava/io/File;
    //   260: invokevirtual 161	java/io/File:exists	()Z
    //   263: ifne +14 -> 277
    //   266: aload 8
    //   268: getfield 85	brz:w	Lbsc;
    //   271: getfield 164	ba:f	Z
    //   274: ifne +172 -> 446
    //   277: aload 8
    //   279: new 166	btr
    //   282: dup
    //   283: aload 8
    //   285: getfield 85	brz:w	Lbsc;
    //   288: aload_0
    //   289: aload 8
    //   291: aload 8
    //   293: aload 8
    //   295: invokespecial 169	btr:<init>	(Lbsc;Landroid/content/Context;Lbrw;Lbrx;Lbrv;)V
    //   298: putfield 173	brz:o	Lbtr;
    //   301: aload 8
    //   303: getfield 120	brz:u	Z
    //   306: ifne +30 -> 336
    //   309: new 175	buj
    //   312: dup
    //   313: aload 8
    //   315: aload 8
    //   317: getfield 179	brz:r	Ljava/util/concurrent/ExecutorService;
    //   320: aload 8
    //   322: getfield 173	brz:o	Lbtr;
    //   325: aload 8
    //   327: getfield 183	brz:g	Lbud;
    //   330: invokespecial 186	buj:<init>	(Lbrw;Ljava/util/concurrent/ExecutorService;Lbtr;Lbud;)V
    //   333: invokestatic 189	bue:a	(Lbuj;)V
    //   336: invokestatic 195	java/lang/Thread:getDefaultUncaughtExceptionHandler	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   339: astore_0
    //   340: aload_0
    //   341: instanceof 197
    //   344: ifne +16 -> 360
    //   347: new 197	bry
    //   350: dup
    //   351: aload 8
    //   353: aload_0
    //   354: invokespecial 200	bry:<init>	(Lbrz;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   357: invokestatic 204	java/lang/Thread:setDefaultUncaughtExceptionHandler	(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    //   360: new 206	buf
    //   363: dup
    //   364: aload 8
    //   366: getfield 173	brz:o	Lbtr;
    //   369: invokespecial 209	buf:<init>	(Ljava/lang/Runnable;)V
    //   372: invokevirtual 212	buf:start	()V
    //   375: aload 8
    //   377: iconst_1
    //   378: putfield 64	brz:b	Z
    //   381: invokestatic 70	java/lang/System:nanoTime	()J
    //   384: lload 6
    //   386: lsub
    //   387: ldc2_w 213
    //   390: ldiv
    //   391: lstore 4
    //   393: new 216	java/lang/StringBuilder
    //   396: dup
    //   397: ldc -38
    //   399: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   402: lload 4
    //   404: invokevirtual 223	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   407: ldc -31
    //   409: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: pop
    //   413: invokestatic 230	bue:b	()V
    //   416: goto -401 -> 15
    //   419: astore_0
    //   420: new 216	java/lang/StringBuilder
    //   423: dup
    //   424: ldc -24
    //   426: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   429: aload_0
    //   430: invokevirtual 236	java/lang/Object:getClass	()Ljava/lang/Class;
    //   433: invokevirtual 239	java/lang/Class:getName	()Ljava/lang/String;
    //   436: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: pop
    //   440: invokestatic 230	bue:b	()V
    //   443: goto -428 -> 15
    //   446: aload 8
    //   448: getfield 243	brz:x	Lbum;
    //   451: aload 8
    //   453: getfield 85	brz:w	Lbsc;
    //   456: invokevirtual 246	bsc:a	()Ljava/util/List;
    //   459: invokevirtual 251	bum:a	(Ljava/util/List;)V
    //   462: aload 8
    //   464: getfield 243	brz:x	Lbum;
    //   467: new 253	java/util/LinkedList
    //   470: dup
    //   471: aload 8
    //   473: getfield 85	brz:w	Lbsc;
    //   476: getfield 256	ba:h	Ljava/util/List;
    //   479: invokespecial 259	java/util/LinkedList:<init>	(Ljava/util/Collection;)V
    //   482: invokevirtual 261	bum:b	(Ljava/util/List;)V
    //   485: new 263	btx
    //   488: dup
    //   489: aload 8
    //   491: getfield 89	brz:c	Landroid/content/Context;
    //   494: invokespecial 264	btx:<init>	(Landroid/content/Context;)V
    //   497: astore_1
    //   498: new 266	buq
    //   501: dup
    //   502: aload 8
    //   504: getfield 243	brz:x	Lbum;
    //   507: aload_1
    //   508: invokespecial 269	buq:<init>	(Lbum;Lbtx;)V
    //   511: astore_1
    //   512: aload 8
    //   514: new 271	buo
    //   517: dup
    //   518: aload 8
    //   520: new 273	java/net/URL
    //   523: dup
    //   524: new 216	java/lang/StringBuilder
    //   527: dup
    //   528: invokespecial 274	java/lang/StringBuilder:<init>	()V
    //   531: aload 8
    //   533: getfield 85	brz:w	Lbsc;
    //   536: getfield 277	bsc:j	Ljava/lang/String;
    //   539: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   542: ldc_w 279
    //   545: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   548: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   551: invokespecial 283	java/net/URL:<init>	(Ljava/lang/String;)V
    //   554: invokespecial 286	buo:<init>	(Lbrv;Ljava/net/URL;)V
    //   557: putfield 290	brz:p	Lbuo;
    //   560: aload 8
    //   562: getfield 243	brz:x	Lbum;
    //   565: aload 8
    //   567: getfield 290	brz:p	Lbuo;
    //   570: invokevirtual 293	bum:a	(Lbun;)V
    //   573: aload 8
    //   575: getfield 243	brz:x	Lbum;
    //   578: aload 8
    //   580: invokevirtual 293	bum:a	(Lbun;)V
    //   583: new 206	buf
    //   586: dup
    //   587: aload 8
    //   589: getfield 290	brz:p	Lbuo;
    //   592: ldc_w 295
    //   595: invokespecial 298	buf:<init>	(Ljava/lang/Runnable;Ljava/lang/String;)V
    //   598: invokevirtual 299	java/lang/Thread:start	()V
    //   601: aload 8
    //   603: aload_1
    //   604: invokevirtual 301	buq:a	()Z
    //   607: putfield 303	brz:t	Z
    //   610: new 216	java/lang/StringBuilder
    //   613: dup
    //   614: ldc_w 305
    //   617: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   620: aload 8
    //   622: getfield 303	brz:t	Z
    //   625: invokevirtual 308	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   628: pop
    //   629: invokestatic 230	bue:b	()V
    //   632: goto -355 -> 277
    //   635: astore_1
    //   636: new 216	java/lang/StringBuilder
    //   639: dup
    //   640: ldc_w 310
    //   643: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   646: aload_1
    //   647: invokevirtual 236	java/lang/Object:getClass	()Ljava/lang/Class;
    //   650: invokevirtual 239	java/lang/Class:getName	()Ljava/lang/String;
    //   653: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   656: pop
    //   657: invokestatic 230	bue:b	()V
    //   660: invokestatic 312	bue:c	()V
    //   663: goto -53 -> 610
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	666	0	paramContext	Context
    //   0	666	1	paramString	String
    //   0	666	2	paramba	ba
    //   82	2	3	bool	boolean
    //   177	226	4	l1	long
    //   90	295	6	l2	long
    //   95	526	8	localbrz	brz
    // Exception table:
    //   from	to	target	type
    //   7	15	34	java/lang/ThreadDeath
    //   23	31	34	java/lang/ThreadDeath
    //   43	65	34	java/lang/ThreadDeath
    //   76	83	34	java/lang/ThreadDeath
    //   87	174	34	java/lang/ThreadDeath
    //   179	187	34	java/lang/ThreadDeath
    //   192	277	34	java/lang/ThreadDeath
    //   277	336	34	java/lang/ThreadDeath
    //   336	360	34	java/lang/ThreadDeath
    //   360	416	34	java/lang/ThreadDeath
    //   420	443	34	java/lang/ThreadDeath
    //   446	610	34	java/lang/ThreadDeath
    //   610	632	34	java/lang/ThreadDeath
    //   636	663	34	java/lang/ThreadDeath
    //   7	15	37	finally
    //   23	31	37	finally
    //   35	37	37	finally
    //   43	65	37	finally
    //   69	73	37	finally
    //   76	83	37	finally
    //   87	174	37	finally
    //   179	187	37	finally
    //   192	277	37	finally
    //   277	336	37	finally
    //   336	360	37	finally
    //   360	416	37	finally
    //   420	443	37	finally
    //   446	610	37	finally
    //   610	632	37	finally
    //   636	663	37	finally
    //   7	15	68	java/lang/Throwable
    //   23	31	68	java/lang/Throwable
    //   43	65	68	java/lang/Throwable
    //   76	83	68	java/lang/Throwable
    //   87	174	68	java/lang/Throwable
    //   179	187	68	java/lang/Throwable
    //   192	277	68	java/lang/Throwable
    //   277	336	68	java/lang/Throwable
    //   336	360	68	java/lang/Throwable
    //   360	416	68	java/lang/Throwable
    //   420	443	68	java/lang/Throwable
    //   446	610	68	java/lang/Throwable
    //   610	632	68	java/lang/Throwable
    //   636	663	68	java/lang/Throwable
    //   87	174	419	java/lang/Exception
    //   179	187	419	java/lang/Exception
    //   192	277	419	java/lang/Exception
    //   277	336	419	java/lang/Exception
    //   336	360	419	java/lang/Exception
    //   360	416	419	java/lang/Exception
    //   610	632	419	java/lang/Exception
    //   636	663	419	java/lang/Exception
    //   446	610	635	java/lang/Exception
  }
  
  public static void a(String paramString)
  {
    try
    {
      if (!tb)
      {
        c("leaveBreadcrumb");
        return;
      }
      if (paramString == null)
      {
        new NullPointerException();
        bue.h();
        return;
      }
    }
    catch (ThreadDeath paramString)
    {
      throw paramString;
      brz localbrz = brz.t();
      brz.4 local4 = new brz.4(localbrz, new bsv(paramString));
      if (!o.a(local4))
      {
        new StringBuilder("SENDING ").append(paramString).append(" TO EXECUTOR");
        bue.b();
        r.execute(local4);
        return;
      }
    }
    catch (Throwable paramString)
    {
      bue.a(paramString);
    }
  }
  
  public static void a(Throwable paramThrowable)
  {
    try
    {
      if (!tb)
      {
        c("logHandledException");
        return;
      }
      if (!tg.c())
      {
        brz.t().b(paramThrowable);
        return;
      }
    }
    catch (ThreadDeath paramThrowable)
    {
      throw paramThrowable;
    }
    catch (Throwable paramThrowable)
    {
      bue.a(paramThrowable);
    }
  }
  
  private static void b(String paramString)
  {
    new NullPointerException(paramString + " was null");
    bue.h();
  }
  
  private static void c(String paramString)
  {
    new StringBuilder("Must initialize Crittercism before calling ").append(az.class.getName()).append(".").append(paramString).append("().  Request is being ignored...");
    new IllegalStateException();
    bue.h();
  }
}

/* Location:
 * Qualified Name:     az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */