public final class bar$3
  implements Runnable
{
  public bar$3(bar parambar) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: invokestatic 25	bar:a	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: invokevirtual 31	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   9: ifeq +4 -> 13
    //   12: return
    //   13: invokestatic 25	bar:a	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   16: iconst_1
    //   17: invokevirtual 35	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   20: invokestatic 41	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   23: astore 6
    //   25: new 43	java/util/ArrayList
    //   28: dup
    //   29: aload 6
    //   31: invokevirtual 47	com/snapchat/android/SnapchatApplication:fileList	()[Ljava/lang/String;
    //   34: invokestatic 53	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   37: invokespecial 56	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   40: astore 7
    //   42: iconst_0
    //   43: istore_1
    //   44: iload_1
    //   45: bipush 10
    //   47: if_icmpge +189 -> 236
    //   50: aload 7
    //   52: iload_1
    //   53: invokestatic 59	bar:a	(I)Ljava/lang/String;
    //   56: invokeinterface 65 2 0
    //   61: ifeq +168 -> 229
    //   64: new 67	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   71: astore 8
    //   73: aload 6
    //   75: iload_1
    //   76: invokestatic 59	bar:a	(I)Ljava/lang/String;
    //   79: invokevirtual 72	com/snapchat/android/SnapchatApplication:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   82: astore_3
    //   83: new 74	java/util/Scanner
    //   86: dup
    //   87: aload_3
    //   88: invokespecial 77	java/util/Scanner:<init>	(Ljava/io/InputStream;)V
    //   91: astore 4
    //   93: aload 4
    //   95: invokevirtual 80	java/util/Scanner:hasNextLine	()Z
    //   98: ifeq +86 -> 184
    //   101: aload 8
    //   103: aload 4
    //   105: invokevirtual 84	java/util/Scanner:nextLine	()Ljava/lang/String;
    //   108: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: ldc 90
    //   113: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: goto -24 -> 93
    //   120: astore 9
    //   122: aload 4
    //   124: invokestatic 95	bgo:a	(Ljava/util/Scanner;)V
    //   127: aload_3
    //   128: invokestatic 98	bgo:a	(Ljava/io/Closeable;)V
    //   131: aload 6
    //   133: iload_1
    //   134: invokestatic 101	baf:a	(I)Ljava/lang/String;
    //   137: invokevirtual 105	com/snapchat/android/SnapchatApplication:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   140: astore_3
    //   141: getstatic 111	baj:LOG_FILE_PREFIXES	[Ljava/lang/String;
    //   144: arraylength
    //   145: anewarray 113	java/io/File
    //   148: astore 4
    //   150: iconst_0
    //   151: istore_2
    //   152: iload_2
    //   153: aload 4
    //   155: arraylength
    //   156: if_icmpge +56 -> 212
    //   159: aload 4
    //   161: iload_2
    //   162: aload 6
    //   164: getstatic 111	baj:LOG_FILE_PREFIXES	[Ljava/lang/String;
    //   167: iload_2
    //   168: aaload
    //   169: iload_1
    //   170: invokestatic 116	baj:a	(Ljava/lang/String;I)Ljava/lang/String;
    //   173: invokevirtual 105	com/snapchat/android/SnapchatApplication:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   176: aastore
    //   177: iload_2
    //   178: iconst_1
    //   179: iadd
    //   180: istore_2
    //   181: goto -29 -> 152
    //   184: aload 4
    //   186: invokestatic 95	bgo:a	(Ljava/util/Scanner;)V
    //   189: aload_3
    //   190: invokestatic 98	bgo:a	(Ljava/io/Closeable;)V
    //   193: goto -62 -> 131
    //   196: astore_3
    //   197: aconst_null
    //   198: astore 4
    //   200: aload 4
    //   202: invokestatic 95	bgo:a	(Ljava/util/Scanner;)V
    //   205: aload 5
    //   207: invokestatic 98	bgo:a	(Ljava/io/Closeable;)V
    //   210: aload_3
    //   211: athrow
    //   212: aload_0
    //   213: getfield 14	bar$3:this$0	Lbar;
    //   216: aload_3
    //   217: aload 8
    //   219: aload 4
    //   221: aconst_null
    //   222: iload_1
    //   223: invokestatic 59	bar:a	(I)Ljava/lang/String;
    //   226: invokevirtual 119	bar:a	(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    //   229: iload_1
    //   230: iconst_1
    //   231: iadd
    //   232: istore_1
    //   233: goto -189 -> 44
    //   236: invokestatic 25	bar:a	()Ljava/util/concurrent/atomic/AtomicBoolean;
    //   239: iconst_0
    //   240: invokevirtual 35	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   243: return
    //   244: astore 6
    //   246: aconst_null
    //   247: astore 4
    //   249: aload_3
    //   250: astore 5
    //   252: aload 6
    //   254: astore_3
    //   255: goto -55 -> 200
    //   258: astore 6
    //   260: aload_3
    //   261: astore 5
    //   263: aload 6
    //   265: astore_3
    //   266: goto -66 -> 200
    //   269: astore_3
    //   270: aconst_null
    //   271: astore_3
    //   272: aconst_null
    //   273: astore 4
    //   275: goto -153 -> 122
    //   278: astore 4
    //   280: aconst_null
    //   281: astore 4
    //   283: goto -161 -> 122
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	286	0	this	3
    //   43	190	1	i	int
    //   151	30	2	j	int
    //   82	108	3	localObject1	Object
    //   196	54	3	localFile	java.io.File
    //   254	12	3	localObject2	Object
    //   269	1	3	localFileNotFoundException1	java.io.FileNotFoundException
    //   271	1	3	localObject3	Object
    //   91	183	4	localObject4	Object
    //   278	1	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   281	1	4	localObject5	Object
    //   1	261	5	localObject6	Object
    //   23	140	6	localSnapchatApplication	com.snapchat.android.SnapchatApplication
    //   244	9	6	localObject7	Object
    //   258	6	6	localObject8	Object
    //   40	11	7	localArrayList	java.util.ArrayList
    //   71	147	8	localStringBuilder	StringBuilder
    //   120	1	9	localFileNotFoundException3	java.io.FileNotFoundException
    // Exception table:
    //   from	to	target	type
    //   93	117	120	java/io/FileNotFoundException
    //   73	83	196	finally
    //   83	93	244	finally
    //   93	117	258	finally
    //   73	83	269	java/io/FileNotFoundException
    //   83	93	278	java/io/FileNotFoundException
  }
}

/* Location:
 * Qualified Name:     bar.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */