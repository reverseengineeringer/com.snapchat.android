import java.io.IOException;
import java.io.InterruptedIOException;

public class bzs
  extends cak
{
  private static bzs a;
  private boolean e;
  private bzs f;
  private long g;
  
  private static void a(bzs parambzs, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (a == null)
        {
          a = new bzs();
          new bzs.a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          g = (Math.min(paramLong, parambzs.f() - l) + l);
          paramLong = g;
          localbzs = a;
          if ((f != null) && (paramLong - l >= f.g - l)) {
            break label177;
          }
          f = f;
          f = parambzs;
          if (localbzs == a) {
            bzs.class.notify();
          }
          return;
        }
        if (paramLong != 0L)
        {
          g = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label169;
        }
      }
      finally {}
      g = parambzs.f();
      continue;
      label169:
      throw new AssertionError();
      label177:
      bzs localbzs = f;
    }
  }
  
  /* Error */
  private static boolean a(bzs parambzs)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	bzs:a	Lbzs;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 48	bzs:f	Lbzs;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 48	bzs:f	Lbzs;
    //   24: putfield 48	bzs:f	Lbzs;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 48	bzs:f	Lbzs;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 48	bzs:f	Lbzs;
    //   43: astore_2
    //   44: goto -37 -> 7
    //   47: iconst_1
    //   48: istore_1
    //   49: goto -15 -> 34
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	parambzs	bzs
    //   33	16	1	bool	boolean
    //   6	38	2	localbzs	bzs
    // Exception table:
    //   from	to	target	type
    //   3	7	52	finally
    //   11	32	52	finally
    //   39	44	52	finally
  }
  
  private static bzs b()
  {
    bzs localbzs1 = null;
    for (;;)
    {
      bzs localbzs2;
      try
      {
        localbzs2 = af;
        if (localbzs2 == null)
        {
          bzs.class.wait();
          return localbzs1;
        }
        long l1 = System.nanoTime();
        l1 = g - l1;
        if (l1 > 0L)
        {
          long l2 = l1 / 1000000L;
          bzs.class.wait(l2, (int)(l1 - 1000000L * l2));
          continue;
        }
        af = f;
      }
      finally {}
      f = null;
      Object localObject2 = localbzs2;
    }
  }
  
  final IOException a(IOException paramIOException)
  {
    if (!d()) {
      return paramIOException;
    }
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    localInterruptedIOException.initCause(paramIOException);
    return localInterruptedIOException;
  }
  
  public void a() {}
  
  final void a(boolean paramBoolean)
  {
    if ((d()) && (paramBoolean)) {
      throw new InterruptedIOException("timeout");
    }
  }
  
  public final void c()
  {
    if (e) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = d;
    boolean bool = c;
    if ((l == 0L) && (!bool)) {
      return;
    }
    e = true;
    a(this, l, bool);
  }
  
  public final boolean d()
  {
    if (!e) {
      return false;
    }
    e = false;
    return a(this);
  }
  
  static final class a
    extends Thread
  {
    public a()
    {
      super();
      setDaemon(true);
    }
    
    public final void run()
    {
      try
      {
        for (;;)
        {
          bzs localbzs = bzs.e();
          if (localbzs != null) {
            localbzs.a();
          }
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}

/* Location:
 * Qualified Name:     bzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */