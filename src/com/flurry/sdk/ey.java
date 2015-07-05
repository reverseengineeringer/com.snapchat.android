package com.flurry.sdk;

import java.util.Iterator;
import java.util.List;

public class ey
{
  private static final String a = ey.class.getSimpleName();
  private final dt<a> b = new dt();
  private long c = 1000L;
  private boolean d = true;
  private boolean e = false;
  private fc f = new fc()
  {
    public void a()
    {
      try
      {
        Iterator localIterator = ey.a(ey.this).iterator();
        while (localIterator.hasNext()) {
          ((ey.a)localIterator.next()).a(ey.this);
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        el.a(6, ey.e(), "", localThrowable);
        if ((ey.b(ey.this)) && (ey.c(ey.this))) {
          do.a().a(ey.d(ey.this), ey.e(ey.this));
        }
      }
    }
  };
  
  private List<a> f()
  {
    try
    {
      List localList = b.a();
      return localList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/flurry/sdk/ey:e	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 68	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   17: aload_0
    //   18: getfield 52	com/flurry/sdk/ey:f	Lcom/flurry/sdk/fc;
    //   21: aload_0
    //   22: getfield 43	com/flurry/sdk/ey:c	J
    //   25: invokevirtual 71	com/flurry/sdk/do:a	(Ljava/lang/Runnable;J)V
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 47	com/flurry/sdk/ey:e	Z
    //   33: goto -22 -> 11
    //   36: astore_2
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_2
    //   40: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	41	0	this	ey
    //   6	2	1	bool	boolean
    //   36	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	36	finally
    //   14	33	36	finally
  }
  
  public void a(long paramLong)
  {
    c = paramLong;
  }
  
  public void a(a parama)
  {
    try
    {
      b.a(parama);
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/flurry/sdk/ey:e	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 68	com/flurry/sdk/do:a	()Lcom/flurry/sdk/do;
    //   17: aload_0
    //   18: getfield 52	com/flurry/sdk/ey:f	Lcom/flurry/sdk/fc;
    //   21: invokevirtual 80	com/flurry/sdk/do:b	(Ljava/lang/Runnable;)V
    //   24: aload_0
    //   25: iconst_0
    //   26: putfield 47	com/flurry/sdk/ey:e	Z
    //   29: goto -18 -> 11
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	ey
    //   6	2	1	bool	boolean
    //   32	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   14	29	32	finally
  }
  
  public boolean b(a parama)
  {
    try
    {
      boolean bool = b.b(parama);
      return bool;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public boolean c()
  {
    try
    {
      boolean bool = e;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int d()
  {
    try
    {
      int i = b.b();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(ey paramey);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */