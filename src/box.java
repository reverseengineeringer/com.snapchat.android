import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class box
  implements Closeable
{
  private static final ExecutorService l;
  public final bna a;
  final boolean b;
  long c = 0L;
  long d;
  public final bov e = new bov();
  final bov f = new bov();
  final boz g;
  final Socket h;
  public final bol i;
  final box.b j;
  private final bor m;
  private final Map<Integer, boy> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, bot> u;
  private final bou v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();
  
  static
  {
    if (!box.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), bnq.c("OkHttp SpdyConnection"));
      return;
    }
  }
  
  private box(box.a parama)
  {
    a = d;
    v = e;
    b = f;
    m = c;
    int i1;
    if (f)
    {
      i1 = 1;
      q = i1;
      if ((f) && (a == bna.d)) {
        q += 2;
      }
      i1 = i2;
      if (f) {
        i1 = 1;
      }
      w = i1;
      if (f) {
        e.a(7, 0, 16777216);
      }
      o = a;
      if (a != bna.d) {
        break label356;
      }
      g = new bop();
      t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bnq.c(String.format("OkHttp %s Push Observer", new Object[] { o })));
      f.a(7, 0, 65535);
      f.a(5, 0, 16384);
    }
    for (;;)
    {
      d = f.b();
      h = b;
      i = g.a(cbe.a(cbe.a(b)), b);
      j = new box.b((byte)0);
      new Thread(j).start();
      return;
      i1 = 2;
      break;
      label356:
      if (a != bna.c) {
        break label385;
      }
      g = new bow();
      t = null;
    }
    label385:
    throw new AssertionError(a);
  }
  
  /* Error */
  private void a(boj paramboj1, boj paramboj2)
  {
    // Byte code:
    //   0: getstatic 81	box:k	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 249	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 235	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 250	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: getfield 215	box:i	Lbol;
    //   25: astore 5
    //   27: aload 5
    //   29: monitorenter
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 252	box:r	Z
    //   36: ifeq +160 -> 196
    //   39: aload_0
    //   40: monitorexit
    //   41: aload 5
    //   43: monitorexit
    //   44: aconst_null
    //   45: astore_1
    //   46: aload_0
    //   47: monitorenter
    //   48: aload_0
    //   49: getfield 117	box:n	Ljava/util/Map;
    //   52: invokeinterface 257 1 0
    //   57: ifne +337 -> 394
    //   60: aload_0
    //   61: getfield 117	box:n	Ljava/util/Map;
    //   64: invokeinterface 261 1 0
    //   69: aload_0
    //   70: getfield 117	box:n	Ljava/util/Map;
    //   73: invokeinterface 264 1 0
    //   78: anewarray 266	boy
    //   81: invokeinterface 272 2 0
    //   86: checkcast 274	[Lboy;
    //   89: astore 6
    //   91: aload_0
    //   92: getfield 117	box:n	Ljava/util/Map;
    //   95: invokeinterface 277 1 0
    //   100: aload_0
    //   101: iconst_0
    //   102: invokespecial 280	box:a	(Z)V
    //   105: aload_0
    //   106: getfield 282	box:u	Ljava/util/Map;
    //   109: ifnull +279 -> 388
    //   112: aload_0
    //   113: getfield 282	box:u	Ljava/util/Map;
    //   116: invokeinterface 261 1 0
    //   121: aload_0
    //   122: getfield 282	box:u	Ljava/util/Map;
    //   125: invokeinterface 264 1 0
    //   130: anewarray 284	bot
    //   133: invokeinterface 272 2 0
    //   138: checkcast 286	[Lbot;
    //   141: astore 7
    //   143: aload_0
    //   144: aconst_null
    //   145: putfield 282	box:u	Ljava/util/Map;
    //   148: aload_0
    //   149: monitorexit
    //   150: aload_1
    //   151: astore 5
    //   153: aload 6
    //   155: ifnull +114 -> 269
    //   158: aload 6
    //   160: arraylength
    //   161: istore 4
    //   163: iconst_0
    //   164: istore_3
    //   165: iload_3
    //   166: iload 4
    //   168: if_icmpge +98 -> 266
    //   171: aload 6
    //   173: iload_3
    //   174: aaload
    //   175: astore 5
    //   177: aload 5
    //   179: aload_2
    //   180: invokevirtual 289	boy:a	(Lboj;)V
    //   183: aload_1
    //   184: astore 5
    //   186: iload_3
    //   187: iconst_1
    //   188: iadd
    //   189: istore_3
    //   190: aload 5
    //   192: astore_1
    //   193: goto -28 -> 165
    //   196: aload_0
    //   197: iconst_1
    //   198: putfield 252	box:r	Z
    //   201: aload_0
    //   202: getfield 291	box:p	I
    //   205: istore_3
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_0
    //   209: getfield 215	box:i	Lbol;
    //   212: iload_3
    //   213: aload_1
    //   214: getstatic 294	bnq:a	[B
    //   217: invokeinterface 299 4 0
    //   222: aload 5
    //   224: monitorexit
    //   225: aconst_null
    //   226: astore_1
    //   227: goto -181 -> 46
    //   230: astore_1
    //   231: aload_0
    //   232: monitorexit
    //   233: aload_1
    //   234: athrow
    //   235: astore_1
    //   236: aload 5
    //   238: monitorexit
    //   239: aload_1
    //   240: athrow
    //   241: astore_1
    //   242: goto -196 -> 46
    //   245: astore_1
    //   246: aload_0
    //   247: monitorexit
    //   248: aload_1
    //   249: athrow
    //   250: astore 8
    //   252: aload_1
    //   253: astore 5
    //   255: aload_1
    //   256: ifnull -70 -> 186
    //   259: aload 8
    //   261: astore 5
    //   263: goto -77 -> 186
    //   266: aload_1
    //   267: astore 5
    //   269: aload 7
    //   271: ifnull +75 -> 346
    //   274: aload 7
    //   276: arraylength
    //   277: istore 4
    //   279: iconst_0
    //   280: istore_3
    //   281: iload_3
    //   282: iload 4
    //   284: if_icmpge +62 -> 346
    //   287: aload 7
    //   289: iload_3
    //   290: aaload
    //   291: astore_1
    //   292: aload_1
    //   293: getfield 300	bot:c	J
    //   296: ldc2_w 301
    //   299: lcmp
    //   300: ifne +14 -> 314
    //   303: aload_1
    //   304: getfield 304	bot:b	J
    //   307: ldc2_w 301
    //   310: lcmp
    //   311: ifne +11 -> 322
    //   314: new 306	java/lang/IllegalStateException
    //   317: dup
    //   318: invokespecial 307	java/lang/IllegalStateException:<init>	()V
    //   321: athrow
    //   322: aload_1
    //   323: aload_1
    //   324: getfield 304	bot:b	J
    //   327: lconst_1
    //   328: lsub
    //   329: putfield 300	bot:c	J
    //   332: aload_1
    //   333: getfield 310	bot:a	Ljava/util/concurrent/CountDownLatch;
    //   336: invokevirtual 315	java/util/concurrent/CountDownLatch:countDown	()V
    //   339: iload_3
    //   340: iconst_1
    //   341: iadd
    //   342: istore_3
    //   343: goto -62 -> 281
    //   346: aload_0
    //   347: getfield 215	box:i	Lbol;
    //   350: invokeinterface 318 1 0
    //   355: aload 5
    //   357: astore_1
    //   358: aload_0
    //   359: getfield 200	box:h	Ljava/net/Socket;
    //   362: invokevirtual 321	java/net/Socket:close	()V
    //   365: aload_1
    //   366: ifnull +17 -> 383
    //   369: aload_1
    //   370: athrow
    //   371: astore_1
    //   372: aload 5
    //   374: ifnull -16 -> 358
    //   377: aload 5
    //   379: astore_1
    //   380: goto -22 -> 358
    //   383: return
    //   384: astore_1
    //   385: goto -20 -> 365
    //   388: aconst_null
    //   389: astore 7
    //   391: goto -243 -> 148
    //   394: aconst_null
    //   395: astore 6
    //   397: goto -292 -> 105
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	400	0	this	box
    //   0	400	1	paramboj1	boj
    //   0	400	2	paramboj2	boj
    //   164	179	3	i1	int
    //   161	124	4	i2	int
    //   25	353	5	localObject	Object
    //   89	307	6	arrayOfboy	boy[]
    //   141	249	7	arrayOfbot	bot[]
    //   250	10	8	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   32	41	230	finally
    //   196	208	230	finally
    //   231	233	230	finally
    //   30	32	235	finally
    //   41	44	235	finally
    //   208	225	235	finally
    //   233	235	235	finally
    //   236	239	235	finally
    //   21	30	241	java/io/IOException
    //   239	241	241	java/io/IOException
    //   48	105	245	finally
    //   105	148	245	finally
    //   148	150	245	finally
    //   246	248	245	finally
    //   177	183	250	java/io/IOException
    //   346	355	371	java/io/IOException
    //   358	365	384	java/io/IOException
  }
  
  private void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l1 = System.nanoTime();
        s = l1;
        return;
      }
      finally {}
      long l1 = Long.MAX_VALUE;
    }
  }
  
  /* Error */
  private bot c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 282	box:u	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 282	box:u	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 330	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 430 2 0
    //   22: checkcast 284	bot
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	box
    //   0	40	1	paramInt	int
    //   25	7	2	localbot	bot
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  final boy a(int paramInt)
  {
    try
    {
      boy localboy = (boy)n.get(Integer.valueOf(paramInt));
      return localboy;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boy a(List<bom> paramList, boolean paramBoolean)
  {
    boolean bool = false;
    if (!paramBoolean) {
      bool = true;
    }
    synchronized (i)
    {
      try
      {
        if (r) {
          throw new IOException("shutdown");
        }
      }
      finally {}
    }
    int i1 = q;
    q += 2;
    boy localboy = new boy(i1, this, bool, false, paramList);
    if (localboy.a())
    {
      n.put(Integer.valueOf(i1), localboy);
      a(false);
    }
    i.a(bool, i1, paramList);
    if (!paramBoolean) {
      i.b();
    }
    return localboy;
  }
  
  final void a(final int paramInt, final long paramLong)
  {
    l.execute(new bnl("OkHttp Window Update %s stream %d", new Object[] { o, Integer.valueOf(paramInt) })
    {
      public final void a()
      {
        try
        {
          i.a(paramInt, paramLong);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  final void a(final int paramInt, final boj paramboj)
  {
    l.submit(new bnl("OkHttp %s stream %d", new Object[] { o, Integer.valueOf(paramInt) })
    {
      public final void a()
      {
        try
        {
          b(paramInt, paramboj);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public final void a(int paramInt, boolean paramBoolean, cav paramcav, long paramLong)
  {
    long l1 = paramLong;
    if (paramLong == 0L) {
      i.a(paramBoolean, paramInt, paramcav, 0);
    }
    while (l1 <= 0L) {
      return;
    }
    for (;;)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, d), i.c());
        d -= i1;
        l1 -= i1;
        bol localbol = i;
        if ((paramBoolean) && (l1 == 0L))
        {
          bool = true;
          localbol.a(bool, paramInt, paramcav, i1);
          break;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  /* Error */
  public final boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 125	box:s	J
    //   6: lstore_1
    //   7: lload_1
    //   8: ldc2_w 420
    //   11: lcmp
    //   12: ifeq +9 -> 21
    //   15: iconst_1
    //   16: istore_3
    //   17: aload_0
    //   18: monitorexit
    //   19: iload_3
    //   20: ireturn
    //   21: iconst_0
    //   22: istore_3
    //   23: goto -6 -> 17
    //   26: astore 4
    //   28: aload_0
    //   29: monitorexit
    //   30: aload 4
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	this	box
    //   6	2	1	l1	long
    //   16	7	3	bool	boolean
    //   26	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
  }
  
  public final long b()
  {
    try
    {
      long l1 = s;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boy b(int paramInt)
  {
    try
    {
      boy localboy = (boy)n.remove(Integer.valueOf(paramInt));
      if ((localboy != null) && (n.isEmpty())) {
        a(true);
      }
      return localboy;
    }
    finally {}
  }
  
  final void b(int paramInt, boj paramboj)
  {
    i.a(paramInt, paramboj);
  }
  
  public final void c()
  {
    i.b();
  }
  
  public final void close()
  {
    a(boj.a, boj.l);
  }
  
  public static final class a
  {
    String a;
    Socket b;
    bor c = bor.a;
    public bna d = bna.c;
    bou e = bou.a;
    boolean f;
    
    public a(String paramString, Socket paramSocket)
    {
      a = paramString;
      f = true;
      b = paramSocket;
    }
  }
  
  final class b
    extends bnl
    implements bok.a
  {
    bok b;
    
    private b()
    {
      super(new Object[] { box.a(box.this) });
    }
    
    /* Error */
    protected final void a()
    {
      // Byte code:
      //   0: getstatic 44	boj:g	Lboj;
      //   3: astore_3
      //   4: getstatic 44	boj:g	Lboj;
      //   7: astore 4
      //   9: aload_3
      //   10: astore_2
      //   11: aload_3
      //   12: astore_1
      //   13: aload_0
      //   14: aload_0
      //   15: getfield 20	box$b:c	Lbox;
      //   18: getfield 47	box:g	Lboz;
      //   21: aload_0
      //   22: getfield 20	box$b:c	Lbox;
      //   25: getfield 51	box:h	Ljava/net/Socket;
      //   28: invokestatic 56	cbe:b	(Ljava/net/Socket;)Lcbk;
      //   31: invokestatic 59	cbe:a	(Lcbk;)Lcax;
      //   34: aload_0
      //   35: getfield 20	box$b:c	Lbox;
      //   38: getfield 62	box:b	Z
      //   41: invokeinterface 67 3 0
      //   46: putfield 69	box$b:b	Lbok;
      //   49: aload_3
      //   50: astore_2
      //   51: aload_3
      //   52: astore_1
      //   53: aload_0
      //   54: getfield 20	box$b:c	Lbox;
      //   57: getfield 62	box:b	Z
      //   60: ifne +16 -> 76
      //   63: aload_3
      //   64: astore_2
      //   65: aload_3
      //   66: astore_1
      //   67: aload_0
      //   68: getfield 69	box$b:b	Lbok;
      //   71: invokeinterface 73 1 0
      //   76: aload_3
      //   77: astore_2
      //   78: aload_3
      //   79: astore_1
      //   80: aload_0
      //   81: getfield 69	box$b:b	Lbok;
      //   84: aload_0
      //   85: invokeinterface 76 2 0
      //   90: ifne -14 -> 76
      //   93: aload_3
      //   94: astore_2
      //   95: aload_3
      //   96: astore_1
      //   97: getstatic 78	boj:a	Lboj;
      //   100: astore_3
      //   101: aload_3
      //   102: astore_2
      //   103: aload_3
      //   104: astore_1
      //   105: getstatic 81	boj:l	Lboj;
      //   108: astore 5
      //   110: aload_0
      //   111: getfield 20	box$b:c	Lbox;
      //   114: aload_3
      //   115: aload 5
      //   117: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
      //   120: aload_0
      //   121: getfield 69	box$b:b	Lbok;
      //   124: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
      //   127: return
      //   128: astore_1
      //   129: aload_2
      //   130: astore_1
      //   131: getstatic 91	boj:b	Lboj;
      //   134: astore_3
      //   135: getstatic 91	boj:b	Lboj;
      //   138: astore_1
      //   139: aload_0
      //   140: getfield 20	box$b:c	Lbox;
      //   143: aload_3
      //   144: aload_1
      //   145: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
      //   148: aload_0
      //   149: getfield 69	box$b:b	Lbok;
      //   152: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
      //   155: return
      //   156: astore_2
      //   157: aload_1
      //   158: astore_3
      //   159: aload_2
      //   160: astore_1
      //   161: aload_0
      //   162: getfield 20	box$b:c	Lbox;
      //   165: aload_3
      //   166: aload 4
      //   168: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
      //   171: aload_0
      //   172: getfield 69	box$b:b	Lbok;
      //   175: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
      //   178: aload_1
      //   179: athrow
      //   180: astore_2
      //   181: goto -10 -> 171
      //   184: astore_1
      //   185: goto -24 -> 161
      //   188: astore_1
      //   189: goto -41 -> 148
      //   192: astore_1
      //   193: goto -73 -> 120
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	196	0	this	b
      //   12	93	1	localObject1	Object
      //   128	1	1	localIOException1	IOException
      //   130	49	1	localObject2	Object
      //   184	1	1	localObject3	Object
      //   188	1	1	localIOException2	IOException
      //   192	1	1	localIOException3	IOException
      //   10	120	2	localObject4	Object
      //   156	4	2	localObject5	Object
      //   180	1	2	localIOException4	IOException
      //   3	163	3	localObject6	Object
      //   7	160	4	localboj1	boj
      //   108	8	5	localboj2	boj
      // Exception table:
      //   from	to	target	type
      //   13	49	128	java/io/IOException
      //   53	63	128	java/io/IOException
      //   67	76	128	java/io/IOException
      //   80	93	128	java/io/IOException
      //   97	101	128	java/io/IOException
      //   105	110	128	java/io/IOException
      //   13	49	156	finally
      //   53	63	156	finally
      //   67	76	156	finally
      //   80	93	156	finally
      //   97	101	156	finally
      //   105	110	156	finally
      //   131	135	156	finally
      //   161	171	180	java/io/IOException
      //   135	139	184	finally
      //   139	148	188	java/io/IOException
      //   110	120	192	java/io/IOException
    }
    
    public final void a(int paramInt, long paramLong)
    {
      if (paramInt == 0) {
        synchronized (box.this)
        {
          box localbox = box.this;
          d += paramLong;
          return;
        }
      }
      ??? = a(paramInt);
      if (??? != null) {
        try
        {
          ((boy)???).a(paramLong);
          return;
        }
        finally {}
      }
    }
    
    public final void a(int paramInt, boj paramboj)
    {
      if (box.a(box.this, paramInt)) {
        box.a(box.this, paramInt, paramboj);
      }
      boy localboy;
      do
      {
        return;
        localboy = b(paramInt);
      } while (localboy == null);
      localboy.c(paramboj);
    }
    
    public final void a(int paramInt, cay arg2)
    {
      ??? = c;
      synchronized (box.this)
      {
        boy[] arrayOfboy = (boy[])box.e(box.this).values().toArray(new boy[box.e(box.this).size()]);
        box.i(box.this);
        int j = arrayOfboy.length;
        int i = 0;
        if (i < j)
        {
          ??? = arrayOfboy[i];
          if ((c > paramInt) && (???.b()))
          {
            ???.c(boj.k);
            b(c);
          }
          i += 1;
        }
      }
    }
    
    public final void a(int paramInt, List<bom> paramList)
    {
      box.a(box.this, paramInt, paramList);
    }
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean)
      {
        bot localbot = box.c(box.this, paramInt1);
        if (localbot != null)
        {
          if ((c != -1L) || (b == -1L)) {
            throw new IllegalStateException();
          }
          c = System.nanoTime();
          a.countDown();
        }
        return;
      }
      box.a(box.this, paramInt1, paramInt2);
    }
    
    public final void a(boolean paramBoolean, int paramInt1, cax paramcax, int paramInt2)
    {
      if (box.a(box.this, paramInt1)) {
        box.a(box.this, paramInt1, paramcax, paramInt2, paramBoolean);
      }
      boy localboy;
      do
      {
        return;
        localboy = a(paramInt1);
        if (localboy == null)
        {
          box.this.a(paramInt1, boj.c);
          paramcax.f(paramInt2);
          return;
        }
        if ((!boy.i) && (Thread.holdsLock(localboy))) {
          throw new AssertionError();
        }
        f.a(paramcax, paramInt2);
      } while (!paramBoolean);
      localboy.e();
    }
    
    public final void a(boolean paramBoolean, final bov parambov)
    {
      for (;;)
      {
        int i;
        synchronized (box.this)
        {
          int j = f.b();
          if (paramBoolean)
          {
            localbov = f;
            c = 0;
            b = 0;
            a = 0;
            Arrays.fill(d, 0);
          }
          bov localbov = f;
          i = 0;
          if (i < 10)
          {
            if (!parambov.a(i)) {
              break label345;
            }
            localbov.a(i, parambov.b(i), d[i]);
            break label345;
          }
          if (a == bna.d) {
            box.d().execute(new bnl("OkHttp %s ACK Settings", new Object[] { box.a(box.this) })
            {
              public final void a()
              {
                try
                {
                  i.a(parambov);
                  return;
                }
                catch (IOException localIOException) {}
              }
            });
          }
          i = f.b();
          if ((i == -1) || (i == j)) {
            break label337;
          }
          l = i - j;
          if (!box.g(box.this))
          {
            parambov = box.this;
            d += l;
            box.h(box.this);
          }
          if (box.e(box.this).isEmpty()) {
            break label332;
          }
          parambov = (boy[])box.e(box.this).values().toArray(new boy[box.e(box.this).size()]);
          if ((parambov == null) || (l == 0L)) {
            break label331;
          }
          j = parambov.length;
          i = 0;
          if (i >= j) {
            break label331;
          }
        }
        synchronized (parambov[i])
        {
          ???.a(l);
          i += 1;
          continue;
          parambov = finally;
          throw parambov;
        }
        label331:
        return;
        label332:
        parambov = null;
        continue;
        label337:
        parambov = null;
        long l = 0L;
        continue;
        label345:
        i += 1;
      }
    }
    
    public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, final List<bom> paramList, bon parambon)
    {
      int j = 0;
      int k = 0;
      int i = 0;
      boolean bool = true;
      if (box.a(box.this, paramInt))
      {
        box.a(box.this, paramInt, paramList, paramBoolean2);
        return;
      }
      synchronized (box.this)
      {
        if (box.b(box.this)) {
          return;
        }
      }
      boy localboy = a(paramInt);
      if (localboy == null) {
        if ((parambon == bon.b) || (parambon == bon.c)) {
          break label501;
        }
      }
      for (;;)
      {
        if (i != 0)
        {
          box.this.a(paramInt, boj.c);
          return;
        }
        if (paramInt <= box.c(box.this)) {
          return;
        }
        if (paramInt % 2 == box.d(box.this) % 2) {
          return;
        }
        paramList = new boy(paramInt, box.this, paramBoolean1, paramBoolean2, paramList);
        box.b(box.this, paramInt);
        box.e(box.this).put(Integer.valueOf(paramInt), paramList);
        box.d().execute(new bnl("OkHttp %s stream %d", new Object[] { box.a(box.this), Integer.valueOf(paramInt) })
        {
          public final void a()
          {
            try
            {
              box.f(box.this).a(paramList);
              return;
            }
            catch (IOException localIOException)
            {
              throw new RuntimeException(localIOException);
            }
          }
        });
        return;
        if (parambon == bon.a) {}
        for (i = 1; i != 0; i = 0)
        {
          localboy.b(boj.b);
          b(paramInt);
          return;
        }
        if ((!boy.i) && (Thread.holdsLock(localboy))) {
          throw new AssertionError();
        }
        ??? = null;
        for (;;)
        {
          try
          {
            if (e == null)
            {
              paramInt = j;
              if (parambon == bon.c) {
                paramInt = 1;
              }
              if (paramInt != 0)
              {
                paramList = boj.b;
                paramBoolean1 = bool;
                if (paramList == null) {
                  break label480;
                }
                localboy.b(paramList);
                if (!paramBoolean2) {
                  break;
                }
                localboy.e();
                return;
              }
              e = paramList;
              paramBoolean1 = localboy.a();
              paramList = ???;
              continue;
            }
            paramInt = k;
            if (parambon == bon.b) {
              paramInt = 1;
            }
            if (paramInt != 0)
            {
              paramList = boj.e;
              paramBoolean1 = bool;
              continue;
            }
            parambon = new ArrayList();
            parambon.addAll(e);
            parambon.addAll(paramList);
            e = parambon;
            paramBoolean1 = bool;
            paramList = ???;
            continue;
            if (paramBoolean1) {
              continue;
            }
          }
          finally {}
          label480:
          d.b(c);
        }
        label501:
        i = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     box
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */