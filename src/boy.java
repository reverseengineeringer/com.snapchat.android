import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;

public final class boy
{
  long a = 0L;
  long b;
  final int c;
  final box d;
  List<bom> e;
  public final boy.b f;
  final boy.a g;
  public final boy.c h = new boy.c();
  private final List<bom> j;
  private final boy.c k = new boy.c();
  private boj l = null;
  
  static
  {
    if (!boy.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      return;
    }
  }
  
  boy(int paramInt, box parambox, boolean paramBoolean1, boolean paramBoolean2, List<bom> paramList)
  {
    if (parambox == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    c = paramInt;
    d = parambox;
    b = f.b();
    f = new boy.b(e.b(), (byte)0);
    g = new boy.a();
    boy.b.a(f, paramBoolean2);
    boy.a.a(g, paramBoolean1);
    j = paramList;
  }
  
  private boolean d(boj paramboj)
  {
    if ((!i) && (Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    try
    {
      if (l != null) {
        return false;
      }
      if ((boy.b.a(f)) && (boy.a.a(g))) {
        return false;
      }
    }
    finally {}
    l = paramboj;
    d.b(c);
    return true;
  }
  
  final void a(long paramLong)
  {
    b += paramLong;
  }
  
  public final void a(boj paramboj)
  {
    if (!d(paramboj)) {
      return;
    }
    d.b(c, paramboj);
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
    //   5: getfield 58	boy:l	Lboj;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnull +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 90	boy:f	Lboy$b;
    //   21: invokestatic 120	boy$b:a	(Lboy$b;)Z
    //   24: ifne +13 -> 37
    //   27: aload_0
    //   28: getfield 90	boy:f	Lboy$b;
    //   31: invokestatic 128	boy$b:b	(Lboy$b;)Z
    //   34: ifeq +32 -> 66
    //   37: aload_0
    //   38: getfield 93	boy:g	Lboy$a;
    //   41: invokestatic 123	boy$a:a	(Lboy$a;)Z
    //   44: ifne +13 -> 57
    //   47: aload_0
    //   48: getfield 93	boy:g	Lboy$a;
    //   51: invokestatic 130	boy$a:b	(Lboy$a;)Z
    //   54: ifeq +12 -> 66
    //   57: aload_0
    //   58: getfield 166	boy:e	Ljava/util/List;
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
    //   0	76	0	this	boy
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
  
  public final void b(boj paramboj)
  {
    if (!d(paramboj)) {
      return;
    }
    d.a(c, paramboj);
  }
  
  public final boolean b()
  {
    if ((c & 0x1) == 1) {}
    for (int m = 1; d.b == m; m = 0) {
      return true;
    }
    return false;
  }
  
  public final List<bom> c()
  {
    try
    {
      h.c();
      h.b();
      if (e != null)
      {
        List localList = e;
        return localList;
      }
      throw new IOException("stream was reset: " + l);
    }
    finally {}
  }
  
  final void c(boj paramboj)
  {
    try
    {
      if (l == null) {
        l = paramboj;
      }
      return;
    }
    finally
    {
      paramboj = finally;
      throw paramboj;
    }
  }
  
  public final cbj d()
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
      boy.b.a(f, true);
      boolean bool = a();
      if (!bool) {
        d.b(c);
      }
      return;
    }
    finally {}
  }
  
  final class a
    implements cbj
  {
    private final cav c = new cav();
    private boolean d;
    private boolean e;
    
    static
    {
      if (!boy.class.desiredAssertionStatus()) {}
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
      //   1: getfield 31	boy$a:b	Lboy;
      //   4: astore 5
      //   6: aload 5
      //   8: monitorenter
      //   9: aload_0
      //   10: getfield 31	boy$a:b	Lboy;
      //   13: invokestatic 43	boy:f	(Lboy;)Lboy$c;
      //   16: invokevirtual 47	boy$c:c	()V
      //   19: aload_0
      //   20: getfield 31	boy$a:b	Lboy;
      //   23: getfield 50	boy:b	J
      //   26: lconst_0
      //   27: lcmp
      //   28: ifgt +56 -> 84
      //   31: aload_0
      //   32: getfield 52	boy$a:e	Z
      //   35: ifne +49 -> 84
      //   38: aload_0
      //   39: getfield 54	boy$a:d	Z
      //   42: ifne +42 -> 84
      //   45: aload_0
      //   46: getfield 31	boy$a:b	Lboy;
      //   49: invokestatic 57	boy:d	(Lboy;)Lboj;
      //   52: ifnonnull +32 -> 84
      //   55: invokestatic 59	boy:f	()V
      //   58: goto -39 -> 19
      //   61: astore 6
      //   63: aload_0
      //   64: getfield 31	boy$a:b	Lboy;
      //   67: invokestatic 43	boy:f	(Lboy;)Lboy$c;
      //   70: invokevirtual 61	boy$c:b	()V
      //   73: aload 6
      //   75: athrow
      //   76: astore 6
      //   78: aload 5
      //   80: monitorexit
      //   81: aload 6
      //   83: athrow
      //   84: aload_0
      //   85: getfield 31	boy$a:b	Lboy;
      //   88: invokestatic 43	boy:f	(Lboy;)Lboy$c;
      //   91: invokevirtual 61	boy$c:b	()V
      //   94: aload_0
      //   95: getfield 31	boy$a:b	Lboy;
      //   98: invokestatic 64	boy:g	(Lboy;)V
      //   101: aload_0
      //   102: getfield 31	boy$a:b	Lboy;
      //   105: getfield 50	boy:b	J
      //   108: aload_0
      //   109: getfield 38	boy$a:c	Lcav;
      //   112: getfield 65	cav:b	J
      //   115: invokestatic 71	java/lang/Math:min	(JJ)J
      //   118: lstore_3
      //   119: aload_0
      //   120: getfield 31	boy$a:b	Lboy;
      //   123: astore 6
      //   125: aload 6
      //   127: aload 6
      //   129: getfield 50	boy:b	J
      //   132: lload_3
      //   133: lsub
      //   134: putfield 50	boy:b	J
      //   137: aload 5
      //   139: monitorexit
      //   140: aload_0
      //   141: getfield 31	boy$a:b	Lboy;
      //   144: invokestatic 74	boy:a	(Lboy;)Lbox;
      //   147: astore 5
      //   149: aload_0
      //   150: getfield 31	boy$a:b	Lboy;
      //   153: invokestatic 77	boy:b	(Lboy;)I
      //   156: istore_2
      //   157: iload_1
      //   158: ifeq +30 -> 188
      //   161: lload_3
      //   162: aload_0
      //   163: getfield 38	boy$a:c	Lcav;
      //   166: getfield 65	cav:b	J
      //   169: lcmp
      //   170: ifne +18 -> 188
      //   173: iconst_1
      //   174: istore_1
      //   175: aload 5
      //   177: iload_2
      //   178: iload_1
      //   179: aload_0
      //   180: getfield 38	boy$a:c	Lcav;
      //   183: lload_3
      //   184: invokevirtual 82	box:a	(IZLcav;J)V
      //   187: return
      //   188: iconst_0
      //   189: istore_1
      //   190: goto -15 -> 175
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	193	0	this	a
      //   0	193	1	paramBoolean	boolean
      //   156	22	2	i	int
      //   118	66	3	l	long
      //   4	172	5	localObject1	Object
      //   61	13	6	localObject2	Object
      //   76	6	6	localObject3	Object
      //   123	5	6	localboy	boy
      // Exception table:
      //   from	to	target	type
      //   19	58	61	finally
      //   9	19	76	finally
      //   63	76	76	finally
      //   78	81	76	finally
      //   84	140	76	finally
    }
    
    public final cbl E_()
    {
      return boy.f(boy.this);
    }
    
    public final void a_(cav paramcav, long paramLong)
    {
      if ((!a) && (Thread.holdsLock(boy.this))) {
        throw new AssertionError();
      }
      c.a_(paramcav, paramLong);
      while (c.b >= 16384L) {
        a(false);
      }
    }
    
    public final void close()
    {
      if ((!a) && (Thread.holdsLock(boy.this))) {
        throw new AssertionError();
      }
      synchronized (boy.this)
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
      boy.a(boy.this).a(boy.b(boy.this), true, null, 0L);
      label113:
      synchronized (boy.this)
      {
        d = true;
        boy.a(boy.this).c();
        boy.e(boy.this);
        return;
      }
    }
    
    public final void flush()
    {
      if ((!a) && (Thread.holdsLock(boy.this))) {
        throw new AssertionError();
      }
      synchronized (boy.this)
      {
        boy.g(boy.this);
        if (c.b > 0L) {
          a(false);
        }
      }
      boy.a(boy.this).c();
    }
  }
  
  final class b
    implements cbk
  {
    private final cav c = new cav();
    private final cav d = new cav();
    private final long e;
    private boolean f;
    private boolean g;
    
    static
    {
      if (!boy.class.desiredAssertionStatus()) {}
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
      //   1: getfield 34	boy$b:b	Lboy;
      //   4: invokestatic 55	boy:c	(Lboy;)Lboy$c;
      //   7: invokevirtual 59	boy$c:c	()V
      //   10: aload_0
      //   11: getfield 43	boy$b:d	Lcav;
      //   14: getfield 61	cav:b	J
      //   17: lconst_0
      //   18: lcmp
      //   19: ifne +46 -> 65
      //   22: aload_0
      //   23: getfield 51	boy$b:g	Z
      //   26: ifne +39 -> 65
      //   29: aload_0
      //   30: getfield 63	boy$b:f	Z
      //   33: ifne +32 -> 65
      //   36: aload_0
      //   37: getfield 34	boy$b:b	Lboy;
      //   40: invokestatic 66	boy:d	(Lboy;)Lboj;
      //   43: ifnonnull +22 -> 65
      //   46: invokestatic 68	boy:f	()V
      //   49: goto -39 -> 10
      //   52: astore_1
      //   53: aload_0
      //   54: getfield 34	boy$b:b	Lboy;
      //   57: invokestatic 55	boy:c	(Lboy;)Lboy$c;
      //   60: invokevirtual 70	boy$c:b	()V
      //   63: aload_1
      //   64: athrow
      //   65: aload_0
      //   66: getfield 34	boy$b:b	Lboy;
      //   69: invokestatic 55	boy:c	(Lboy;)Lboy$c;
      //   72: invokevirtual 70	boy$c:b	()V
      //   75: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	76	0	this	b
      //   52	12	1	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   10	49	52	finally
    }
    
    public final cbl E_()
    {
      return boy.c(boy.this);
    }
    
    public final long a(cav arg1, long paramLong)
    {
      if (paramLong < 0L) {
        throw new IllegalArgumentException("byteCount < 0: " + paramLong);
      }
      synchronized (boy.this)
      {
        b();
        if (f) {
          throw new IOException("stream closed");
        }
      }
      if (boy.d(boy.this) != null) {
        throw new IOException("stream was reset: " + boy.d(boy.this));
      }
      if (d.b == 0L) {
        return -1L;
      }
      paramLong = d.a(???, Math.min(paramLong, d.b));
      ??? = boy.this;
      a += paramLong;
      if (a >= ae.b() / 2)
      {
        boy.a(boy.this).a(boy.b(boy.this), a);
        a = 0L;
      }
      synchronized (boy.a(boy.this))
      {
        ??? = boy.a(boy.this);
        c += paramLong;
        if (ac >= ae.b() / 2)
        {
          boy.a(boy.this).a(0, ac);
          ac = 0L;
        }
        return paramLong;
      }
    }
    
    final void a(cax paramcax, long paramLong)
    {
      long l = paramLong;
      if (!a)
      {
        l = paramLong;
        if (Thread.holdsLock(boy.this)) {
          throw new AssertionError();
        }
      }
      for (;;)
      {
        l -= paramLong;
        synchronized (boy.this)
        {
          paramLong = d.b;
          d.a(c);
          if (l > 0L) {}
          boolean bool;
          synchronized (boy.this)
          {
            bool = g;
            int i;
            if (d.b + l > e)
            {
              i = 1;
              if (i != 0)
              {
                paramcax.f(l);
                b(boj.h);
              }
            }
            else
            {
              i = 0;
            }
          }
          if (bool)
          {
            paramcax.f(l);
            return;
          }
          paramLong = paramcax.a(c, l);
          if (paramLong != -1L) {
            continue;
          }
          throw new EOFException();
        }
      }
    }
    
    public final void close()
    {
      synchronized (boy.this)
      {
        f = true;
        d.p();
        boy.e(boy.this);
        return;
      }
    }
  }
  
  final class c
    extends cat
  {
    c() {}
    
    protected final void a()
    {
      b(boj.l);
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
 * Qualified Name:     boy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */