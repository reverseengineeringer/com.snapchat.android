import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

final class bnw$b
  extends bmk
  implements bnj.a
{
  bnj b;
  
  private bnw$b(bnw parambnw)
  {
    super("OkHttp %s", new Object[] { bnw.a(parambnw) });
  }
  
  /* Error */
  protected final void a()
  {
    // Byte code:
    //   0: getstatic 44	bni:g	Lbni;
    //   3: astore_3
    //   4: getstatic 44	bni:g	Lbni;
    //   7: astore 4
    //   9: aload_3
    //   10: astore_2
    //   11: aload_3
    //   12: astore_1
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 20	bnw$b:c	Lbnw;
    //   18: getfield 47	bnw:g	Lbny;
    //   21: aload_0
    //   22: getfield 20	bnw$b:c	Lbnw;
    //   25: getfield 51	bnw:h	Ljava/net/Socket;
    //   28: invokestatic 56	cad:b	(Ljava/net/Socket;)Lcaj;
    //   31: invokestatic 59	cad:a	(Lcaj;)Lbzw;
    //   34: aload_0
    //   35: getfield 20	bnw$b:c	Lbnw;
    //   38: getfield 62	bnw:b	Z
    //   41: invokeinterface 67 3 0
    //   46: putfield 69	bnw$b:b	Lbnj;
    //   49: aload_3
    //   50: astore_2
    //   51: aload_3
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 20	bnw$b:c	Lbnw;
    //   57: getfield 62	bnw:b	Z
    //   60: ifne +16 -> 76
    //   63: aload_3
    //   64: astore_2
    //   65: aload_3
    //   66: astore_1
    //   67: aload_0
    //   68: getfield 69	bnw$b:b	Lbnj;
    //   71: invokeinterface 73 1 0
    //   76: aload_3
    //   77: astore_2
    //   78: aload_3
    //   79: astore_1
    //   80: aload_0
    //   81: getfield 69	bnw$b:b	Lbnj;
    //   84: aload_0
    //   85: invokeinterface 76 2 0
    //   90: ifne -14 -> 76
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: astore_1
    //   97: getstatic 78	bni:a	Lbni;
    //   100: astore_3
    //   101: aload_3
    //   102: astore_2
    //   103: aload_3
    //   104: astore_1
    //   105: getstatic 81	bni:l	Lbni;
    //   108: astore 5
    //   110: aload_0
    //   111: getfield 20	bnw$b:c	Lbnw;
    //   114: aload_3
    //   115: aload 5
    //   117: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
    //   120: aload_0
    //   121: getfield 69	bnw$b:b	Lbnj;
    //   124: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
    //   127: return
    //   128: astore_1
    //   129: aload_2
    //   130: astore_1
    //   131: getstatic 91	bni:b	Lbni;
    //   134: astore_3
    //   135: getstatic 91	bni:b	Lbni;
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 20	bnw$b:c	Lbnw;
    //   143: aload_3
    //   144: aload_1
    //   145: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
    //   148: aload_0
    //   149: getfield 69	bnw$b:b	Lbnj;
    //   152: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
    //   155: return
    //   156: astore_2
    //   157: aload_1
    //   158: astore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_0
    //   162: getfield 20	bnw$b:c	Lbnw;
    //   165: aload_3
    //   166: aload 4
    //   168: invokestatic 84	bnw:a	(Lbnw;Lbni;Lbni;)V
    //   171: aload_0
    //   172: getfield 69	bnw$b:b	Lbnj;
    //   175: invokestatic 89	bmp:a	(Ljava/io/Closeable;)V
    //   178: aload_1
    //   179: athrow
    //   180: astore_2
    //   181: goto -10 -> 171
    //   184: astore_1
    //   185: goto -24 -> 161
    //   188: astore_1
    //   189: goto -41 -> 148
    //   192: astore_1
    //   193: goto -73 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	196	0	this	b
    //   12	93	1	localObject1	Object
    //   128	1	1	localIOException1	IOException
    //   130	49	1	localObject2	Object
    //   184	1	1	localObject3	Object
    //   188	1	1	localIOException2	IOException
    //   192	1	1	localIOException3	IOException
    //   10	120	2	localObject4	Object
    //   156	4	2	localObject5	Object
    //   180	1	2	localIOException4	IOException
    //   3	163	3	localObject6	Object
    //   7	160	4	localbni1	bni
    //   108	8	5	localbni2	bni
    // Exception table:
    //   from	to	target	type
    //   13	49	128	java/io/IOException
    //   53	63	128	java/io/IOException
    //   67	76	128	java/io/IOException
    //   80	93	128	java/io/IOException
    //   97	101	128	java/io/IOException
    //   105	110	128	java/io/IOException
    //   13	49	156	finally
    //   53	63	156	finally
    //   67	76	156	finally
    //   80	93	156	finally
    //   97	101	156	finally
    //   105	110	156	finally
    //   131	135	156	finally
    //   161	171	180	java/io/IOException
    //   135	139	184	finally
    //   139	148	188	java/io/IOException
    //   110	120	192	java/io/IOException
  }
  
  public final void a(int paramInt, long paramLong)
  {
    if (paramInt == 0) {
      synchronized (c)
      {
        bnw localbnw = c;
        d += paramLong;
        c.notifyAll();
        return;
      }
    }
    ??? = c.a(paramInt);
    if (??? != null) {
      try
      {
        ((bnx)???).a(paramLong);
        return;
      }
      finally {}
    }
  }
  
  public final void a(int paramInt, bni parambni)
  {
    if (bnw.a(c, paramInt)) {
      bnw.a(c, paramInt, parambni);
    }
    bnx localbnx;
    do
    {
      return;
      localbnx = c.b(paramInt);
    } while (localbnx == null);
    localbnx.c(parambni);
  }
  
  public final void a(int paramInt, bzx arg2)
  {
    ??? = c;
    synchronized (c)
    {
      bnx[] arrayOfbnx = (bnx[])bnw.e(c).values().toArray(new bnx[bnw.e(c).size()]);
      bnw.i(c);
      int j = arrayOfbnx.length;
      int i = 0;
      if (i < j)
      {
        ??? = arrayOfbnx[i];
        if ((c > paramInt) && (???.b()))
        {
          ???.c(bni.k);
          c.b(c);
        }
        i += 1;
      }
    }
  }
  
  public final void a(int paramInt, List<bnl> paramList)
  {
    bnw.a(c, paramInt, paramList);
  }
  
  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      bns localbns = bnw.c(c, paramInt1);
      if (localbns != null)
      {
        if ((c != -1L) || (b == -1L)) {
          throw new IllegalStateException();
        }
        c = System.nanoTime();
        a.countDown();
      }
      return;
    }
    bnw.a(c, paramInt1, paramInt2);
  }
  
  public final void a(boolean paramBoolean, int paramInt1, bzw parambzw, int paramInt2)
  {
    if (bnw.a(c, paramInt1)) {
      bnw.a(c, paramInt1, parambzw, paramInt2, paramBoolean);
    }
    bnx localbnx;
    do
    {
      return;
      localbnx = c.a(paramInt1);
      if (localbnx == null)
      {
        c.a(paramInt1, bni.c);
        parambzw.f(paramInt2);
        return;
      }
      if ((!bnx.i) && (Thread.holdsLock(localbnx))) {
        throw new AssertionError();
      }
      f.a(parambzw, paramInt2);
    } while (!paramBoolean);
    localbnx.e();
  }
  
  public final void a(boolean paramBoolean, final bnu parambnu)
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        int j = c.f.b();
        if (paramBoolean)
        {
          localbnu = c.f;
          c = 0;
          b = 0;
          a = 0;
          Arrays.fill(d, 0);
        }
        bnu localbnu = c.f;
        i = 0;
        if (i < 10)
        {
          if (!parambnu.a(i)) {
            break label356;
          }
          localbnu.a(i, parambnu.b(i), d[i]);
          break label356;
        }
        if (c.a == blz.d) {
          bnw.d().execute(new bmk("OkHttp %s ACK Settings", new Object[] { bnw.a(c) })
          {
            public final void a()
            {
              try
              {
                c.i.a(parambnu);
                return;
              }
              catch (IOException localIOException) {}
            }
          });
        }
        i = c.f.b();
        if ((i == -1) || (i == j)) {
          break label348;
        }
        l = i - j;
        if (!bnw.g(c))
        {
          parambnu = c;
          d += l;
          if (l > 0L) {
            parambnu.notifyAll();
          }
          bnw.h(c);
        }
        if (bnw.e(c).isEmpty()) {
          break label343;
        }
        parambnu = (bnx[])bnw.e(c).values().toArray(new bnx[bnw.e(c).size()]);
        if ((parambnu == null) || (l == 0L)) {
          break label342;
        }
        j = parambnu.length;
        i = 0;
        if (i >= j) {
          break label342;
        }
      }
      synchronized (parambnu[i])
      {
        ???.a(l);
        i += 1;
        continue;
        parambnu = finally;
        throw parambnu;
      }
      label342:
      return;
      label343:
      parambnu = null;
      continue;
      label348:
      parambnu = null;
      long l = 0L;
      continue;
      label356:
      i += 1;
    }
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, final List<bnl> paramList, bnm parambnm)
  {
    int j = 0;
    int k = 0;
    int i = 0;
    boolean bool = true;
    if (bnw.a(c, paramInt))
    {
      bnw.a(c, paramInt, paramList, paramBoolean2);
      return;
    }
    synchronized (c)
    {
      if (bnw.b(c)) {
        return;
      }
    }
    bnx localbnx = c.a(paramInt);
    if (localbnx == null) {
      if ((parambnm == bnm.b) || (parambnm == bnm.c)) {
        break label506;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        c.a(paramInt, bni.c);
        return;
      }
      if (paramInt <= bnw.c(c)) {
        return;
      }
      if (paramInt % 2 == bnw.d(c) % 2) {
        return;
      }
      paramList = new bnx(paramInt, c, paramBoolean1, paramBoolean2, paramList);
      bnw.b(c, paramInt);
      bnw.e(c).put(Integer.valueOf(paramInt), paramList);
      bnw.d().execute(new bmk("OkHttp %s stream %d", new Object[] { bnw.a(c), Integer.valueOf(paramInt) })
      {
        public final void a()
        {
          try
          {
            bnw.f(c).a(paramList);
            return;
          }
          catch (IOException localIOException)
          {
            throw new RuntimeException(localIOException);
          }
        }
      });
      return;
      if (parambnm == bnm.a) {}
      for (i = 1; i != 0; i = 0)
      {
        localbnx.b(bni.b);
        c.b(paramInt);
        return;
      }
      if ((!bnx.i) && (Thread.holdsLock(localbnx))) {
        throw new AssertionError();
      }
      ??? = null;
      for (;;)
      {
        try
        {
          if (e == null)
          {
            paramInt = j;
            if (parambnm == bnm.c) {
              paramInt = 1;
            }
            if (paramInt != 0)
            {
              paramList = bni.b;
              paramBoolean1 = bool;
              if (paramList == null) {
                break label485;
              }
              localbnx.b(paramList);
              if (!paramBoolean2) {
                break;
              }
              localbnx.e();
              return;
            }
            e = paramList;
            paramBoolean1 = localbnx.a();
            localbnx.notifyAll();
            paramList = ???;
            continue;
          }
          paramInt = k;
        }
        finally {}
        if (parambnm == bnm.b) {
          paramInt = 1;
        }
        if (paramInt != 0)
        {
          paramList = bni.e;
          paramBoolean1 = bool;
        }
        else
        {
          parambnm = new ArrayList();
          parambnm.addAll(e);
          parambnm.addAll(paramList);
          e = parambnm;
          paramBoolean1 = bool;
          paramList = ???;
          continue;
          label485:
          if (!paramBoolean1) {
            d.b(c);
          }
        }
      }
      label506:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     bnw.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */