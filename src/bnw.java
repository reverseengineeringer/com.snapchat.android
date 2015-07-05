import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
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

public final class bnw
  implements Closeable
{
  private static final ExecutorService l;
  public final blz a;
  final boolean b;
  long c = 0L;
  long d;
  public final bnu e = new bnu();
  final bnu f = new bnu();
  final bny g;
  final Socket h;
  public final bnk i;
  final bnw.b j;
  private final bnq m;
  private final Map<Integer, bnx> n = new HashMap();
  private final String o;
  private int p;
  private int q;
  private boolean r;
  private long s = System.nanoTime();
  private final ExecutorService t;
  private Map<Integer, bns> u;
  private final bnt v;
  private int w;
  private boolean x = false;
  private final Set<Integer> y = new LinkedHashSet();
  
  static
  {
    if (!bnw.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      l = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), bmp.c("OkHttp SpdyConnection"));
      return;
    }
  }
  
  private bnw(bnw.a parama)
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
      if ((f) && (a == blz.d)) {
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
      if (a != blz.d) {
        break label356;
      }
      g = new bno();
      t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bmp.c(String.format("OkHttp %s Push Observer", new Object[] { o })));
      f.a(7, 0, 65535);
      f.a(5, 0, 16384);
    }
    for (;;)
    {
      d = f.b();
      h = b;
      i = g.a(cad.a(cad.a(b)), b);
      j = new bnw.b((byte)0);
      new Thread(j).start();
      return;
      i1 = 2;
      break;
      label356:
      if (a != blz.c) {
        break label385;
      }
      g = new bnv();
      t = null;
    }
    label385:
    throw new AssertionError(a);
  }
  
  /* Error */
  private void a(bni parambni1, bni parambni2)
  {
    // Byte code:
    //   0: getstatic 81	bnw:k	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 249	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 235	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 250	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: getfield 215	bnw:i	Lbnk;
    //   25: astore 5
    //   27: aload 5
    //   29: monitorenter
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: getfield 252	bnw:r	Z
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
    //   49: getfield 117	bnw:n	Ljava/util/Map;
    //   52: invokeinterface 257 1 0
    //   57: ifne +337 -> 394
    //   60: aload_0
    //   61: getfield 117	bnw:n	Ljava/util/Map;
    //   64: invokeinterface 261 1 0
    //   69: aload_0
    //   70: getfield 117	bnw:n	Ljava/util/Map;
    //   73: invokeinterface 264 1 0
    //   78: anewarray 266	bnx
    //   81: invokeinterface 272 2 0
    //   86: checkcast 274	[Lbnx;
    //   89: astore 6
    //   91: aload_0
    //   92: getfield 117	bnw:n	Ljava/util/Map;
    //   95: invokeinterface 277 1 0
    //   100: aload_0
    //   101: iconst_0
    //   102: invokespecial 280	bnw:a	(Z)V
    //   105: aload_0
    //   106: getfield 282	bnw:u	Ljava/util/Map;
    //   109: ifnull +279 -> 388
    //   112: aload_0
    //   113: getfield 282	bnw:u	Ljava/util/Map;
    //   116: invokeinterface 261 1 0
    //   121: aload_0
    //   122: getfield 282	bnw:u	Ljava/util/Map;
    //   125: invokeinterface 264 1 0
    //   130: anewarray 284	bns
    //   133: invokeinterface 272 2 0
    //   138: checkcast 286	[Lbns;
    //   141: astore 7
    //   143: aload_0
    //   144: aconst_null
    //   145: putfield 282	bnw:u	Ljava/util/Map;
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
    //   180: invokevirtual 289	bnx:a	(Lbni;)V
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
    //   198: putfield 252	bnw:r	Z
    //   201: aload_0
    //   202: getfield 291	bnw:p	I
    //   205: istore_3
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_0
    //   209: getfield 215	bnw:i	Lbnk;
    //   212: iload_3
    //   213: aload_1
    //   214: getstatic 294	bmp:a	[B
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
    //   293: getfield 300	bns:c	J
    //   296: ldc2_w 301
    //   299: lcmp
    //   300: ifne +14 -> 314
    //   303: aload_1
    //   304: getfield 304	bns:b	J
    //   307: ldc2_w 301
    //   310: lcmp
    //   311: ifne +11 -> 322
    //   314: new 306	java/lang/IllegalStateException
    //   317: dup
    //   318: invokespecial 307	java/lang/IllegalStateException:<init>	()V
    //   321: athrow
    //   322: aload_1
    //   323: aload_1
    //   324: getfield 304	bns:b	J
    //   327: lconst_1
    //   328: lsub
    //   329: putfield 300	bns:c	J
    //   332: aload_1
    //   333: getfield 310	bns:a	Ljava/util/concurrent/CountDownLatch;
    //   336: invokevirtual 315	java/util/concurrent/CountDownLatch:countDown	()V
    //   339: iload_3
    //   340: iconst_1
    //   341: iadd
    //   342: istore_3
    //   343: goto -62 -> 281
    //   346: aload_0
    //   347: getfield 215	bnw:i	Lbnk;
    //   350: invokeinterface 318 1 0
    //   355: aload 5
    //   357: astore_1
    //   358: aload_0
    //   359: getfield 200	bnw:h	Ljava/net/Socket;
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
    //   0	400	0	this	bnw
    //   0	400	1	parambni1	bni
    //   0	400	2	parambni2	bni
    //   164	179	3	i1	int
    //   161	124	4	i2	int
    //   25	353	5	localObject	Object
    //   89	307	6	arrayOfbnx	bnx[]
    //   141	249	7	arrayOfbns	bns[]
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
  private bns c(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 282	bnw:u	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 282	bnw:u	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 330	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 430 2 0
    //   22: checkcast 284	bns
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
    //   0	40	0	this	bnw
    //   0	40	1	paramInt	int
    //   25	7	2	localbns	bns
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  final bnx a(int paramInt)
  {
    try
    {
      bnx localbnx = (bnx)n.get(Integer.valueOf(paramInt));
      return localbnx;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final bnx a(List<bnl> paramList, boolean paramBoolean)
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
    bnx localbnx = new bnx(i1, this, bool, false, paramList);
    if (localbnx.a())
    {
      n.put(Integer.valueOf(i1), localbnx);
      a(false);
    }
    i.a(bool, i1, paramList);
    if (!paramBoolean) {
      i.b();
    }
    return localbnx;
  }
  
  final void a(final int paramInt, final long paramLong)
  {
    l.execute(new bmk("OkHttp Window Update %s stream %d", new Object[] { o, Integer.valueOf(paramInt) })
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
  
  final void a(final int paramInt, final bni parambni)
  {
    l.submit(new bmk("OkHttp %s stream %d", new Object[] { o, Integer.valueOf(paramInt) })
    {
      public final void a()
      {
        try
        {
          b(paramInt, parambni);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public final void a(int paramInt, boolean paramBoolean, bzu parambzu, long paramLong)
  {
    long l1 = paramLong;
    if (paramLong == 0L)
    {
      i.a(paramBoolean, paramInt, parambzu, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i1 = Math.min((int)Math.min(l1, d), i.c());
        d -= i1;
        l1 -= i1;
        bnk localbnk = i;
        if ((paramBoolean) && (l1 == 0L))
        {
          bool = true;
          localbnk.a(bool, paramInt, parambzu, i1);
          if (l1 <= 0L) {
            break;
          }
          try
          {
            if (d > 0L) {
              continue;
            }
            wait();
            continue;
            parambzu = finally;
          }
          catch (InterruptedException parambzu)
          {
            throw new InterruptedIOException();
          }
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  /* Error */
  public final boolean a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 125	bnw:s	J
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
    //   0	33	0	this	bnw
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
  
  final bnx b(int paramInt)
  {
    try
    {
      bnx localbnx = (bnx)n.remove(Integer.valueOf(paramInt));
      if ((localbnx != null) && (n.isEmpty())) {
        a(true);
      }
      return localbnx;
    }
    finally {}
  }
  
  final void b(int paramInt, bni parambni)
  {
    i.a(paramInt, parambni);
  }
  
  public final void c()
  {
    i.b();
  }
  
  public final void close()
  {
    a(bni.a, bni.l);
  }
  
  public static final class a
  {
    String a;
    Socket b;
    bnq c = bnq.a;
    public blz d = blz.c;
    bnt e = bnt.a;
    boolean f;
    
    public a(String paramString, Socket paramSocket)
    {
      a = paramString;
      f = true;
      b = paramSocket;
    }
  }
  
  final class b
    extends bmk
    implements bnj.a
  {
    bnj b;
    
    private b()
    {
      super(new Object[] { bnw.a(bnw.this) });
    }
    
    /* Error */
    protected final void a()
    {
      // Byte code:
      //   0: getstatic 44	bni:g	Lbni;
      //   3: astore_3
      //   4: getstatic 44	bni:g	Lbni;
      //   7: astore 4
      //   9: aload_3
      //   10: astore_2
      //   11: aload_3
      //   12: astore_1
      //   13: aload_0
      //   14: aload_0
      //   15: getfield 20	bnw$b:c	Lbnw;
      //   18: getfield 47	bnw:g	Lbny;
      //   21: aload_0
      //   22: getfield 20	bnw$b:c	Lbnw;
      //   25: getfield 51	bnw:h	Ljava/net/Socket;
      //   28: invokestatic 56	cad:b	(Ljava/net/Socket;)Lcaj;
      //   31: invokestatic 59	cad:a	(Lcaj;)Lbzw;
      //   34: aload_0
      //   35: getfield 20	bnw$b:c	Lbnw;
      //   38: getfield 62	bnw:b	Z
      //   41: invokeinterface 67 3 0
      //   46: putfield 69	bnw$b:b	Lbnj;
      //   49: aload_3
      //   50: astore_2
      //   51: aload_3
      //   52: astore_1
      //   53: aload_0
      //   54: getfield 20	bnw$b:c	Lbnw;
      //   57: getfield 62	bnw:b	Z
      //   60: ifne +16 -> 76
      //   63: aload_3
      //   64: astore_2
      //   65: aload_3
      //   66: astore_1
      //   67: aload_0
      //   68: getfield 69	bnw$b:b	Lbnj;
      //   71: invokeinterface 73 1 0
      //   76: aload_3
      //   77: astore_2
      //   78: aload_3
      //   79: astore_1
      //   80: aload_0
      //   81: getfield 69	bnw$b:b	Lbnj;
      //   84: aload_0
      //   85: invokeinterface 76 2 0
      //   90: ifne -14 -> 76
      //   93: aload_3
      //   94: astore_2
      //   95: aload_3
      //   96: astore_1
      //   97: getstatic 78	bni:a	Lbni;
      //   100: astore_3
      //   101: aload_3
      //   102: astore_2
      //   103: aload_3
      //   104: astore_1
      //   105: getstatic 81	bni:l	Lbni;
      //   108: astore 5
      //   110: aload_0
      //   111: getfield 20	bnw$b:c	Lbnw;
      //   114: aload_3
      //   115: aload 5
      //   117: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
      //   120: aload_0
      //   121: getfield 69	bnw$b:b	Lbnj;
      //   124: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
      //   127: return
      //   128: astore_1
      //   129: aload_2
      //   130: astore_1
      //   131: getstatic 91	bni:b	Lbni;
      //   134: astore_3
      //   135: getstatic 91	bni:b	Lbni;
      //   138: astore_1
      //   139: aload_0
      //   140: getfield 20	bnw$b:c	Lbnw;
      //   143: aload_3
      //   144: aload_1
      //   145: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
      //   148: aload_0
      //   149: getfield 69	bnw$b:b	Lbnj;
      //   152: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
      //   155: return
      //   156: astore_2
      //   157: aload_1
      //   158: astore_3
      //   159: aload_2
      //   160: astore_1
      //   161: aload_0
      //   162: getfield 20	bnw$b:c	Lbnw;
      //   165: aload_3
      //   166: aload 4
      //   168: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
      //   171: aload_0
      //   172: getfield 69	bnw$b:b	Lbnj;
      //   175: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
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
      //   7	160	4	localbni1	bni
      //   108	8	5	localbni2	bni
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
        synchronized (bnw.this)
        {
          bnw localbnw = bnw.this;
          d += paramLong;
          notifyAll();
          return;
        }
      }
      ??? = a(paramInt);
      if (??? != null) {
        try
        {
          ((bnx)???).a(paramLong);
          return;
        }
        finally {}
      }
    }
    
    public final void a(int paramInt, bni parambni)
    {
      if (bnw.a(bnw.this, paramInt)) {
        bnw.a(bnw.this, paramInt, parambni);
      }
      bnx localbnx;
      do
      {
        return;
        localbnx = b(paramInt);
      } while (localbnx == null);
      localbnx.c(parambni);
    }
    
    public final void a(int paramInt, bzx arg2)
    {
      ??? = c;
      synchronized (bnw.this)
      {
        bnx[] arrayOfbnx = (bnx[])bnw.e(bnw.this).values().toArray(new bnx[bnw.e(bnw.this).size()]);
        bnw.i(bnw.this);
        int j = arrayOfbnx.length;
        int i = 0;
        if (i < j)
        {
          ??? = arrayOfbnx[i];
          if ((c > paramInt) && (???.b()))
          {
            ???.c(bni.k);
            b(c);
          }
          i += 1;
        }
      }
    }
    
    public final void a(int paramInt, List<bnl> paramList)
    {
      bnw.a(bnw.this, paramInt, paramList);
    }
    
    public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      if (paramBoolean)
      {
        bns localbns = bnw.c(bnw.this, paramInt1);
        if (localbns != null)
        {
          if ((c != -1L) || (b == -1L)) {
            throw new IllegalStateException();
          }
          c = System.nanoTime();
          a.countDown();
        }
        return;
      }
      bnw.a(bnw.this, paramInt1, paramInt2);
    }
    
    public final void a(boolean paramBoolean, int paramInt1, bzw parambzw, int paramInt2)
    {
      if (bnw.a(bnw.this, paramInt1)) {
        bnw.a(bnw.this, paramInt1, parambzw, paramInt2, paramBoolean);
      }
      bnx localbnx;
      do
      {
        return;
        localbnx = a(paramInt1);
        if (localbnx == null)
        {
          bnw.this.a(paramInt1, bni.c);
          parambzw.f(paramInt2);
          return;
        }
        if ((!bnx.i) && (Thread.holdsLock(localbnx))) {
          throw new AssertionError();
        }
        f.a(parambzw, paramInt2);
      } while (!paramBoolean);
      localbnx.e();
    }
    
    public final void a(boolean paramBoolean, final bnu parambnu)
    {
      for (;;)
      {
        int i;
        synchronized (bnw.this)
        {
          int j = f.b();
          if (paramBoolean)
          {
            localbnu = f;
            c = 0;
            b = 0;
            a = 0;
            Arrays.fill(d, 0);
          }
          bnu localbnu = f;
          i = 0;
          if (i < 10)
          {
            if (!parambnu.a(i)) {
              break label356;
            }
            localbnu.a(i, parambnu.b(i), d[i]);
            break label356;
          }
          if (a == blz.d) {
            bnw.d().execute(new bmk("OkHttp %s ACK Settings", new Object[] { bnw.a(bnw.this) })
            {
              public final void a()
              {
                try
                {
                  i.a(parambnu);
                  return;
                }
                catch (IOException localIOException) {}
              }
            });
          }
          i = f.b();
          if ((i == -1) || (i == j)) {
            break label348;
          }
          l = i - j;
          if (!bnw.g(bnw.this))
          {
            parambnu = bnw.this;
            d += l;
            if (l > 0L) {
              parambnu.notifyAll();
            }
            bnw.h(bnw.this);
          }
          if (bnw.e(bnw.this).isEmpty()) {
            break label343;
          }
          parambnu = (bnx[])bnw.e(bnw.this).values().toArray(new bnx[bnw.e(bnw.this).size()]);
          if ((parambnu == null) || (l == 0L)) {
            break label342;
          }
          j = parambnu.length;
          i = 0;
          if (i >= j) {
            break label342;
          }
        }
        synchronized (parambnu[i])
        {
          ???.a(l);
          i += 1;
          continue;
          parambnu = finally;
          throw parambnu;
        }
        label342:
        return;
        label343:
        parambnu = null;
        continue;
        label348:
        parambnu = null;
        long l = 0L;
        continue;
        label356:
        i += 1;
      }
    }
    
    public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, final List<bnl> paramList, bnm parambnm)
    {
      int j = 0;
      int k = 0;
      int i = 0;
      boolean bool = true;
      if (bnw.a(bnw.this, paramInt))
      {
        bnw.a(bnw.this, paramInt, paramList, paramBoolean2);
        return;
      }
      synchronized (bnw.this)
      {
        if (bnw.b(bnw.this)) {
          return;
        }
      }
      bnx localbnx = a(paramInt);
      if (localbnx == null) {
        if ((parambnm == bnm.b) || (parambnm == bnm.c)) {
          break label506;
        }
      }
      for (;;)
      {
        if (i != 0)
        {
          bnw.this.a(paramInt, bni.c);
          return;
        }
        if (paramInt <= bnw.c(bnw.this)) {
          return;
        }
        if (paramInt % 2 == bnw.d(bnw.this) % 2) {
          return;
        }
        paramList = new bnx(paramInt, bnw.this, paramBoolean1, paramBoolean2, paramList);
        bnw.b(bnw.this, paramInt);
        bnw.e(bnw.this).put(Integer.valueOf(paramInt), paramList);
        bnw.d().execute(new bmk("OkHttp %s stream %d", new Object[] { bnw.a(bnw.this), Integer.valueOf(paramInt) })
        {
          public final void a()
          {
            try
            {
              bnw.f(bnw.this).a(paramList);
              return;
            }
            catch (IOException localIOException)
            {
              throw new RuntimeException(localIOException);
            }
          }
        });
        return;
        if (parambnm == bnm.a) {}
        for (i = 1; i != 0; i = 0)
        {
          localbnx.b(bni.b);
          b(paramInt);
          return;
        }
        if ((!bnx.i) && (Thread.holdsLock(localbnx))) {
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
              if (parambnm == bnm.c) {
                paramInt = 1;
              }
              if (paramInt != 0)
              {
                paramList = bni.b;
                paramBoolean1 = bool;
                if (paramList == null) {
                  break label485;
                }
                localbnx.b(paramList);
                if (!paramBoolean2) {
                  break;
                }
                localbnx.e();
                return;
              }
              e = paramList;
              paramBoolean1 = localbnx.a();
              localbnx.notifyAll();
              paramList = ???;
              continue;
            }
            paramInt = k;
          }
          finally {}
          if (parambnm == bnm.b) {
            paramInt = 1;
          }
          if (paramInt != 0)
          {
            paramList = bni.e;
            paramBoolean1 = bool;
          }
          else
          {
            parambnm = new ArrayList();
            parambnm.addAll(e);
            parambnm.addAll(paramList);
            e = parambnm;
            paramBoolean1 = bool;
            paramList = ???;
            continue;
            label485:
            if (!paramBoolean1) {
              d.b(c);
            }
          }
        }
        label506:
        i = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */