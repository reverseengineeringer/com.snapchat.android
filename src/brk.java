import android.content.Context;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;

public class brk
{
  private static final String c = brk.class.getName();
  String a;
  String b;
  private final File d;
  private brx e;
  private int f;
  private int g;
  private int h;
  private brk.a i;
  private boolean j = false;
  
  public brk(Context paramContext, brj parambrj)
  {
    this(new File(paramContext.getFilesDir().getAbsolutePath() + "//com.crittercism//" + str), l, m, k, j, o, n);
  }
  
  private brk(File paramFile, brk.a parama, brx parambrx, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    i = parama;
    e = parambrx;
    h = paramInt1;
    g = paramInt2;
    a = paramString1;
    b = paramString2;
    d = paramFile;
    paramFile.mkdirs();
    d();
    f = h().length;
  }
  
  private boolean d()
  {
    String str;
    if (!d.isDirectory())
    {
      j = true;
      str = d.getAbsolutePath();
      if (!d.exists()) {
        break label69;
      }
      new IOException(str + " is not a directory");
    }
    while (!j)
    {
      return true;
      label69:
      new FileNotFoundException(str + " does not exist");
    }
    return false;
  }
  
  private void e()
  {
    while ((b() > i()) && (f())) {}
  }
  
  private boolean f()
  {
    if (i == null) {}
    File localFile;
    do
    {
      return false;
      brk.a locala = i;
      File[] arrayOfFile = g();
      localFile = null;
      if (arrayOfFile.length > a) {
        localFile = arrayOfFile[a];
      }
    } while ((localFile == null) || (!localFile.delete()));
    return true;
  }
  
  private File[] g()
  {
    File[] arrayOfFile = h();
    Arrays.sort(arrayOfFile);
    return arrayOfFile;
  }
  
  private File[] h()
  {
    File[] arrayOfFile2 = d.listFiles();
    File[] arrayOfFile1 = arrayOfFile2;
    if (arrayOfFile2 == null) {
      arrayOfFile1 = new File[0];
    }
    return arrayOfFile1;
  }
  
  private int i()
  {
    try
    {
      int k = g;
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final brk a(Context paramContext)
  {
    String str = d.getName();
    str = str + "_" + UUID.randomUUID().toString();
    return new brk(new File(paramContext.getFilesDir().getAbsolutePath() + "//com.crittercism/pending/" + str), i, e, h, g, a, b);
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 109	brk:d	()Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: invokespecial 112	brk:h	()[Ljava/io/File;
    //   18: astore_3
    //   19: iconst_0
    //   20: istore_1
    //   21: iload_1
    //   22: aload_3
    //   23: arraylength
    //   24: if_icmpge -13 -> 11
    //   27: aload_3
    //   28: iload_1
    //   29: aaload
    //   30: invokevirtual 144	java/io/File:delete	()Z
    //   33: pop
    //   34: iload_1
    //   35: iconst_1
    //   36: iadd
    //   37: istore_1
    //   38: goto -17 -> 21
    //   41: astore_3
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_3
    //   45: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	this	brk
    //   20	18	1	k	int
    //   6	2	2	bool	boolean
    //   18	10	3	arrayOfFile	File[]
    //   41	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	41	finally
    //   14	19	41	finally
    //   21	34	41	finally
  }
  
  public final void a(brk parambrk)
  {
    if (parambrk == null) {}
    int k;
    do
    {
      return;
      k = d.getName().compareTo(d.getName());
    } while (k == 0);
    brk localbrk2;
    if (k < 0) {
      localbrk2 = parambrk;
    }
    for (;;)
    {
      synchronized (this) {}
      try
      {
        if ((!d()) || (!parambrk.d()))
        {
          return;
          parambrk = finally;
          throw parambrk;
          localbrk2 = this;
          ??? = parambrk;
          continue;
        }
        File[] arrayOfFile = g();
        k = 0;
        while (k < arrayOfFile.length)
        {
          File localFile = new File(d, arrayOfFile[k].getName());
          arrayOfFile[k].renameTo(localFile);
          k += 1;
        }
        parambrk.e();
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  public final boolean a(brw parambrw)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 109	brk:d	()Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifne +10 -> 21
    //   14: iload 4
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: aload_0
    //   22: getfield 114	brk:f	I
    //   25: aload_0
    //   26: getfield 95	brk:h	I
    //   29: if_icmplt +17 -> 46
    //   32: invokestatic 187	btd:b	()V
    //   35: iload 4
    //   37: istore_3
    //   38: goto -21 -> 17
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    //   46: new 41	java/io/File
    //   49: dup
    //   50: aload_0
    //   51: getfield 103	brk:d	Ljava/io/File;
    //   54: aload_1
    //   55: invokeinterface 191 1 0
    //   60: invokespecial 176	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   63: astore 5
    //   65: aload_0
    //   66: invokevirtual 133	brk:b	()I
    //   69: istore_2
    //   70: iload_2
    //   71: aload_0
    //   72: invokespecial 135	brk:i	()I
    //   75: if_icmpne +13 -> 88
    //   78: iload 4
    //   80: istore_3
    //   81: aload_0
    //   82: invokespecial 137	brk:f	()Z
    //   85: ifeq -68 -> 17
    //   88: iload_2
    //   89: aload_0
    //   90: invokespecial 135	brk:i	()I
    //   93: if_icmple +14 -> 107
    //   96: aload_0
    //   97: iconst_1
    //   98: putfield 89	brk:j	Z
    //   101: iload 4
    //   103: istore_3
    //   104: goto -87 -> 17
    //   107: new 193	java/io/BufferedOutputStream
    //   110: dup
    //   111: new 195	java/io/FileOutputStream
    //   114: dup
    //   115: aload 5
    //   117: invokespecial 198	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   120: invokespecial 201	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   123: astore 6
    //   125: aload_1
    //   126: aload 6
    //   128: invokeinterface 203 2 0
    //   133: aload_0
    //   134: aload_0
    //   135: getfield 114	brk:f	I
    //   138: iconst_1
    //   139: iadd
    //   140: putfield 114	brk:f	I
    //   143: aload 6
    //   145: invokevirtual 208	java/io/OutputStream:close	()V
    //   148: iconst_1
    //   149: istore_3
    //   150: goto -133 -> 17
    //   153: astore_1
    //   154: new 43	java/lang/StringBuilder
    //   157: dup
    //   158: ldc -46
    //   160: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: aload 5
    //   165: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   168: pop
    //   169: invokestatic 216	btd:a	()V
    //   172: iload 4
    //   174: istore_3
    //   175: goto -158 -> 17
    //   178: astore_1
    //   179: aload 5
    //   181: invokevirtual 144	java/io/File:delete	()Z
    //   184: pop
    //   185: new 43	java/lang/StringBuilder
    //   188: dup
    //   189: ldc -38
    //   191: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   194: aload 5
    //   196: invokevirtual 54	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   199: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: invokestatic 220	btd:f	()V
    //   206: goto -58 -> 148
    //   209: astore_1
    //   210: aload 5
    //   212: invokevirtual 144	java/io/File:delete	()Z
    //   215: pop
    //   216: new 43	java/lang/StringBuilder
    //   219: dup
    //   220: ldc -34
    //   222: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload 5
    //   227: invokevirtual 54	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   230: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: pop
    //   234: invokestatic 220	btd:f	()V
    //   237: aload 6
    //   239: invokevirtual 208	java/io/OutputStream:close	()V
    //   242: iload 4
    //   244: istore_3
    //   245: goto -228 -> 17
    //   248: astore_1
    //   249: aload 5
    //   251: invokevirtual 144	java/io/File:delete	()Z
    //   254: pop
    //   255: new 43	java/lang/StringBuilder
    //   258: dup
    //   259: ldc -38
    //   261: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   264: aload 5
    //   266: invokevirtual 54	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   269: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: pop
    //   273: invokestatic 220	btd:f	()V
    //   276: iload 4
    //   278: istore_3
    //   279: goto -262 -> 17
    //   282: astore_1
    //   283: aload 6
    //   285: invokevirtual 208	java/io/OutputStream:close	()V
    //   288: aload_1
    //   289: athrow
    //   290: astore 6
    //   292: aload 5
    //   294: invokevirtual 144	java/io/File:delete	()Z
    //   297: pop
    //   298: new 43	java/lang/StringBuilder
    //   301: dup
    //   302: ldc -38
    //   304: invokespecial 211	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: aload 5
    //   309: invokevirtual 54	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   312: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: pop
    //   316: invokestatic 220	btd:f	()V
    //   319: goto -31 -> 288
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	322	0	this	brk
    //   0	322	1	parambrw	brw
    //   69	25	2	k	int
    //   9	270	3	bool1	boolean
    //   1	276	4	bool2	boolean
    //   63	245	5	localFile	File
    //   123	161	6	localBufferedOutputStream	java.io.BufferedOutputStream
    //   290	1	6	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   5	10	41	finally
    //   21	35	41	finally
    //   46	78	41	finally
    //   81	88	41	finally
    //   88	101	41	finally
    //   107	125	41	finally
    //   143	148	41	finally
    //   154	172	41	finally
    //   179	206	41	finally
    //   237	242	41	finally
    //   249	276	41	finally
    //   283	288	41	finally
    //   288	290	41	finally
    //   292	319	41	finally
    //   107	125	153	java/io/FileNotFoundException
    //   143	148	178	java/io/IOException
    //   125	143	209	java/io/IOException
    //   237	242	248	java/io/IOException
    //   125	143	282	finally
    //   210	237	282	finally
    //   283	288	290	java/io/IOException
  }
  
  public final int b()
  {
    try
    {
      int k = h().length;
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final java.util.List c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 225	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 226	java/util/ArrayList:<init>	()V
    //   9: astore_3
    //   10: aload_0
    //   11: invokespecial 109	brk:d	()Z
    //   14: istore_2
    //   15: iload_2
    //   16: ifne +7 -> 23
    //   19: aload_0
    //   20: monitorexit
    //   21: aload_3
    //   22: areturn
    //   23: aload_0
    //   24: invokespecial 139	brk:g	()[Ljava/io/File;
    //   27: astore 4
    //   29: iconst_0
    //   30: istore_1
    //   31: iload_1
    //   32: aload 4
    //   34: arraylength
    //   35: if_icmpge -16 -> 19
    //   38: aload_3
    //   39: aload_0
    //   40: getfield 93	brk:e	Lbrx;
    //   43: aload 4
    //   45: iload_1
    //   46: aaload
    //   47: invokevirtual 231	brx:a	(Ljava/io/File;)Lbri;
    //   50: invokeinterface 237 2 0
    //   55: pop
    //   56: iload_1
    //   57: iconst_1
    //   58: iadd
    //   59: istore_1
    //   60: goto -29 -> 31
    //   63: astore_3
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	brk
    //   30	30	1	k	int
    //   14	2	2	bool	boolean
    //   9	30	3	localArrayList	java.util.ArrayList
    //   63	4	3	localObject	Object
    //   27	17	4	arrayOfFile	File[]
    // Exception table:
    //   from	to	target	type
    //   2	15	63	finally
    //   23	29	63	finally
    //   31	56	63	finally
  }
  
  public static final class a
  {
    int a;
    
    public a(int paramInt)
    {
      a = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     brk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */