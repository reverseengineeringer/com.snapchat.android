import java.io.EOFException;
import java.io.IOException;

final class boy$b
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
  
  private boy$b(boy paramboy, long paramLong)
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
    return boy.c(b);
  }
  
  public final long a(cav arg1, long paramLong)
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
    if (boy.d(b) != null) {
      throw new IOException("stream was reset: " + boy.d(b));
    }
    if (d.b == 0L) {
      return -1L;
    }
    paramLong = d.a(???, Math.min(paramLong, d.b));
    ??? = b;
    a += paramLong;
    if (b.a >= ab).e.b() / 2)
    {
      boy.a(b).a(boy.b(b), b.a);
      b.a = 0L;
    }
    synchronized (boy.a(b))
    {
      ??? = boy.a(b);
      c += paramLong;
      if (ab).c >= ab).e.b() / 2)
      {
        boy.a(b).a(0, ab).c);
        ab).c = 0L;
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
      if (Thread.holdsLock(b)) {
        throw new AssertionError();
      }
    }
    for (;;)
    {
      l -= paramLong;
      synchronized (b)
      {
        paramLong = d.b;
        d.a(c);
        if (l > 0L) {}
        boolean bool;
        synchronized (b)
        {
          bool = g;
          int i;
          if (d.b + l > e)
          {
            i = 1;
            if (i != 0)
            {
              paramcax.f(l);
              b.b(boj.h);
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
    synchronized (b)
    {
      f = true;
      d.p();
      boy.e(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     boy.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */