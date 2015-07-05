import com.google.gson.Gson;

public final class acr
{
  private final Gson a;
  
  public acr()
  {
    this(new Gson());
  }
  
  private acr(Gson paramGson)
  {
    a = paramGson;
  }
  
  /* Error */
  public final bkx a(String paramString)
  {
    // Byte code:
    //   0: new 30	java/io/File
    //   3: dup
    //   4: new 32	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   11: aload_1
    //   12: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: ldc 39
    //   17: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 43	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokespecial 46	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: astore 4
    //   28: aload 4
    //   30: invokevirtual 50	java/io/File:exists	()Z
    //   33: ifne +21 -> 54
    //   36: ldc 52
    //   38: ldc 54
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: aload 4
    //   48: aastore
    //   49: invokestatic 60	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   52: aconst_null
    //   53: areturn
    //   54: new 62	java/io/FileInputStream
    //   57: dup
    //   58: aload 4
    //   60: invokespecial 65	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   63: astore_2
    //   64: aload_2
    //   65: astore_3
    //   66: aload_0
    //   67: getfield 19	acr:a	Lcom/google/gson/Gson;
    //   70: new 67	java/io/InputStreamReader
    //   73: dup
    //   74: aload_2
    //   75: invokespecial 70	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   78: ldc 72
    //   80: invokevirtual 76	com/google/gson/Gson:fromJson	(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    //   83: checkcast 72	bkx
    //   86: astore_1
    //   87: aload_2
    //   88: invokestatic 81	bfo:a	(Ljava/io/Closeable;)V
    //   91: aload_1
    //   92: areturn
    //   93: astore_1
    //   94: aconst_null
    //   95: astore_2
    //   96: aload_2
    //   97: astore_3
    //   98: ldc 52
    //   100: aload_1
    //   101: invokestatic 84	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   104: aload_2
    //   105: astore_3
    //   106: ldc 52
    //   108: ldc 86
    //   110: iconst_1
    //   111: anewarray 4	java/lang/Object
    //   114: dup
    //   115: iconst_0
    //   116: aload 4
    //   118: aastore
    //   119: invokestatic 60	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   122: aload_2
    //   123: invokestatic 81	bfo:a	(Ljava/io/Closeable;)V
    //   126: aconst_null
    //   127: astore_1
    //   128: goto -37 -> 91
    //   131: astore_1
    //   132: aconst_null
    //   133: astore_3
    //   134: aload_3
    //   135: invokestatic 81	bfo:a	(Ljava/io/Closeable;)V
    //   138: aload_1
    //   139: athrow
    //   140: astore_1
    //   141: goto -7 -> 134
    //   144: astore_1
    //   145: goto -49 -> 96
    //   148: astore_1
    //   149: aconst_null
    //   150: astore_2
    //   151: goto -55 -> 96
    //   154: astore_1
    //   155: goto -59 -> 96
    //   158: astore_1
    //   159: aconst_null
    //   160: astore_2
    //   161: goto -65 -> 96
    //   164: astore_1
    //   165: goto -69 -> 96
    //   168: astore_1
    //   169: aconst_null
    //   170: astore_2
    //   171: goto -75 -> 96
    //   174: astore_1
    //   175: goto -79 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	acr
    //   0	178	1	paramString	String
    //   63	108	2	localFileInputStream1	java.io.FileInputStream
    //   65	70	3	localFileInputStream2	java.io.FileInputStream
    //   26	91	4	localFile	java.io.File
    // Exception table:
    //   from	to	target	type
    //   54	64	93	com/google/gson/JsonSyntaxException
    //   54	64	131	finally
    //   66	87	140	finally
    //   98	104	140	finally
    //   106	122	140	finally
    //   66	87	144	com/google/gson/JsonSyntaxException
    //   54	64	148	java/io/IOException
    //   66	87	154	java/io/IOException
    //   54	64	158	java/lang/AssertionError
    //   66	87	164	java/lang/AssertionError
    //   54	64	168	com/google/gson/JsonIOException
    //   66	87	174	com/google/gson/JsonIOException
  }
}

/* Location:
 * Qualified Name:     acr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */