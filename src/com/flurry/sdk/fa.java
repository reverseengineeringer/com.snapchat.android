package com.flurry.sdk;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;

public final class fa
{
  private static String a = fa.class.getSimpleName();
  
  public static File a(boolean paramBoolean)
  {
    Object localObject2 = null;
    Context localContext = do.a().b();
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalFilesDir(null);
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getFilesDir();
    }
    return (File)localObject2;
  }
  
  /* Error */
  @Deprecated
  public static void a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: iconst_4
    //   5: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   8: ldc 71
    //   10: invokestatic 76	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   13: return
    //   14: aload_1
    //   15: ifnonnull +35 -> 50
    //   18: iconst_4
    //   19: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   22: new 78	java/lang/StringBuilder
    //   25: dup
    //   26: ldc 80
    //   28: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   35: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 76	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   44: aload_0
    //   45: invokevirtual 99	java/io/File:delete	()Z
    //   48: pop
    //   49: return
    //   50: iconst_4
    //   51: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   54: new 78	java/lang/StringBuilder
    //   57: dup
    //   58: ldc 101
    //   60: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_0
    //   64: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   67: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 76	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   76: new 103	java/io/FileOutputStream
    //   79: dup
    //   80: aload_0
    //   81: invokespecial 106	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   84: astore_2
    //   85: aload_2
    //   86: astore_0
    //   87: aload_2
    //   88: aload_1
    //   89: invokevirtual 110	java/lang/String:getBytes	()[B
    //   92: invokevirtual 114	java/io/FileOutputStream:write	([B)V
    //   95: aload_2
    //   96: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   99: return
    //   100: astore_3
    //   101: aconst_null
    //   102: astore_1
    //   103: aload_1
    //   104: astore_0
    //   105: bipush 6
    //   107: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   110: ldc 121
    //   112: aload_3
    //   113: invokestatic 124	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   116: aload_1
    //   117: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   120: return
    //   121: astore_1
    //   122: aconst_null
    //   123: astore_0
    //   124: aload_0
    //   125: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   128: aload_1
    //   129: athrow
    //   130: astore_1
    //   131: goto -7 -> 124
    //   134: astore_3
    //   135: aload_2
    //   136: astore_1
    //   137: goto -34 -> 103
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	paramFile	File
    //   0	140	1	paramString	String
    //   84	52	2	localFileOutputStream	java.io.FileOutputStream
    //   100	13	3	localThrowable1	Throwable
    //   134	1	3	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   76	85	100	java/lang/Throwable
    //   76	85	121	finally
    //   87	95	130	finally
    //   105	116	130	finally
    //   87	95	134	java/lang/Throwable
  }
  
  public static boolean a(File paramFile)
  {
    if (paramFile == null) {}
    while (paramFile.getAbsoluteFile() == null) {
      return false;
    }
    paramFile = paramFile.getParentFile();
    if (paramFile == null) {
      return true;
    }
    if ((!paramFile.mkdirs()) && (!paramFile.isDirectory()))
    {
      el.a(6, a, "Unable to create persistent dir: " + paramFile);
      return false;
    }
    return true;
  }
  
  public static File b(boolean paramBoolean)
  {
    Context localContext = do.a().b();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramBoolean)
    {
      localObject1 = localObject2;
      if ("mounted".equals(Environment.getExternalStorageState())) {
        if (Build.VERSION.SDK_INT < 19)
        {
          localObject1 = localObject2;
          if (localContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {}
        }
        else
        {
          localObject1 = localContext.getExternalCacheDir();
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = localContext.getCacheDir();
    }
    return (File)localObject2;
  }
  
  public static boolean b(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()))
    {
      String[] arrayOfString = paramFile.list();
      int i = 0;
      while (i < arrayOfString.length)
      {
        if (!b(new File(paramFile, arrayOfString[i]))) {
          return false;
        }
        i += 1;
      }
    }
    return paramFile.delete();
  }
  
  /* Error */
  @Deprecated
  public static String c(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 162	java/io/File:exists	()Z
    //   8: ifne +14 -> 22
    //   11: iconst_4
    //   12: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   15: ldc -92
    //   17: invokestatic 76	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   20: aconst_null
    //   21: areturn
    //   22: iconst_4
    //   23: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   26: new 78	java/lang/StringBuilder
    //   29: dup
    //   30: ldc -90
    //   32: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: invokevirtual 88	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   39: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokestatic 76	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: new 168	java/io/FileInputStream
    //   51: dup
    //   52: aload_0
    //   53: invokespecial 169	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   56: astore_2
    //   57: aload_2
    //   58: astore_0
    //   59: new 78	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 170	java/lang/StringBuilder:<init>	()V
    //   66: astore_3
    //   67: aload_2
    //   68: astore_0
    //   69: sipush 1024
    //   72: newarray <illegal type>
    //   74: astore 4
    //   76: aload_2
    //   77: astore_0
    //   78: aload_2
    //   79: aload 4
    //   81: invokevirtual 174	java/io/FileInputStream:read	([B)I
    //   84: istore_1
    //   85: iload_1
    //   86: ifle +53 -> 139
    //   89: aload_2
    //   90: astore_0
    //   91: aload_3
    //   92: new 39	java/lang/String
    //   95: dup
    //   96: aload 4
    //   98: iconst_0
    //   99: iload_1
    //   100: invokespecial 177	java/lang/String:<init>	([BII)V
    //   103: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: pop
    //   107: goto -31 -> 76
    //   110: astore_3
    //   111: aload_2
    //   112: astore_0
    //   113: bipush 6
    //   115: getstatic 16	com/flurry/sdk/fa:a	Ljava/lang/String;
    //   118: ldc -77
    //   120: aload_3
    //   121: invokestatic 124	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   124: aload_2
    //   125: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   128: aconst_null
    //   129: astore_0
    //   130: aload_0
    //   131: ifnull -111 -> 20
    //   134: aload_0
    //   135: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: areturn
    //   139: aload_2
    //   140: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   143: aload_3
    //   144: astore_0
    //   145: goto -15 -> 130
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_3
    //   151: aload_0
    //   152: astore_2
    //   153: aload_3
    //   154: invokestatic 119	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   157: aload_2
    //   158: athrow
    //   159: astore_2
    //   160: aload_0
    //   161: astore_3
    //   162: goto -9 -> 153
    //   165: astore_3
    //   166: aconst_null
    //   167: astore_2
    //   168: goto -57 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	paramFile	File
    //   84	16	1	i	int
    //   56	102	2	localObject1	Object
    //   159	1	2	localObject2	Object
    //   167	1	2	localObject3	Object
    //   66	26	3	localStringBuilder	StringBuilder
    //   110	34	3	localThrowable1	Throwable
    //   150	12	3	localObject4	Object
    //   165	1	3	localThrowable2	Throwable
    //   74	23	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   59	67	110	java/lang/Throwable
    //   69	76	110	java/lang/Throwable
    //   78	85	110	java/lang/Throwable
    //   91	107	110	java/lang/Throwable
    //   48	57	148	finally
    //   59	67	159	finally
    //   69	76	159	finally
    //   78	85	159	finally
    //   91	107	159	finally
    //   113	124	159	finally
    //   48	57	165	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */