final class bmu$b
  implements cai
{
  private boolean b;
  
  private bmu$b(bmu parambmu) {}
  
  public final cak E_()
  {
    return a.d.E_();
  }
  
  public final void a_(bzu parambzu, long paramLong)
  {
    if (b) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return;
    }
    a.d.i(paramLong);
    a.d.b("\r\n");
    a.d.a_(parambzu, paramLong);
    a.d.b("\r\n");
  }
  
  /* Error */
  public final void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	bmu$b:b	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 37	bmu$b:b	Z
    //   19: aload_0
    //   20: getfield 16	bmu$b:a	Lbmu;
    //   23: getfield 29	bmu:d	Lbzv;
    //   26: ldc 58
    //   28: invokeinterface 53 2 0
    //   33: pop
    //   34: aload_0
    //   35: getfield 16	bmu$b:a	Lbmu;
    //   38: iconst_3
    //   39: putfield 62	bmu:e	I
    //   42: goto -31 -> 11
    //   45: astore_2
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_2
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	b
    //   6	2	1	bool	boolean
    //   45	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	45	finally
    //   14	42	45	finally
  }
  
  /* Error */
  public final void flush()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	bmu$b:b	Z
    //   6: istore_1
    //   7: iload_1
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 16	bmu$b:a	Lbmu;
    //   18: getfield 29	bmu:d	Lbzv;
    //   21: invokeinterface 65 1 0
    //   26: goto -15 -> 11
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	b
    //   6	2	1	bool	boolean
    //   29	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	29	finally
    //   14	26	29	finally
  }
}

/* Location:
 * Qualified Name:     bmu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */