import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

final class box$b
  extends bnl
  implements bok.a
{
  bok b;
  
  private box$b(box parambox)
  {
    super("OkHttp %s", new Object[] { box.a(parambox) });
  }
  
  /* Error */
  protected final void a()
  {
    // Byte code:
    //   0: getstatic 44	boj:g	Lboj;
    //   3: astore_3
    //   4: getstatic 44	boj:g	Lboj;
    //   7: astore 4
    //   9: aload_3
    //   10: astore_2
    //   11: aload_3
    //   12: astore_1
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 20	box$b:c	Lbox;
    //   18: getfield 47	box:g	Lboz;
    //   21: aload_0
    //   22: getfield 20	box$b:c	Lbox;
    //   25: getfield 51	box:h	Ljava/net/Socket;
    //   28: invokestatic 56	cbe:b	(Ljava/net/Socket;)Lcbk;
    //   31: invokestatic 59	cbe:a	(Lcbk;)Lcax;
    //   34: aload_0
    //   35: getfield 20	box$b:c	Lbox;
    //   38: getfield 62	box:b	Z
    //   41: invokeinterface 67 3 0
    //   46: putfield 69	box$b:b	Lbok;
    //   49: aload_3
    //   50: astore_2
    //   51: aload_3
    //   52: astore_1
    //   53: aload_0
    //   54: getfield 20	box$b:c	Lbox;
    //   57: getfield 62	box:b	Z
    //   60: ifne +16 -> 76
    //   63: aload_3
    //   64: astore_2
    //   65: aload_3
    //   66: astore_1
    //   67: aload_0
    //   68: getfield 69	box$b:b	Lbok;
    //   71: invokeinterface 73 1 0
    //   76: aload_3
    //   77: astore_2
    //   78: aload_3
    //   79: astore_1
    //   80: aload_0
    //   81: getfield 69	box$b:b	Lbok;
    //   84: aload_0
    //   85: invokeinterface 76 2 0
    //   90: ifne -14 -> 76
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: astore_1
    //   97: getstatic 78	boj:a	Lboj;
    //   100: astore_3
    //   101: aload_3
    //   102: astore_2
    //   103: aload_3
    //   104: astore_1
    //   105: getstatic 81	boj:l	Lboj;
    //   108: astore 5
    //   110: aload_0
    //   111: getfield 20	box$b:c	Lbox;
    //   114: aload_3
    //   115: aload 5
    //   117: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
    //   120: aload_0
    //   121: getfield 69	box$b:b	Lbok;
    //   124: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
    //   127: return
    //   128: astore_1
    //   129: aload_2
    //   130: astore_1
    //   131: getstatic 91	boj:b	Lboj;
    //   134: astore_3
    //   135: getstatic 91	boj:b	Lboj;
    //   138: astore_1
    //   139: aload_0
    //   140: getfield 20	box$b:c	Lbox;
    //   143: aload_3
    //   144: aload_1
    //   145: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
    //   148: aload_0
    //   149: getfield 69	box$b:b	Lbok;
    //   152: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
    //   155: return
    //   156: astore_2
    //   157: aload_1
    //   158: astore_3
    //   159: aload_2
    //   160: astore_1
    //   161: aload_0
    //   162: getfield 20	box$b:c	Lbox;
    //   165: aload_3
    //   166: aload 4
    //   168: invokestatic 84	box:a	(Lbox;Lboj;Lboj;)V
    //   171: aload_0
    //   172: getfield 69	box$b:b	Lbok;
    //   175: invokestatic 89	bnq:a	(Ljava/io/Closeable;)V
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
    //   7	160	4	localboj1	boj
    //   108	8	5	localboj2	boj
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
        box localbox = c;
        d += paramLong;
        return;
      }
    }
    ??? = c.a(paramInt);
    if (??? != null) {
      try
      {
        ((boy)???).a(paramLong);
        return;
      }
      finally {}
    }
  }
  
  public final void a(int paramInt, boj paramboj)
  {
    if (box.a(c, paramInt)) {
      box.a(c, paramInt, paramboj);
    }
    boy localboy;
    do
    {
      return;
      localboy = c.b(paramInt);
    } while (localboy == null);
    localboy.c(paramboj);
  }
  
  public final void a(int paramInt, cay arg2)
  {
    ??? = c;
    synchronized (c)
    {
      boy[] arrayOfboy = (boy[])box.e(c).values().toArray(new boy[box.e(c).size()]);
      box.i(c);
      int j = arrayOfboy.length;
      int i = 0;
      if (i < j)
      {
        ??? = arrayOfboy[i];
        if ((c > paramInt) && (???.b()))
        {
          ???.c(boj.k);
          c.b(c);
        }
        i += 1;
      }
    }
  }
  
  public final void a(int paramInt, List<bom> paramList)
  {
    box.a(c, paramInt, paramList);
  }
  
  public final void a(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if (paramBoolean)
    {
      bot localbot = box.c(c, paramInt1);
      if (localbot != null)
      {
        if ((c != -1L) || (b == -1L)) {
          throw new IllegalStateException();
        }
        c = System.nanoTime();
        a.countDown();
      }
      return;
    }
    box.a(c, paramInt1, paramInt2);
  }
  
  public final void a(boolean paramBoolean, int paramInt1, cax paramcax, int paramInt2)
  {
    if (box.a(c, paramInt1)) {
      box.a(c, paramInt1, paramcax, paramInt2, paramBoolean);
    }
    boy localboy;
    do
    {
      return;
      localboy = c.a(paramInt1);
      if (localboy == null)
      {
        c.a(paramInt1, boj.c);
        paramcax.f(paramInt2);
        return;
      }
      if ((!boy.i) && (Thread.holdsLock(localboy))) {
        throw new AssertionError();
      }
      f.a(paramcax, paramInt2);
    } while (!paramBoolean);
    localboy.e();
  }
  
  public final void a(boolean paramBoolean, final bov parambov)
  {
    for (;;)
    {
      int i;
      synchronized (c)
      {
        int j = c.f.b();
        if (paramBoolean)
        {
          localbov = c.f;
          c = 0;
          b = 0;
          a = 0;
          Arrays.fill(d, 0);
        }
        bov localbov = c.f;
        i = 0;
        if (i < 10)
        {
          if (!parambov.a(i)) {
            break label345;
          }
          localbov.a(i, parambov.b(i), d[i]);
          break label345;
        }
        if (c.a == bna.d) {
          box.d().execute(new bnl("OkHttp %s ACK Settings", new Object[] { box.a(c) })
          {
            public final void a()
            {
              try
              {
                c.i.a(parambov);
                return;
              }
              catch (IOException localIOException) {}
            }
          });
        }
        i = c.f.b();
        if ((i == -1) || (i == j)) {
          break label337;
        }
        l = i - j;
        if (!box.g(c))
        {
          parambov = c;
          d += l;
          box.h(c);
        }
        if (box.e(c).isEmpty()) {
          break label332;
        }
        parambov = (boy[])box.e(c).values().toArray(new boy[box.e(c).size()]);
        if ((parambov == null) || (l == 0L)) {
          break label331;
        }
        j = parambov.length;
        i = 0;
        if (i >= j) {
          break label331;
        }
      }
      synchronized (parambov[i])
      {
        ???.a(l);
        i += 1;
        continue;
        parambov = finally;
        throw parambov;
      }
      label331:
      return;
      label332:
      parambov = null;
      continue;
      label337:
      parambov = null;
      long l = 0L;
      continue;
      label345:
      i += 1;
    }
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2, int paramInt, final List<bom> paramList, bon parambon)
  {
    int j = 0;
    int k = 0;
    int i = 0;
    boolean bool = true;
    if (box.a(c, paramInt))
    {
      box.a(c, paramInt, paramList, paramBoolean2);
      return;
    }
    synchronized (c)
    {
      if (box.b(c)) {
        return;
      }
    }
    boy localboy = c.a(paramInt);
    if (localboy == null) {
      if ((parambon == bon.b) || (parambon == bon.c)) {
        break label501;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        c.a(paramInt, boj.c);
        return;
      }
      if (paramInt <= box.c(c)) {
        return;
      }
      if (paramInt % 2 == box.d(c) % 2) {
        return;
      }
      paramList = new boy(paramInt, c, paramBoolean1, paramBoolean2, paramList);
      box.b(c, paramInt);
      box.e(c).put(Integer.valueOf(paramInt), paramList);
      box.d().execute(new bnl("OkHttp %s stream %d", new Object[] { box.a(c), Integer.valueOf(paramInt) })
      {
        public final void a()
        {
          try
          {
            box.f(c).a(paramList);
            return;
          }
          catch (IOException localIOException)
          {
            throw new RuntimeException(localIOException);
          }
        }
      });
      return;
      if (parambon == bon.a) {}
      for (i = 1; i != 0; i = 0)
      {
        localboy.b(boj.b);
        c.b(paramInt);
        return;
      }
      if ((!boy.i) && (Thread.holdsLock(localboy))) {
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
            if (parambon == bon.c) {
              paramInt = 1;
            }
            if (paramInt != 0)
            {
              paramList = boj.b;
              paramBoolean1 = bool;
              if (paramList == null) {
                break label480;
              }
              localboy.b(paramList);
              if (!paramBoolean2) {
                break;
              }
              localboy.e();
              return;
            }
            e = paramList;
            paramBoolean1 = localboy.a();
            paramList = ???;
            continue;
          }
          paramInt = k;
          if (parambon == bon.b) {
            paramInt = 1;
          }
          if (paramInt != 0)
          {
            paramList = boj.e;
            paramBoolean1 = bool;
            continue;
          }
          parambon = new ArrayList();
          parambon.addAll(e);
          parambon.addAll(paramList);
          e = parambon;
          paramBoolean1 = bool;
          paramList = ???;
          continue;
          if (paramBoolean1) {
            continue;
          }
        }
        finally {}
        label480:
        d.b(c);
      }
      label501:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     box.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */