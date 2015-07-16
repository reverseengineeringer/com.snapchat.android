import java.io.IOException;
import java.io.InterruptedIOException;

public class cat
  extends cbl
{
  private static cat a;
  private boolean e;
  private cat f;
  private long g;
  
  private static void a(cat paramcat, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (a == null)
        {
          a = new cat();
          new cat.a().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          g = (Math.min(paramLong, paramcat.f() - l) + l);
          paramLong = g;
          localcat = a;
          if ((f != null) && (paramLong - l >= f.g - l)) {
            break label174;
          }
          f = f;
          f = paramcat;
          paramcat = a;
          if (localcat == paramcat) {}
          return;
        }
        if (paramLong != 0L)
        {
          g = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label166;
        }
      }
      finally {}
      g = paramcat.f();
      continue;
      label166:
      throw new AssertionError();
      label174:
      cat localcat = f;
    }
  }
  
  /* Error */
  private static boolean a(cat paramcat)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	cat:a	Lcat;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +39 -> 47
    //   11: aload_2
    //   12: getfield 48	cat:f	Lcat;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_2
    //   20: aload_0
    //   21: getfield 48	cat:f	Lcat;
    //   24: putfield 48	cat:f	Lcat;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 48	cat:f	Lcat;
    //   32: iconst_0
    //   33: istore_1
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_1
    //   38: ireturn
    //   39: aload_2
    //   40: getfield 48	cat:f	Lcat;
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
    //   0	58	0	paramcat	cat
    //   33	16	1	bool	boolean
    //   6	38	2	localcat	cat
    // Exception table:
    //   from	to	target	type
    //   3	7	52	finally
    //   11	32	52	finally
    //   39	44	52	finally
  }
  
  /* Error */
  private static cat b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 25	cat:a	Lcat;
    //   8: getfield 48	cat:f	Lcat;
    //   11: astore_3
    //   12: aload_3
    //   13: ifnonnull +8 -> 21
    //   16: ldc 2
    //   18: monitorexit
    //   19: aload_2
    //   20: areturn
    //   21: invokestatic 36	java/lang/System:nanoTime	()J
    //   24: lstore_0
    //   25: aload_3
    //   26: getfield 46	cat:g	J
    //   29: lload_0
    //   30: lsub
    //   31: lconst_0
    //   32: lcmp
    //   33: ifgt -17 -> 16
    //   36: getstatic 25	cat:a	Lcat;
    //   39: aload_3
    //   40: getfield 48	cat:f	Lcat;
    //   43: putfield 48	cat:f	Lcat;
    //   46: aload_3
    //   47: aconst_null
    //   48: putfield 48	cat:f	Lcat;
    //   51: aload_3
    //   52: astore_2
    //   53: goto -37 -> 16
    //   56: astore_2
    //   57: ldc 2
    //   59: monitorexit
    //   60: aload_2
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   24	6	0	l	long
    //   1	52	2	localObject1	Object
    //   56	5	2	localObject2	Object
    //   11	41	3	localcat	cat
    // Exception table:
    //   from	to	target	type
    //   5	12	56	finally
    //   21	25	56	finally
    //   25	51	56	finally
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
          cat localcat = cat.e();
          if (localcat != null) {
            localcat.a();
          }
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}

/* Location:
 * Qualified Name:     cat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */