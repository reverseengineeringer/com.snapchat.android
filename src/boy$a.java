final class boy$a
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
  
  boy$a(boy paramboy) {}
  
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
    return boy.f(b);
  }
  
  public final void a_(cav paramcav, long paramLong)
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    c.a_(paramcav, paramLong);
    while (c.b >= 16384L) {
      a(false);
    }
  }
  
  public final void close()
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    synchronized (b)
    {
      if (d) {
        return;
      }
      if (b.g.e) {
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
    boy.a(b).a(boy.b(b), true, null, 0L);
    label113:
    synchronized (b)
    {
      d = true;
      boy.a(b).c();
      boy.e(b);
      return;
    }
  }
  
  public final void flush()
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    synchronized (b)
    {
      boy.g(b);
      if (c.b > 0L) {
        a(false);
      }
    }
    boy.a(b).c();
  }
}

/* Location:
 * Qualified Name:     boy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */