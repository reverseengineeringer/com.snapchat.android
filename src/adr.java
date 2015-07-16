import com.google.gson.Gson;

public final class adr
{
  private final Gson a;
  
  public adr()
  {
    this(new Gson());
  }
  
  private adr(Gson paramGson)
  {
    a = paramGson;
  }
  
  /* Error */
  public final bly a(String paramString)
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
    //   26: astore_1
    //   27: aload_1
    //   28: invokevirtual 50	java/io/File:exists	()Z
    //   31: ifne +5 -> 36
    //   34: aconst_null
    //   35: areturn
    //   36: new 52	java/io/FileInputStream
    //   39: dup
    //   40: aload_1
    //   41: invokespecial 55	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   44: astore_1
    //   45: aload_1
    //   46: astore_2
    //   47: aload_0
    //   48: getfield 19	adr:a	Lcom/google/gson/Gson;
    //   51: new 57	java/io/InputStreamReader
    //   54: dup
    //   55: aload_1
    //   56: invokespecial 60	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   59: ldc 62
    //   61: invokevirtual 66	com/google/gson/Gson:fromJson	(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    //   64: checkcast 62	bly
    //   67: astore_3
    //   68: aload_1
    //   69: invokestatic 71	bgo:a	(Ljava/io/Closeable;)V
    //   72: aload_3
    //   73: astore_1
    //   74: aload_1
    //   75: areturn
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_1
    //   79: aload_1
    //   80: invokestatic 71	bgo:a	(Ljava/io/Closeable;)V
    //   83: aconst_null
    //   84: astore_1
    //   85: goto -11 -> 74
    //   88: astore_1
    //   89: aconst_null
    //   90: astore_2
    //   91: aload_2
    //   92: invokestatic 71	bgo:a	(Ljava/io/Closeable;)V
    //   95: aload_1
    //   96: athrow
    //   97: astore_1
    //   98: goto -7 -> 91
    //   101: astore_1
    //   102: aconst_null
    //   103: astore_1
    //   104: goto -25 -> 79
    //   107: astore_2
    //   108: goto -29 -> 79
    //   111: astore_1
    //   112: aconst_null
    //   113: astore_1
    //   114: goto -35 -> 79
    //   117: astore_2
    //   118: goto -39 -> 79
    //   121: astore_1
    //   122: aconst_null
    //   123: astore_1
    //   124: goto -45 -> 79
    //   127: astore_2
    //   128: goto -49 -> 79
    //   131: astore_2
    //   132: goto -53 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	adr
    //   0	135	1	paramString	String
    //   46	46	2	str	String
    //   107	1	2	localJsonSyntaxException	com.google.gson.JsonSyntaxException
    //   117	1	2	localIOException	java.io.IOException
    //   127	1	2	localAssertionError	AssertionError
    //   131	1	2	localJsonIOException	com.google.gson.JsonIOException
    //   67	6	3	localbly	bly
    // Exception table:
    //   from	to	target	type
    //   36	45	76	com/google/gson/JsonIOException
    //   36	45	88	finally
    //   47	68	97	finally
    //   36	45	101	com/google/gson/JsonSyntaxException
    //   47	68	107	com/google/gson/JsonSyntaxException
    //   36	45	111	java/io/IOException
    //   47	68	117	java/io/IOException
    //   36	45	121	java/lang/AssertionError
    //   47	68	127	java/lang/AssertionError
    //   47	68	131	com/google/gson/JsonIOException
  }
}

/* Location:
 * Qualified Name:     adr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */