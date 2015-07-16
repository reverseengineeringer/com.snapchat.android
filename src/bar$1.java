import java.io.File;

public final class bar$1
  implements Runnable
{
  public bar$1(bar parambar, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, File paramFile, File[] paramArrayOfFile, String paramString6) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: new 50	java/lang/StringBuilder
    //   3: dup
    //   4: new 50	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 51	java/lang/StringBuilder:<init>	()V
    //   11: invokestatic 57	akr:l	()Ljava/lang/String;
    //   14: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: ldc 63
    //   19: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokestatic 66	akr:G	()Ljava/lang/String;
    //   25: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc 68
    //   30: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_0
    //   34: getfield 27	bar$1:val$otherEmailToSendTo	Ljava/lang/String;
    //   37: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: ldc 63
    //   42: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload_0
    //   46: getfield 29	bar$1:val$projectName	Ljava/lang/String;
    //   49: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 63
    //   54: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: astore_3
    //   64: aload_3
    //   65: aload_0
    //   66: getfield 31	bar$1:val$deviceInfo	Ljava/lang/String;
    //   69: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc 76
    //   74: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: aload_0
    //   78: getfield 33	bar$1:val$bugDescription	Ljava/lang/String;
    //   81: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 78
    //   86: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_0
    //   90: getfield 35	bar$1:val$stepsToRepro	Ljava/lang/String;
    //   93: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: ldc 80
    //   98: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: invokestatic 86	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   105: astore_1
    //   106: aload_1
    //   107: invokestatic 90	bar:a	(Landroid/content/Context;)I
    //   110: invokestatic 93	bar:a	(I)Ljava/lang/String;
    //   113: astore 4
    //   115: aconst_null
    //   116: astore_2
    //   117: aload_1
    //   118: aload 4
    //   120: iconst_0
    //   121: invokevirtual 97	com/snapchat/android/SnapchatApplication:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   124: astore_1
    //   125: aload_1
    //   126: astore_2
    //   127: aload_1
    //   128: aload_3
    //   129: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokevirtual 103	java/lang/String:getBytes	()[B
    //   135: invokevirtual 109	java/io/FileOutputStream:write	([B)V
    //   138: aload_1
    //   139: astore_2
    //   140: aload_1
    //   141: invokevirtual 112	java/io/FileOutputStream:flush	()V
    //   144: aload_1
    //   145: invokestatic 117	bgo:a	(Ljava/io/Closeable;)V
    //   148: aload_0
    //   149: getfield 25	bar$1:this$0	Lbar;
    //   152: aload_0
    //   153: getfield 37	bar$1:val$imageFile	Ljava/io/File;
    //   156: aload_3
    //   157: aload_0
    //   158: getfield 39	bar$1:val$logFiles	[Ljava/io/File;
    //   161: aload_0
    //   162: getfield 41	bar$1:val$remoteChatRecipient	Ljava/lang/String;
    //   165: aload 4
    //   167: invokevirtual 120	bar:a	(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    //   170: return
    //   171: astore_1
    //   172: aload_2
    //   173: invokestatic 117	bgo:a	(Ljava/io/Closeable;)V
    //   176: goto -28 -> 148
    //   179: astore_1
    //   180: aconst_null
    //   181: astore_3
    //   182: aload_1
    //   183: astore_2
    //   184: aload_3
    //   185: invokestatic 117	bgo:a	(Ljava/io/Closeable;)V
    //   188: aload_2
    //   189: athrow
    //   190: astore_2
    //   191: aload_1
    //   192: astore_3
    //   193: goto -9 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	1
    //   105	40	1	localObject1	Object
    //   171	1	1	localIOException	java.io.IOException
    //   179	13	1	localObject2	Object
    //   116	73	2	localObject3	Object
    //   190	1	2	localObject4	Object
    //   63	130	3	localObject5	Object
    //   113	53	4	str	String
    // Exception table:
    //   from	to	target	type
    //   117	125	171	java/io/IOException
    //   127	138	171	java/io/IOException
    //   140	144	171	java/io/IOException
    //   117	125	179	finally
    //   127	138	190	finally
    //   140	144	190	finally
  }
}

/* Location:
 * Qualified Name:     bar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */