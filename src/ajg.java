public final class ajg
  implements ajf.a
{
  private final ajf.a a;
  private volatile int b;
  private volatile int c = 0;
  
  ajg(int paramInt, @chc ajf.a parama)
  {
    b = paramInt;
    a = ((ajf.a)co.a(parama));
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_0
    //   4: getfield 21	ajg:b	I
    //   7: iconst_1
    //   8: isub
    //   9: putfield 21	ajg:b	I
    //   12: aload_0
    //   13: getfield 21	ajg:b	I
    //   16: ifne +19 -> 35
    //   19: aload_0
    //   20: getfield 19	ajg:c	I
    //   23: ifne +15 -> 38
    //   26: aload_0
    //   27: getfield 28	ajg:a	Lajf$a;
    //   30: invokeinterface 32 1 0
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: aload_0
    //   39: getfield 28	ajg:a	Lajf$a;
    //   42: invokeinterface 34 1 0
    //   47: goto -12 -> 35
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	ajg
    //   50	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	35	50	finally
    //   38	47	50	finally
  }
  
  public final void a()
  {
    c();
  }
  
  public final void b()
  {
    c += 1;
    c();
  }
}

/* Location:
 * Qualified Name:     ajg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */