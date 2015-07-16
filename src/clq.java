import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public final class clq
  implements clo
{
  private final File a;
  private final String b;
  private final ClassLoader c;
  private final Map<String, Object> d;
  
  public clq(String paramString)
  {
    this(paramString, (byte)0);
  }
  
  private clq(String paramString, byte paramByte)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("No resource path provided");
    }
    String str = paramString;
    if (!paramString.endsWith("/")) {
      str = paramString + '/';
    }
    a = null;
    b = str;
    c = getClass().getClassLoader();
    d = a(b("ZoneInfoMap"));
  }
  
  /* Error */
  private static Map<String, Object> a(InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 82	java/util/concurrent/ConcurrentHashMap
    //   3: dup
    //   4: invokespecial 83	java/util/concurrent/ConcurrentHashMap:<init>	()V
    //   7: astore_1
    //   8: new 85	java/io/DataInputStream
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 88	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   16: astore_0
    //   17: aload_0
    //   18: aload_1
    //   19: invokestatic 91	clq:a	(Ljava/io/DataInputStream;Ljava/util/Map;)V
    //   22: aload_0
    //   23: invokevirtual 94	java/io/DataInputStream:close	()V
    //   26: aload_1
    //   27: ldc 96
    //   29: new 98	java/lang/ref/SoftReference
    //   32: dup
    //   33: getstatic 103	chl:a	Lchl;
    //   36: invokespecial 106	java/lang/ref/SoftReference:<init>	(Ljava/lang/Object;)V
    //   39: invokeinterface 112 3 0
    //   44: pop
    //   45: aload_1
    //   46: areturn
    //   47: astore_1
    //   48: aload_0
    //   49: invokevirtual 94	java/io/DataInputStream:close	()V
    //   52: aload_1
    //   53: athrow
    //   54: astore_0
    //   55: goto -29 -> 26
    //   58: astore_0
    //   59: goto -7 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	paramInputStream	InputStream
    //   7	39	1	localConcurrentHashMap	java.util.concurrent.ConcurrentHashMap
    //   47	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   17	22	47	finally
    //   22	26	54	java/io/IOException
    //   48	52	58	java/io/IOException
  }
  
  private static void a(DataInputStream paramDataInputStream, Map<String, Object> paramMap)
  {
    int j = 0;
    int k = paramDataInputStream.readUnsignedShort();
    String[] arrayOfString = new String[k];
    int i = 0;
    while (i < k)
    {
      arrayOfString[i] = paramDataInputStream.readUTF().intern();
      i += 1;
    }
    k = paramDataInputStream.readUnsignedShort();
    i = j;
    while (i < k) {
      try
      {
        paramMap.put(arrayOfString[paramDataInputStream.readUnsignedShort()], arrayOfString[paramDataInputStream.readUnsignedShort()]);
        i += 1;
      }
      catch (ArrayIndexOutOfBoundsException paramDataInputStream)
      {
        throw new IOException("Corrupt zone info map");
      }
    }
  }
  
  private InputStream b(String paramString)
  {
    if (a != null) {
      localObject = new FileInputStream(new File(a, paramString));
    }
    String str;
    do
    {
      return (InputStream)localObject;
      str = b.concat(paramString);
      if (c == null) {
        break;
      }
      paramString = c.getResourceAsStream(str);
      localObject = paramString;
    } while (paramString != null);
    Object localObject = new StringBuilder(40).append("Resource not found: \"").append(str).append("\" ClassLoader: ");
    if (c != null) {}
    for (paramString = c.toString();; paramString = "system")
    {
      throw new IOException(paramString);
      paramString = ClassLoader.getSystemResourceAsStream(str);
      break;
    }
  }
  
  /* Error */
  private chl c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 73	clq:b	(Ljava/lang/String;)Ljava/io/InputStream;
    //   5: astore_3
    //   6: aload_3
    //   7: astore_2
    //   8: aload_3
    //   9: instanceof 165
    //   12: ifeq +48 -> 60
    //   15: aload_3
    //   16: astore_2
    //   17: aload_3
    //   18: checkcast 165	java/io/DataInput
    //   21: aload_1
    //   22: invokestatic 170	clk:a	(Ljava/io/DataInput;Ljava/lang/String;)Lchl;
    //   25: astore 4
    //   27: aload_3
    //   28: astore_2
    //   29: aload_0
    //   30: getfield 78	clq:d	Ljava/util/Map;
    //   33: aload_1
    //   34: new 98	java/lang/ref/SoftReference
    //   37: dup
    //   38: aload 4
    //   40: invokespecial 106	java/lang/ref/SoftReference:<init>	(Ljava/lang/Object;)V
    //   43: invokeinterface 112 3 0
    //   48: pop
    //   49: aload_3
    //   50: ifnull +7 -> 57
    //   53: aload_3
    //   54: invokevirtual 173	java/io/InputStream:close	()V
    //   57: aload 4
    //   59: areturn
    //   60: aload_3
    //   61: astore_2
    //   62: new 85	java/io/DataInputStream
    //   65: dup
    //   66: aload_3
    //   67: invokespecial 88	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   70: aload_1
    //   71: invokestatic 170	clk:a	(Ljava/io/DataInput;Ljava/lang/String;)Lchl;
    //   74: astore 4
    //   76: goto -49 -> 27
    //   79: astore 4
    //   81: aconst_null
    //   82: astore_3
    //   83: aload_3
    //   84: astore_2
    //   85: invokestatic 179	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   88: astore 5
    //   90: aload_3
    //   91: astore_2
    //   92: aload 5
    //   94: invokevirtual 183	java/lang/Thread:getThreadGroup	()Ljava/lang/ThreadGroup;
    //   97: aload 5
    //   99: aload 4
    //   101: invokevirtual 189	java/lang/ThreadGroup:uncaughtException	(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    //   104: aload_3
    //   105: astore_2
    //   106: aload_0
    //   107: getfield 78	clq:d	Ljava/util/Map;
    //   110: aload_1
    //   111: invokeinterface 193 2 0
    //   116: pop
    //   117: aload_3
    //   118: ifnull +7 -> 125
    //   121: aload_3
    //   122: invokevirtual 173	java/io/InputStream:close	()V
    //   125: aconst_null
    //   126: areturn
    //   127: astore_1
    //   128: aconst_null
    //   129: astore_2
    //   130: aload_2
    //   131: ifnull +7 -> 138
    //   134: aload_2
    //   135: invokevirtual 173	java/io/InputStream:close	()V
    //   138: aload_1
    //   139: athrow
    //   140: astore_1
    //   141: aload 4
    //   143: areturn
    //   144: astore_1
    //   145: goto -20 -> 125
    //   148: astore_2
    //   149: goto -11 -> 138
    //   152: astore_1
    //   153: goto -23 -> 130
    //   156: astore 4
    //   158: goto -75 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	clq
    //   0	161	1	paramString	String
    //   7	128	2	localInputStream1	InputStream
    //   148	1	2	localIOException1	IOException
    //   5	117	3	localInputStream2	InputStream
    //   25	50	4	localchl	chl
    //   79	63	4	localIOException2	IOException
    //   156	1	4	localIOException3	IOException
    //   88	10	5	localThread	Thread
    // Exception table:
    //   from	to	target	type
    //   0	6	79	java/io/IOException
    //   0	6	127	finally
    //   53	57	140	java/io/IOException
    //   121	125	144	java/io/IOException
    //   134	138	148	java/io/IOException
    //   8	15	152	finally
    //   17	27	152	finally
    //   29	49	152	finally
    //   62	76	152	finally
    //   85	90	152	finally
    //   92	104	152	finally
    //   106	117	152	finally
    //   8	15	156	java/io/IOException
    //   17	27	156	java/io/IOException
    //   29	49	156	java/io/IOException
    //   62	76	156	java/io/IOException
  }
  
  public final chl a(String paramString)
  {
    for (;;)
    {
      Object localObject;
      if (paramString == null) {
        localObject = null;
      }
      chl localchl;
      do
      {
        return (chl)localObject;
        localObject = d.get(paramString);
        if (localObject == null) {
          return null;
        }
        if (paramString.equals(localObject)) {
          return c(paramString);
        }
        if (!(localObject instanceof SoftReference)) {
          break;
        }
        localchl = (chl)((SoftReference)localObject).get();
        localObject = localchl;
      } while (localchl != null);
      return c(paramString);
      paramString = (String)localObject;
    }
  }
  
  public final Set<String> a()
  {
    return new TreeSet(d.keySet());
  }
}

/* Location:
 * Qualified Name:     clq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */