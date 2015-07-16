package com.snapchat.android;

final class SnapchatApplication$1
  implements Runnable
{
  SnapchatApplication$1(SnapchatApplication paramSnapchatApplication) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: invokestatic 27	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   6: ldc 29
    //   8: invokevirtual 33	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   11: aload_0
    //   12: getfield 14	com/snapchat/android/SnapchatApplication$1:a	Lcom/snapchat/android/SnapchatApplication;
    //   15: getfield 37	com/snapchat/android/SnapchatApplication:f	Laze;
    //   18: astore 8
    //   20: aload 8
    //   22: getfield 43	aze:mShouldRunTasksInBackground	Z
    //   25: ifeq +6 -> 31
    //   28: invokestatic 48	bhp:b	()V
    //   31: invokestatic 51	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   34: astore_3
    //   35: aload 8
    //   37: iconst_1
    //   38: putfield 54	aze:mBackingFileIsEmpty	Z
    //   41: aload_3
    //   42: invokevirtual 60	android/content/Context:getCacheDir	()Ljava/io/File;
    //   45: astore 5
    //   47: aload 5
    //   49: ifnonnull +12 -> 61
    //   52: aload 8
    //   54: getfield 64	aze:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
    //   57: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
    //   60: return
    //   61: aload 8
    //   63: aload 5
    //   65: ldc 71
    //   67: invokevirtual 74	aze:a	(Ljava/io/File;Ljava/lang/String;)Z
    //   70: istore_1
    //   71: new 76	java/io/File
    //   74: dup
    //   75: new 78	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   82: aload 5
    //   84: invokevirtual 83	java/io/File:getPath	()Ljava/lang/String;
    //   87: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: ldc 89
    //   92: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   98: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   101: astore 9
    //   103: aload 9
    //   105: invokevirtual 98	java/io/File:exists	()Z
    //   108: istore_2
    //   109: iload_2
    //   110: ifne +50 -> 160
    //   113: aload 8
    //   115: getfield 64	aze:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
    //   118: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
    //   121: return
    //   122: astore_3
    //   123: invokestatic 103	com/snapchat/android/util/debug/ReleaseManager:e	()Z
    //   126: ifeq +25 -> 151
    //   129: new 105	java/lang/RuntimeException
    //   132: dup
    //   133: ldc 107
    //   135: aload_3
    //   136: invokespecial 110	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   139: athrow
    //   140: astore_3
    //   141: aload 8
    //   143: getfield 64	aze:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
    //   146: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
    //   149: aload_3
    //   150: athrow
    //   151: aload 8
    //   153: getfield 64	aze:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
    //   156: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
    //   159: return
    //   160: new 112	java/io/FileInputStream
    //   163: dup
    //   164: aload 9
    //   166: invokespecial 115	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   169: astore 5
    //   171: ldc 117
    //   173: invokestatic 123	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   176: astore 4
    //   178: aload 4
    //   180: iconst_2
    //   181: aload_3
    //   182: invokestatic 126	aze:a	(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    //   185: invokevirtual 130	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   188: new 132	javax/crypto/CipherInputStream
    //   191: dup
    //   192: aload 5
    //   194: aload 4
    //   196: invokespecial 135	javax/crypto/CipherInputStream:<init>	(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    //   199: astore 6
    //   201: new 137	java/lang/String
    //   204: dup
    //   205: aload 6
    //   207: invokestatic 143	org/apache/commons/io/IOUtils:toByteArray	(Ljava/io/InputStream;)[B
    //   210: ldc -111
    //   212: invokestatic 151	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   215: invokespecial 154	java/lang/String:<init>	([BLjava/nio/charset/Charset;)V
    //   218: astore_3
    //   219: new 156	aze$1
    //   222: dup
    //   223: aload 8
    //   225: invokespecial 159	aze$1:<init>	(Laze;)V
    //   228: invokevirtual 163	aze$1:getType	()Ljava/lang/reflect/Type;
    //   231: astore 4
    //   233: invokestatic 168	aul:a	()Lcom/google/gson/Gson;
    //   236: aload_3
    //   237: aload 4
    //   239: invokevirtual 174	com/google/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   242: checkcast 176	java/util/HashMap
    //   245: astore 4
    //   247: aload 4
    //   249: ifnull +223 -> 472
    //   252: aload 4
    //   254: invokevirtual 179	java/util/HashMap:isEmpty	()Z
    //   257: ifne +215 -> 472
    //   260: aload 8
    //   262: getfield 183	aze:mMap	Ljava/util/HashMap;
    //   265: astore_3
    //   266: aload_3
    //   267: monitorenter
    //   268: aload 8
    //   270: getfield 183	aze:mMap	Ljava/util/HashMap;
    //   273: aload 4
    //   275: invokevirtual 187	java/util/HashMap:putAll	(Ljava/util/Map;)V
    //   278: aload_3
    //   279: monitorexit
    //   280: aload 8
    //   282: iconst_0
    //   283: putfield 54	aze:mBackingFileIsEmpty	Z
    //   286: goto +186 -> 472
    //   289: aload 8
    //   291: iload_1
    //   292: putfield 190	aze:mBackingFileIsUpToDate	Z
    //   295: aload 6
    //   297: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   300: aload 5
    //   302: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   305: aload 8
    //   307: getfield 64	aze:mInitializationCountDownLatch	Ljava/util/concurrent/CountDownLatch;
    //   310: invokevirtual 69	java/util/concurrent/CountDownLatch:countDown	()V
    //   313: return
    //   314: astore 4
    //   316: aload_3
    //   317: monitorexit
    //   318: aload 4
    //   320: athrow
    //   321: astore 7
    //   323: aload 5
    //   325: astore 4
    //   327: aload 6
    //   329: astore_3
    //   330: aload 7
    //   332: astore 5
    //   334: aload 5
    //   336: instanceof 197
    //   339: ifne +13 -> 352
    //   342: aload 5
    //   344: instanceof 199
    //   347: istore_1
    //   348: iload_1
    //   349: ifeq +15 -> 364
    //   352: aload 9
    //   354: invokevirtual 202	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   357: pop
    //   358: aload 9
    //   360: invokevirtual 205	java/io/File:delete	()Z
    //   363: pop
    //   364: aload_3
    //   365: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   368: aload 4
    //   370: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   373: goto -68 -> 305
    //   376: iconst_0
    //   377: istore_1
    //   378: goto -89 -> 289
    //   381: astore 5
    //   383: new 78	java/lang/StringBuilder
    //   386: dup
    //   387: ldc -49
    //   389: invokespecial 208	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   392: aload 5
    //   394: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   397: pop
    //   398: goto -34 -> 364
    //   401: astore 6
    //   403: aload 4
    //   405: astore 5
    //   407: aload_3
    //   408: astore 4
    //   410: aload 6
    //   412: astore_3
    //   413: aload 4
    //   415: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   418: aload 5
    //   420: invokestatic 195	bgo:a	(Ljava/io/Closeable;)V
    //   423: aload_3
    //   424: athrow
    //   425: astore_3
    //   426: aconst_null
    //   427: astore 4
    //   429: aconst_null
    //   430: astore 5
    //   432: goto -19 -> 413
    //   435: astore_3
    //   436: aconst_null
    //   437: astore 4
    //   439: goto -26 -> 413
    //   442: astore_3
    //   443: aload 6
    //   445: astore 4
    //   447: goto -34 -> 413
    //   450: astore 5
    //   452: aconst_null
    //   453: astore_3
    //   454: goto -120 -> 334
    //   457: astore 6
    //   459: aconst_null
    //   460: astore_3
    //   461: aload 5
    //   463: astore 4
    //   465: aload 6
    //   467: astore 5
    //   469: goto -135 -> 334
    //   472: iload_1
    //   473: ifne -97 -> 376
    //   476: iconst_1
    //   477: istore_1
    //   478: goto -189 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	481	0	this	1
    //   70	408	1	bool1	boolean
    //   108	2	2	bool2	boolean
    //   34	8	3	localSnapchatApplication	SnapchatApplication
    //   122	14	3	localException1	Exception
    //   140	42	3	localContext	android.content.Context
    //   425	1	3	localObject2	Object
    //   435	1	3	localObject3	Object
    //   442	1	3	localObject4	Object
    //   453	8	3	localObject5	Object
    //   1	273	4	localObject6	Object
    //   314	5	4	localObject7	Object
    //   325	139	4	localObject8	Object
    //   45	298	5	localObject9	Object
    //   381	12	5	localException2	Exception
    //   405	26	5	localObject10	Object
    //   450	12	5	localException3	Exception
    //   467	1	5	localObject11	Object
    //   199	129	6	localCipherInputStream	javax.crypto.CipherInputStream
    //   401	43	6	localObject12	Object
    //   457	9	6	localException4	Exception
    //   321	10	7	localException5	Exception
    //   18	288	8	localaze	aze
    //   101	258	9	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   41	47	122	java/lang/Exception
    //   61	109	122	java/lang/Exception
    //   41	47	140	finally
    //   61	109	140	finally
    //   123	140	140	finally
    //   295	305	140	finally
    //   364	373	140	finally
    //   413	425	140	finally
    //   268	280	314	finally
    //   316	318	314	finally
    //   201	247	321	java/lang/Exception
    //   252	268	321	java/lang/Exception
    //   280	286	321	java/lang/Exception
    //   289	295	321	java/lang/Exception
    //   318	321	321	java/lang/Exception
    //   352	364	381	java/lang/Exception
    //   334	348	401	finally
    //   352	364	401	finally
    //   383	398	401	finally
    //   160	171	425	finally
    //   171	201	435	finally
    //   201	247	442	finally
    //   252	268	442	finally
    //   280	286	442	finally
    //   289	295	442	finally
    //   318	321	442	finally
    //   160	171	450	java/lang/Exception
    //   171	201	457	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatApplication.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */