package com.flurry.sdk;

import android.content.Context;
import android.os.Looper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class dg
{
  static final Integer a = Integer.valueOf(50);
  private static final String d = dg.class.getSimpleName();
  String b;
  LinkedHashMap<String, List<String>> c;
  
  public dg(String paramString)
  {
    a(paramString);
  }
  
  /* Error */
  private boolean a(File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_3
    //   4: iload_3
    //   5: istore_2
    //   6: aload_1
    //   7: ifnull +56 -> 63
    //   10: iload_3
    //   11: istore_2
    //   12: aload_1
    //   13: invokevirtual 44	java/io/File:exists	()Z
    //   16: ifeq +47 -> 63
    //   19: iconst_4
    //   20: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   23: new 46	java/lang/StringBuilder
    //   26: dup
    //   27: ldc 48
    //   29: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_1
    //   33: invokevirtual 53	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   36: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   45: aload_1
    //   46: invokevirtual 68	java/io/File:delete	()Z
    //   49: istore_2
    //   50: iload_2
    //   51: ifeq +16 -> 67
    //   54: iconst_4
    //   55: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   58: ldc 70
    //   60: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   63: aload_0
    //   64: monitorexit
    //   65: iload_2
    //   66: ireturn
    //   67: bipush 6
    //   69: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   72: ldc 72
    //   74: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   77: goto -14 -> 63
    //   80: astore_1
    //   81: aload_0
    //   82: monitorexit
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	dg
    //   0	85	1	paramFile	File
    //   5	61	2	bool1	boolean
    //   3	8	3	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   12	50	80	finally
    //   54	63	80	finally
    //   67	77	80	finally
  }
  
  /* Error */
  private boolean a(String paramString, List<String> paramList)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 81	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   8: invokestatic 84	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   11: if_acmpne +13 -> 24
    //   14: bipush 6
    //   16: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   19: ldc 86
    //   21: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: invokestatic 91	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   27: invokevirtual 94	com/flurry/sdk/do:b	()Landroid/content/Context;
    //   30: new 46	java/lang/StringBuilder
    //   33: dup
    //   34: ldc 96
    //   36: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_1
    //   40: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokevirtual 102	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   49: astore_1
    //   50: aload_1
    //   51: invokestatic 106	com/flurry/sdk/fa:a	(Ljava/io/File;)Z
    //   54: istore 6
    //   56: iload 6
    //   58: ifne +12 -> 70
    //   61: aconst_null
    //   62: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   65: aload_0
    //   66: monitorexit
    //   67: iload 5
    //   69: ireturn
    //   70: new 113	java/io/DataOutputStream
    //   73: dup
    //   74: new 115	java/io/FileOutputStream
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 118	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   82: invokespecial 121	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   85: astore 7
    //   87: aload 7
    //   89: astore_1
    //   90: aload 7
    //   92: aload_2
    //   93: invokeinterface 127 1 0
    //   98: invokevirtual 131	java/io/DataOutputStream:writeShort	(I)V
    //   101: iconst_0
    //   102: istore_3
    //   103: aload 7
    //   105: astore_1
    //   106: iload_3
    //   107: aload_2
    //   108: invokeinterface 127 1 0
    //   113: if_icmpge +92 -> 205
    //   116: aload 7
    //   118: astore_1
    //   119: aload_2
    //   120: iload_3
    //   121: invokeinterface 135 2 0
    //   126: checkcast 137	java/lang/String
    //   129: invokevirtual 141	java/lang/String:getBytes	()[B
    //   132: astore 8
    //   134: aload 7
    //   136: astore_1
    //   137: aload 8
    //   139: arraylength
    //   140: istore 4
    //   142: aload 7
    //   144: astore_1
    //   145: iconst_4
    //   146: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   149: new 46	java/lang/StringBuilder
    //   152: dup
    //   153: ldc -113
    //   155: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: iload_3
    //   159: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   162: ldc -108
    //   164: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: iload 4
    //   169: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   172: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   178: aload 7
    //   180: astore_1
    //   181: aload 7
    //   183: iload 4
    //   185: invokevirtual 131	java/io/DataOutputStream:writeShort	(I)V
    //   188: aload 7
    //   190: astore_1
    //   191: aload 7
    //   193: aload 8
    //   195: invokevirtual 152	java/io/DataOutputStream:write	([B)V
    //   198: iload_3
    //   199: iconst_1
    //   200: iadd
    //   201: istore_3
    //   202: goto -99 -> 103
    //   205: aload 7
    //   207: astore_1
    //   208: aload 7
    //   210: iconst_0
    //   211: invokevirtual 131	java/io/DataOutputStream:writeShort	(I)V
    //   214: iconst_1
    //   215: istore 5
    //   217: aload 7
    //   219: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   222: goto -157 -> 65
    //   225: astore 8
    //   227: aconst_null
    //   228: astore_2
    //   229: aload_2
    //   230: astore_1
    //   231: bipush 6
    //   233: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   236: ldc -102
    //   238: aload 8
    //   240: invokestatic 157	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   243: aload_2
    //   244: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   247: iconst_0
    //   248: istore 5
    //   250: goto -28 -> 222
    //   253: aload_1
    //   254: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   257: aload_2
    //   258: athrow
    //   259: astore_1
    //   260: aload_0
    //   261: monitorexit
    //   262: aload_1
    //   263: athrow
    //   264: astore_2
    //   265: goto -12 -> 253
    //   268: astore 8
    //   270: aload 7
    //   272: astore_2
    //   273: goto -44 -> 229
    //   276: astore_2
    //   277: aconst_null
    //   278: astore_1
    //   279: goto -26 -> 253
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	282	0	this	dg
    //   0	282	1	paramString	String
    //   0	282	2	paramList	List<String>
    //   102	100	3	i	int
    //   140	44	4	j	int
    //   1	248	5	bool1	boolean
    //   54	3	6	bool2	boolean
    //   85	186	7	localDataOutputStream	java.io.DataOutputStream
    //   132	62	8	arrayOfByte	byte[]
    //   225	14	8	localThrowable1	Throwable
    //   268	1	8	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   50	56	225	java/lang/Throwable
    //   70	87	225	java/lang/Throwable
    //   5	24	259	finally
    //   24	50	259	finally
    //   61	65	259	finally
    //   217	222	259	finally
    //   243	247	259	finally
    //   253	259	259	finally
    //   90	101	264	finally
    //   106	116	264	finally
    //   119	134	264	finally
    //   137	142	264	finally
    //   145	178	264	finally
    //   181	188	264	finally
    //   191	198	264	finally
    //   208	214	264	finally
    //   231	243	264	finally
    //   90	101	268	java/lang/Throwable
    //   106	116	268	java/lang/Throwable
    //   119	134	268	java/lang/Throwable
    //   137	142	268	java/lang/Throwable
    //   145	178	268	java/lang/Throwable
    //   181	188	268	java/lang/Throwable
    //   191	198	268	java/lang/Throwable
    //   208	214	268	java/lang/Throwable
    //   50	56	276	finally
    //   70	87	276	finally
  }
  
  private void c()
  {
    try
    {
      LinkedList localLinkedList = new LinkedList(c.keySet());
      b();
      if (!localLinkedList.isEmpty()) {
        a(b, localLinkedList);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private List<String> e(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 81	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   8: invokestatic 84	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   11: if_acmpne +13 -> 24
    //   14: bipush 6
    //   16: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   19: ldc -71
    //   21: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   24: invokestatic 91	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   27: invokevirtual 94	com/flurry/sdk/do:b	()Landroid/content/Context;
    //   30: new 46	java/lang/StringBuilder
    //   33: dup
    //   34: ldc 96
    //   36: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_1
    //   40: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokevirtual 102	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   49: astore_1
    //   50: aload_1
    //   51: invokevirtual 44	java/io/File:exists	()Z
    //   54: istore 5
    //   56: iload 5
    //   58: ifeq +227 -> 285
    //   61: new 187	java/io/DataInputStream
    //   64: dup
    //   65: new 189	java/io/FileInputStream
    //   68: dup
    //   69: aload_1
    //   70: invokespecial 190	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   73: invokespecial 193	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   76: astore 8
    //   78: aload 8
    //   80: astore 6
    //   82: aload 8
    //   84: invokevirtual 196	java/io/DataInputStream:readUnsignedShort	()I
    //   87: istore_3
    //   88: iload_3
    //   89: ifne +15 -> 104
    //   92: aload 8
    //   94: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   97: aload 7
    //   99: astore_1
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_1
    //   103: areturn
    //   104: aload 8
    //   106: astore 6
    //   108: new 198	java/util/ArrayList
    //   111: dup
    //   112: iload_3
    //   113: invokespecial 200	java/util/ArrayList:<init>	(I)V
    //   116: astore_1
    //   117: iconst_0
    //   118: istore_2
    //   119: iload_2
    //   120: iload_3
    //   121: if_icmpge +99 -> 220
    //   124: aload 8
    //   126: astore 6
    //   128: aload 8
    //   130: invokevirtual 196	java/io/DataInputStream:readUnsignedShort	()I
    //   133: istore 4
    //   135: aload 8
    //   137: astore 6
    //   139: iconst_4
    //   140: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   143: new 46	java/lang/StringBuilder
    //   146: dup
    //   147: ldc -54
    //   149: invokespecial 50	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: iload_2
    //   153: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   156: ldc -108
    //   158: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: iload 4
    //   163: invokevirtual 146	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   166: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   172: aload 8
    //   174: astore 6
    //   176: iload 4
    //   178: newarray <illegal type>
    //   180: astore 7
    //   182: aload 8
    //   184: astore 6
    //   186: aload 8
    //   188: aload 7
    //   190: invokevirtual 205	java/io/DataInputStream:readFully	([B)V
    //   193: aload 8
    //   195: astore 6
    //   197: aload_1
    //   198: new 137	java/lang/String
    //   201: dup
    //   202: aload 7
    //   204: invokespecial 207	java/lang/String:<init>	([B)V
    //   207: invokeinterface 211 2 0
    //   212: pop
    //   213: iload_2
    //   214: iconst_1
    //   215: iadd
    //   216: istore_2
    //   217: goto -98 -> 119
    //   220: aload 8
    //   222: astore 6
    //   224: aload 8
    //   226: invokevirtual 196	java/io/DataInputStream:readUnsignedShort	()I
    //   229: pop
    //   230: aload 8
    //   232: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   235: goto -135 -> 100
    //   238: astore 7
    //   240: aconst_null
    //   241: astore 8
    //   243: aconst_null
    //   244: astore_1
    //   245: aload 8
    //   247: astore 6
    //   249: bipush 6
    //   251: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   254: ldc -43
    //   256: aload 7
    //   258: invokestatic 157	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   261: aload 8
    //   263: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   266: goto -31 -> 235
    //   269: astore_1
    //   270: aload_0
    //   271: monitorexit
    //   272: aload_1
    //   273: athrow
    //   274: astore_1
    //   275: aconst_null
    //   276: astore 6
    //   278: aload 6
    //   280: invokestatic 111	com/flurry/sdk/fb:a	(Ljava/io/Closeable;)V
    //   283: aload_1
    //   284: athrow
    //   285: iconst_5
    //   286: getstatic 22	com/flurry/sdk/dg:d	Ljava/lang/String;
    //   289: ldc -41
    //   291: invokestatic 65	com/flurry/sdk/el:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   294: aconst_null
    //   295: astore_1
    //   296: goto -61 -> 235
    //   299: astore_1
    //   300: goto -22 -> 278
    //   303: astore 7
    //   305: aconst_null
    //   306: astore_1
    //   307: goto -62 -> 245
    //   310: astore 7
    //   312: goto -67 -> 245
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	315	0	this	dg
    //   0	315	1	paramString	String
    //   118	99	2	i	int
    //   87	35	3	j	int
    //   133	44	4	k	int
    //   54	3	5	bool	boolean
    //   80	199	6	localDataInputStream1	java.io.DataInputStream
    //   1	202	7	arrayOfByte	byte[]
    //   238	19	7	localThrowable1	Throwable
    //   303	1	7	localThrowable2	Throwable
    //   310	1	7	localThrowable3	Throwable
    //   76	186	8	localDataInputStream2	java.io.DataInputStream
    // Exception table:
    //   from	to	target	type
    //   61	78	238	java/lang/Throwable
    //   5	24	269	finally
    //   24	56	269	finally
    //   92	97	269	finally
    //   230	235	269	finally
    //   261	266	269	finally
    //   278	285	269	finally
    //   285	294	269	finally
    //   61	78	274	finally
    //   82	88	299	finally
    //   108	117	299	finally
    //   128	135	299	finally
    //   139	172	299	finally
    //   176	182	299	finally
    //   186	193	299	finally
    //   197	213	299	finally
    //   224	230	299	finally
    //   249	261	299	finally
    //   82	88	303	java/lang/Throwable
    //   108	117	303	java/lang/Throwable
    //   128	135	310	java/lang/Throwable
    //   139	172	310	java/lang/Throwable
    //   176	182	310	java/lang/Throwable
    //   186	193	310	java/lang/Throwable
    //   197	213	310	java/lang/Throwable
    //   224	230	310	java/lang/Throwable
  }
  
  public List<String> a()
  {
    return new ArrayList(c.keySet());
  }
  
  public void a(df paramdf, String paramString)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        el.a(4, d, "addBlockInfo");
        String str = paramdf.a();
        paramdf = (List)c.get(paramString);
        if (paramdf == null)
        {
          el.a(4, d, "New Data Key");
          paramdf = new LinkedList();
          i = 1;
          paramdf.add(str);
          if (paramdf.size() > a.intValue())
          {
            b((String)paramdf.get(0));
            paramdf.remove(0);
          }
          c.put(paramString, paramdf);
          a(paramString, paramdf);
          if (i != 0) {
            c();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  void a(String paramString)
  {
    c = new LinkedHashMap();
    b = (paramString + "Main");
    paramString = e(b);
    if (paramString == null) {}
    for (;;)
    {
      return;
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        String str = (String)paramString.next();
        List localList = e(str);
        if (localList != null) {
          c.put(str, localList);
        }
      }
    }
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    List localList = (List)c.get(paramString2);
    boolean bool = false;
    if (localList != null)
    {
      b(paramString1);
      bool = localList.remove(paramString1);
    }
    if ((localList != null) && (!localList.isEmpty()))
    {
      c.put(paramString2, localList);
      a(paramString2, localList);
      return bool;
    }
    d(paramString2);
    return bool;
  }
  
  void b()
  {
    a(do.a().b().getFileStreamPath(".FlurrySenderIndex.info." + b));
  }
  
  boolean b(String paramString)
  {
    return new df(paramString).c();
  }
  
  public List<String> c(String paramString)
  {
    return (List)c.get(paramString);
  }
  
  public boolean d(String paramString)
  {
    try
    {
      if (Looper.myLooper() == Looper.getMainLooper()) {
        el.a(6, d, "discardOutdatedBlocksForDataKey(ID) running on the MAIN thread!");
      }
      File localFile = do.a().b().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
      List localList = c(paramString);
      if (localList != null)
      {
        el.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + localList.size());
        int i = 0;
        while (i < localList.size())
        {
          String str = (String)localList.get(i);
          b(str);
          el.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str);
          i += 1;
        }
      }
      c.remove(paramString);
      boolean bool = a(localFile);
      c();
      return bool;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */