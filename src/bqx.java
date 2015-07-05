public final class bqx
  implements Thread.UncaughtExceptionHandler
{
  private Thread.UncaughtExceptionHandler a;
  private final bqy b;
  
  public bqx(bqy parambqy, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    b = parambqy;
    a = paramUncaughtExceptionHandler;
  }
  
  /* Error */
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	bqx:b	Lbqy;
    //   4: astore_1
    //   5: aload_1
    //   6: getfield 32	bqy:o	Lbsq;
    //   9: ifnonnull +37 -> 46
    //   12: invokestatic 37	btd:e	()V
    //   15: aload_0
    //   16: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   19: ifnull +26 -> 45
    //   22: aload_0
    //   23: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   26: instanceof 2
    //   29: ifne +16 -> 45
    //   32: aload_0
    //   33: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   36: invokestatic 43	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   39: aload_2
    //   40: invokeinterface 45 3 0
    //   45: return
    //   46: aload_1
    //   47: getfield 32	bqy:o	Lbsq;
    //   50: getfield 50	bsq:a	Landroid/os/ConditionVariable;
    //   53: invokevirtual 55	android/os/ConditionVariable:block	()V
    //   56: aload_1
    //   57: getfield 59	bqy:c	Landroid/content/Context;
    //   60: iconst_1
    //   61: invokestatic 64	bsv:a	(Landroid/content/Context;Z)V
    //   64: aload_1
    //   65: getfield 68	bqy:g	Lbtc;
    //   68: invokevirtual 73	btc:c	()Z
    //   71: ifne -56 -> 15
    //   74: aload_1
    //   75: getfield 77	bqy:u	Z
    //   78: ifeq +127 -> 205
    //   81: new 79	bre
    //   84: dup
    //   85: aload_2
    //   86: invokestatic 43	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   89: invokevirtual 83	java/lang/Thread:getId	()J
    //   92: invokespecial 86	bre:<init>	(Ljava/lang/Throwable;J)V
    //   95: astore_3
    //   96: new 88	org/json/JSONArray
    //   99: dup
    //   100: invokespecial 89	org/json/JSONArray:<init>	()V
    //   103: aload_3
    //   104: invokevirtual 92	bre:a	()Lorg/json/JSONObject;
    //   107: invokevirtual 96	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   110: astore_3
    //   111: new 98	bsu
    //   114: dup
    //   115: new 100	bsg
    //   118: dup
    //   119: aload_1
    //   120: invokespecial 103	bsg:<init>	(Lbqu;)V
    //   123: getstatic 108	brj:e	Lbrj;
    //   126: getfield 111	brj:o	Ljava/lang/String;
    //   129: aload_3
    //   130: invokevirtual 114	bsg:a	(Ljava/lang/String;Lorg/json/JSONArray;)Lbsg;
    //   133: new 116	bsm
    //   136: dup
    //   137: new 118	bsl
    //   140: dup
    //   141: aload_1
    //   142: getfield 122	bqy:w	Lbrb;
    //   145: getfield 127	brb:i	Ljava/lang/String;
    //   148: ldc -127
    //   150: invokespecial 132	bsl:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: invokevirtual 135	bsl:a	()Ljava/net/URL;
    //   156: invokespecial 138	bsm:<init>	(Ljava/net/URL;)V
    //   159: aconst_null
    //   160: invokespecial 141	bsu:<init>	(Lbsg;Lbsm;Lbsi;)V
    //   163: invokevirtual 144	bsu:run	()V
    //   166: goto -151 -> 15
    //   169: astore_1
    //   170: aload_1
    //   171: athrow
    //   172: astore_1
    //   173: aload_0
    //   174: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   177: ifnull +26 -> 203
    //   180: aload_0
    //   181: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   184: instanceof 2
    //   187: ifne +16 -> 203
    //   190: aload_0
    //   191: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   194: invokestatic 43	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   197: aload_2
    //   198: invokeinterface 45 3 0
    //   203: aload_1
    //   204: athrow
    //   205: aload_1
    //   206: aload_2
    //   207: invokevirtual 147	bqy:a	(Ljava/lang/Throwable;)V
    //   210: goto -195 -> 15
    //   213: astore_1
    //   214: invokestatic 150	btd:f	()V
    //   217: aload_0
    //   218: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   221: ifnull -176 -> 45
    //   224: aload_0
    //   225: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   228: instanceof 2
    //   231: ifne -186 -> 45
    //   234: aload_0
    //   235: getfield 19	bqx:a	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   238: invokestatic 43	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   241: aload_2
    //   242: invokeinterface 45 3 0
    //   247: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	248	0	this	bqx
    //   0	248	1	paramThread	Thread
    //   0	248	2	paramThrowable	Throwable
    //   95	35	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	15	169	java/lang/ThreadDeath
    //   46	166	169	java/lang/ThreadDeath
    //   205	210	169	java/lang/ThreadDeath
    //   0	15	172	finally
    //   46	166	172	finally
    //   170	172	172	finally
    //   205	210	172	finally
    //   214	217	172	finally
    //   0	15	213	java/lang/Throwable
    //   46	166	213	java/lang/Throwable
    //   205	210	213	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     bqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */