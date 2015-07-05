import java.io.EOFException;
import java.io.IOException;

final class bnx$b
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
  
  private bnx$b(bnx parambnx, long paramLong)
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
    return bnx.c(b);
  }
  
  public final long a(bzu arg1, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    synchronized (b)
    {
      b();
      if (f) {
        throw new IOException("stream closed");
      }
    }
    if (bnx.d(b) != null) {
      throw new IOException("stream was reset: " + bnx.d(b));
    }
    if (d.b == 0L) {
      return -1L;
    }
    paramLong = d.a(???, Math.min(paramLong, d.b));
    ??? = b;
    a += paramLong;
    if (b.a >= ab).e.b() / 2)
    {
      bnx.a(b).a(bnx.b(b), b.a);
      b.a = 0L;
    }
    synchronized (bnx.a(b))
    {
      ??? = bnx.a(b);
      c += paramLong;
      if (ab).c >= ab).e.b() / 2)
      {
        bnx.a(b).a(0, ab).c);
        ab).c = 0L;
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
      if (Thread.holdsLock(b)) {
        throw new AssertionError();
      }
    }
    for (;;)
    {
      l -= paramLong;
      synchronized (b)
      {
        if (d.b == 0L)
        {
          i = 1;
          d.a(c);
          if (i != 0) {
            b.notifyAll();
          }
          if (l > 0L) {}
          boolean bool;
          synchronized (b)
          {
            bool = g;
            if (d.b + l > e)
            {
              i = 1;
              if (i != 0)
              {
                parambzw.f(l);
                b.b(bni.h);
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
    synchronized (b)
    {
      f = true;
      d.p();
      b.notifyAll();
      bnx.f(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bnx.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */