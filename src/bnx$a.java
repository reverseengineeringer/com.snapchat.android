final class bnx$a
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
  
  bnx$a(bnx parambnx) {}
  
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
    return bnx.g(b);
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    if ((!a) && (Thread.holdsLock(b))) {
      throw new AssertionError();
    }
    c.a_(parambzu, paramLong);
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
    bnx.a(b).a(bnx.b(b), true, null, 0L);
    label113:
    synchronized (b)
    {
      d = true;
      bnx.a(b).c();
      bnx.f(b);
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
      bnx.h(b);
      if (c.b > 0L) {
        a(false);
      }
    }
    bnx.a(b).c();
  }
}

/* Location:
 * Qualified Name:     bnx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */