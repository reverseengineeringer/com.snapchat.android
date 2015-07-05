import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;

public final class bnx
{
  long a = 0L;
  long b;
  final int c;
  final bnw d;
  List<bnl> e;
  public final bnx.b f;
  final bnx.a g;
  public final bnx.c h = new bnx.c();
  private final List<bnl> j;
  private final bnx.c k = new bnx.c();
  private bni l = null;
  
  static
  {
    if (!bnx.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      return;
    }
  }
  
  bnx(int paramInt, bnw parambnw, boolean paramBoolean1, boolean paramBoolean2, List<bnl> paramList)
  {
    if (parambnw == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    c = paramInt;
    d = parambnw;
    b = f.b();
    f = new bnx.b(e.b(), (byte)0);
    g = new bnx.a();
    bnx.b.a(f, paramBoolean2);
    bnx.a.a(g, paramBoolean1);
    j = paramList;
  }
  
  private boolean d(bni parambni)
  {
    if ((!i) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      if (l != null) {
        return false;
      }
      if ((bnx.b.a(f)) && (bnx.a.a(g))) {
        return false;
      }
    }
    finally {}
    l = parambni;
    notifyAll();
    d.b(c);
    return true;
  }
  
  private void f()
  {
    try
    {
      wait();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new InterruptedIOException();
    }
  }
  
  final void a(long paramLong)
  {
    b += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public final void a(bni parambni)
  {
    if (!d(parambni)) {
      return;
    }
    d.b(c, parambni);
  }
  
  /* Error */
  public final boolean a()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 58	bnx:l	Lbni;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 90	bnx:f	Lbnx$b;
    //   21: invokestatic 120	bnx$b:a	(Lbnx$b;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 90	bnx:f	Lbnx$b;
    //   31: invokestatic 141	bnx$b:b	(Lbnx$b;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 93	bnx:g	Lbnx$a;
    //   41: invokestatic 123	bnx$a:a	(Lbnx$a;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 93	bnx:g	Lbnx$a;
    //   51: invokestatic 143	bnx$a:b	(Lbnx$a;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 179	bnx:e	Ljava/util/List;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnonnull -50 -> 13
    //   66: iconst_1
    //   67: istore_1
    //   68: goto -55 -> 13
    //   71: astore_2
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_2
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	bnx
    //   1	67	1	bool	boolean
    //   8	55	2	localObject1	Object
    //   71	4	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	71	finally
    //   17	37	71	finally
    //   37	57	71	finally
    //   57	62	71	finally
  }
  
  public final void b(bni parambni)
  {
    if (!d(parambni)) {
      return;
    }
    d.a(c, parambni);
  }
  
  public final boolean b()
  {
    if ((c & 0x1) == 1) {}
    for (int m = 1; d.b == m; m = 0) {
      return true;
    }
    return false;
  }
  
  /* Error */
  public final List<bnl> c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 54	bnx:h	Lbnx$c;
    //   6: invokevirtual 186	bnx$c:c	()V
    //   9: aload_0
    //   10: getfield 179	bnx:e	Ljava/util/List;
    //   13: ifnonnull +32 -> 45
    //   16: aload_0
    //   17: getfield 58	bnx:l	Lbni;
    //   20: ifnonnull +25 -> 45
    //   23: aload_0
    //   24: invokespecial 131	bnx:f	()V
    //   27: goto -18 -> 9
    //   30: astore_1
    //   31: aload_0
    //   32: getfield 54	bnx:h	Lbnx$c;
    //   35: invokevirtual 188	bnx$c:b	()V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    //   45: aload_0
    //   46: getfield 54	bnx:h	Lbnx$c;
    //   49: invokevirtual 188	bnx$c:b	()V
    //   52: aload_0
    //   53: getfield 179	bnx:e	Ljava/util/List;
    //   56: ifnull +12 -> 68
    //   59: aload_0
    //   60: getfield 179	bnx:e	Ljava/util/List;
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: areturn
    //   68: new 153	java/io/IOException
    //   71: dup
    //   72: new 160	java/lang/StringBuilder
    //   75: dup
    //   76: ldc -94
    //   78: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_0
    //   82: getfield 58	bnx:l	Lbni;
    //   85: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokespecial 156	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	bnx
    //   30	9	1	localObject1	Object
    //   40	4	1	localObject2	Object
    //   63	4	1	localList	List
    // Exception table:
    //   from	to	target	type
    //   9	27	30	finally
    //   2	9	40	finally
    //   31	40	40	finally
    //   45	64	40	finally
    //   68	95	40	finally
  }
  
  final void c(bni parambni)
  {
    try
    {
      if (l == null)
      {
        l = parambni;
        notifyAll();
      }
      return;
    }
    finally
    {
      parambni = finally;
      throw parambni;
    }
  }
  
  public final cai d()
  {
    try
    {
      if ((e == null) && (!b())) {
        throw new IllegalStateException("reply before requesting the sink");
      }
    }
    finally {}
    return g;
  }
  
  final void e()
  {
    if ((!i) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      bnx.b.a(f, true);
      boolean bool = a();
      notifyAll();
      if (!bool) {
        d.b(c);
      }
      return;
    }
    finally {}
  }
  
  final class a
    implements cai
  {
    private final bzu c = new bzu();
    private boolean d;
    private boolean e;
    
    static
    {
      if (!bnx.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    a() {}
    
    /* Error */
    private void a(boolean paramBoolean)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 31	bnx$a:b	Lbnx;
      //   4: astore 5
      //   6: aload 5
      //   8: monitorenter
      //   9: aload_0
      //   10: getfield 31	bnx$a:b	Lbnx;
      //   13: invokestatic 43	bnx:g	(Lbnx;)Lbnx$c;
      //   16: invokevirtual 47	bnx$c:c	()V
      //   19: aload_0
      //   20: getfield 31	bnx$a:b	Lbnx;
      //   23: getfield 50	bnx:b	J
      //   26: lconst_0
      //   27: lcmp
      //   28: ifgt +60 -> 88
      //   31: aload_0
      //   32: getfield 52	bnx$a:e	Z
      //   35: ifne +53 -> 88
      //   38: aload_0
      //   39: getfield 54	bnx$a:d	Z
      //   42: ifne +46 -> 88
      //   45: aload_0
      //   46: getfield 31	bnx$a:b	Lbnx;
      //   49: invokestatic 57	bnx:d	(Lbnx;)Lbni;
      //   52: ifnonnull +36 -> 88
      //   55: aload_0
      //   56: getfield 31	bnx$a:b	Lbnx;
      //   59: invokestatic 59	bnx:e	(Lbnx;)V
      //   62: goto -43 -> 19
      //   65: astore 6
      //   67: aload_0
      //   68: getfield 31	bnx$a:b	Lbnx;
      //   71: invokestatic 43	bnx:g	(Lbnx;)Lbnx$c;
      //   74: invokevirtual 61	bnx$c:b	()V
      //   77: aload 6
      //   79: athrow
      //   80: astore 6
      //   82: aload 5
      //   84: monitorexit
      //   85: aload 6
      //   87: athrow
      //   88: aload_0
      //   89: getfield 31	bnx$a:b	Lbnx;
      //   92: invokestatic 43	bnx:g	(Lbnx;)Lbnx$c;
      //   95: invokevirtual 61	bnx$c:b	()V
      //   98: aload_0
      //   99: getfield 31	bnx$a:b	Lbnx;
      //   102: invokestatic 64	bnx:h	(Lbnx;)V
      //   105: aload_0
      //   106: getfield 31	bnx$a:b	Lbnx;
      //   109: getfield 50	bnx:b	J
      //   112: aload_0
      //   113: getfield 38	bnx$a:c	Lbzu;
      //   116: getfield 65	bzu:b	J
      //   119: invokestatic 71	java/lang/Math:min	(JJ)J
      //   122: lstore_3
      //   123: aload_0
      //   124: getfield 31	bnx$a:b	Lbnx;
      //   127: astore 6
      //   129: aload 6
      //   131: aload 6
      //   133: getfield 50	bnx:b	J
      //   136: lload_3
      //   137: lsub
      //   138: putfield 50	bnx:b	J
      //   141: aload 5
      //   143: monitorexit
      //   144: aload_0
      //   145: getfield 31	bnx$a:b	Lbnx;
      //   148: invokestatic 74	bnx:a	(Lbnx;)Lbnw;
      //   151: astore 5
      //   153: aload_0
      //   154: getfield 31	bnx$a:b	Lbnx;
      //   157: invokestatic 77	bnx:b	(Lbnx;)I
      //   160: istore_2
      //   161: iload_1
      //   162: ifeq +30 -> 192
      //   165: lload_3
      //   166: aload_0
      //   167: getfield 38	bnx$a:c	Lbzu;
      //   170: getfield 65	bzu:b	J
      //   173: lcmp
      //   174: ifne +18 -> 192
      //   177: iconst_1
      //   178: istore_1
      //   179: aload 5
      //   181: iload_2
      //   182: iload_1
      //   183: aload_0
      //   184: getfield 38	bnx$a:c	Lbzu;
      //   187: lload_3
      //   188: invokevirtual 82	bnw:a	(IZLbzu;J)V
      //   191: return
      //   192: iconst_0
      //   193: istore_1
      //   194: goto -15 -> 179
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	197	0	this	a
      //   0	197	1	paramBoolean	boolean
      //   160	22	2	i	int
      //   122	66	3	l	long
      //   4	176	5	localObject1	Object
      //   65	13	6	localObject2	Object
      //   80	6	6	localObject3	Object
      //   127	5	6	localbnx	bnx
      // Exception table:
      //   from	to	target	type
      //   19	62	65	finally
      //   9	19	80	finally
      //   67	80	80	finally
      //   82	85	80	finally
      //   88	144	80	finally
    }
    
    public final cak E_()
    {
      return bnx.g(bnx.this);
    }
    
    public final void a_(bzu parambzu, long paramLong)
    {
      if ((!a) && (Thread.holdsLock(bnx.this))) {
        throw new AssertionError();
      }
      c.a_(parambzu, paramLong);
      while (c.b >= 16384L) {
        a(false);
      }
    }
    
    public final void close()
    {
      if ((!a) && (Thread.holdsLock(bnx.this))) {
        throw new AssertionError();
      }
      synchronized (bnx.this)
      {
        if (d) {
          return;
        }
        if (g.e) {
          break label113;
        }
        if (c.b > 0L)
        {
          if (c.b <= 0L) {
            break label113;
          }
          a(true);
        }
      }
      bnx.a(bnx.this).a(bnx.b(bnx.this), true, null, 0L);
      label113:
      synchronized (bnx.this)
      {
        d = true;
        bnx.a(bnx.this).c();
        bnx.f(bnx.this);
        return;
      }
    }
    
    public final void flush()
    {
      if ((!a) && (Thread.holdsLock(bnx.this))) {
        throw new AssertionError();
      }
      synchronized (bnx.this)
      {
        bnx.h(bnx.this);
        if (c.b > 0L) {
          a(false);
        }
      }
      bnx.a(bnx.this).c();
    }
  }
  
  final class b
    implements caj
  {
    private final bzu c = new bzu();
    private final bzu d = new bzu();
    private final long e;
    private boolean f;
    private boolean g;
    
    static
    {
      if (!bnx.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    private b(long paramLong)
    {
      e = paramLong;
    }
    
    /* Error */
    private void b()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 34	bnx$b:b	Lbnx;
      //   4: invokestatic 55	bnx:c	(Lbnx;)Lbnx$c;
      //   7: invokevirtual 59	bnx$c:c	()V
      //   10: aload_0
      //   11: getfield 43	bnx$b:d	Lbzu;
      //   14: getfield 61	bzu:b	J
      //   17: lconst_0
      //   18: lcmp
      //   19: ifne +50 -> 69
      //   22: aload_0
      //   23: getfield 51	bnx$b:g	Z
      //   26: ifne +43 -> 69
      //   29: aload_0
      //   30: getfield 63	bnx$b:f	Z
      //   33: ifne +36 -> 69
      //   36: aload_0
      //   37: getfield 34	bnx$b:b	Lbnx;
      //   40: invokestatic 66	bnx:d	(Lbnx;)Lbni;
      //   43: ifnonnull +26 -> 69
      //   46: aload_0
      //   47: getfield 34	bnx$b:b	Lbnx;
      //   50: invokestatic 69	bnx:e	(Lbnx;)V
      //   53: goto -43 -> 10
      //   56: astore_1
      //   57: aload_0
      //   58: getfield 34	bnx$b:b	Lbnx;
      //   61: invokestatic 55	bnx:c	(Lbnx;)Lbnx$c;
      //   64: invokevirtual 71	bnx$c:b	()V
      //   67: aload_1
      //   68: athrow
      //   69: aload_0
      //   70: getfield 34	bnx$b:b	Lbnx;
      //   73: invokestatic 55	bnx:c	(Lbnx;)Lbnx$c;
      //   76: invokevirtual 71	bnx$c:b	()V
      //   79: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	80	0	this	b
      //   56	12	1	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   10	53	56	finally
    }
    
    public final cak E_()
    {
      return bnx.c(bnx.this);
    }
    
    public final long a(bzu arg1, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      synchronized (bnx.this)
      {
        b();
        if (f) {
          throw new IOException("stream closed");
        }
      }
      if (bnx.d(bnx.this) != null) {
        throw new IOException("stream was reset: " + bnx.d(bnx.this));
      }
      if (d.b == 0L) {
        return -1L;
      }
      paramLong = d.a(???, Math.min(paramLong, d.b));
      ??? = bnx.this;
      a += paramLong;
      if (a >= ae.b() / 2)
      {
        bnx.a(bnx.this).a(bnx.b(bnx.this), a);
        a = 0L;
      }
      synchronized (bnx.a(bnx.this))
      {
        ??? = bnx.a(bnx.this);
        c += paramLong;
        if (ac >= ae.b() / 2)
        {
          bnx.a(bnx.this).a(0, ac);
          ac = 0L;
        }
        return paramLong;
      }
    }
    
    final void a(bzw parambzw, long paramLong)
    {
      long l = paramLong;
      if (!a)
      {
        l = paramLong;
        if (Thread.holdsLock(bnx.this)) {
          throw new AssertionError();
        }
      }
      for (;;)
      {
        l -= paramLong;
        synchronized (bnx.this)
        {
          if (d.b == 0L)
          {
            i = 1;
            d.a(c);
            if (i != 0) {
              notifyAll();
            }
            if (l > 0L) {}
            boolean bool;
            synchronized (bnx.this)
            {
              bool = g;
              if (d.b + l > e)
              {
                i = 1;
                if (i != 0)
                {
                  parambzw.f(l);
                  b(bni.h);
                }
              }
              else
              {
                i = 0;
              }
            }
            if (bool)
            {
              parambzw.f(l);
              return;
            }
            paramLong = parambzw.a(c, l);
            if (paramLong != -1L) {
              continue;
            }
            throw new EOFException();
          }
          int i = 0;
        }
      }
    }
    
    public final void close()
    {
      synchronized (bnx.this)
      {
        f = true;
        d.p();
        notifyAll();
        bnx.f(bnx.this);
        return;
      }
    }
  }
  
  final class c
    extends bzs
  {
    c() {}
    
    protected final void a()
    {
      b(bni.l);
    }
    
    public final void b()
    {
      if (d()) {
        throw new InterruptedIOException("timeout");
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */