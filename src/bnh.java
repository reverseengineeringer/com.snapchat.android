import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bnh
  implements Closeable
{
  static final Pattern a;
  private static final cbj u;
  private final boi c;
  private final File d;
  private final File e;
  private final File f;
  private final File g;
  private final int h;
  private long i;
  private final int j;
  private long k = 0L;
  private caw l;
  private final LinkedHashMap<String, bnh.b> m = new LinkedHashMap(0, 0.75F, true);
  private int n;
  private boolean o;
  private boolean p;
  private boolean q;
  private long r = 0L;
  private final Executor s;
  private final Runnable t = new Runnable()
  {
    public final void run()
    {
      synchronized (bnh.this)
      {
        int i;
        if (!bnh.a(bnh.this))
        {
          i = 1;
          if ((i | bnh.b(bnh.this)) == 0) {}
        }
        else
        {
          i = 0;
        }
      }
    }
  };
  
  static
  {
    if (!bnh.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = Pattern.compile("[a-z0-9_-]{1,120}");
      u = new cbj()
      {
        public final cbl E_()
        {
          return cbl.b;
        }
        
        public final void a_(cav paramAnonymouscav, long paramAnonymousLong)
        {
          paramAnonymouscav.f(paramAnonymousLong);
        }
        
        public final void close() {}
        
        public final void flush() {}
      };
      return;
    }
  }
  
  private bnh(boi paramboi, File paramFile, long paramLong, Executor paramExecutor)
  {
    c = paramboi;
    d = paramFile;
    h = 201105;
    e = new File(paramFile, "journal");
    f = new File(paramFile, "journal.tmp");
    g = new File(paramFile, "journal.bkp");
    j = 2;
    i = paramLong;
    s = paramExecutor;
  }
  
  public static bnh a(boi paramboi, File paramFile, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    return new bnh(paramboi, paramFile, paramLong, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bnq.c("OkHttp DiskLruCache")));
  }
  
  private void a(bnh.a parama, boolean paramBoolean)
  {
    int i3 = 0;
    bnh.b localb;
    try
    {
      localb = a;
      if (f != parama) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!e)
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= j) {
            break;
          }
          if (b[i1] == 0)
          {
            parama.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!c.e(d[i1]))
          {
            parama.b();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < j)
      {
        parama = d[i2];
        if (paramBoolean)
        {
          if (c.e(parama))
          {
            File localFile = c[i2];
            c.a(parama, localFile);
            l1 = b[i2];
            long l2 = c.f(localFile);
            b[i2] = l2;
            k = (k - l1 + l2);
          }
        }
        else {
          c.d(parama);
        }
      }
      else
      {
        n += 1;
        f = null;
        if ((e | paramBoolean))
        {
          e = true;
          l.b("CLEAN").g(32);
          l.b(a);
          localb.a(l);
          l.g(10);
          if (paramBoolean)
          {
            l1 = r;
            r = (1L + l1);
            g = l1;
          }
        }
        for (;;)
        {
          l.flush();
          if ((k <= i) && (!g())) {
            break;
          }
          s.execute(t);
          break;
          m.remove(a);
          l.b("REMOVE").g(32);
          l.b(a);
          l.g(10);
        }
      }
      i2 += 1;
    }
  }
  
  private boolean a(bnh.b paramb)
  {
    if (f != null) {
      f.c = true;
    }
    int i1 = 0;
    while (i1 < j)
    {
      c.d(c[i1]);
      k -= b[i1];
      b[i1] = 0L;
      i1 += 1;
    }
    n += 1;
    l.b("REMOVE").g(32).b(a).g(10);
    m.remove(a);
    if (g()) {
      s.execute(t);
    }
    return true;
  }
  
  private void b()
  {
    if ((!b) && (!Thread.holdsLock(this))) {
      throw new AssertionError();
    }
    if (p) {
      return;
    }
    if (c.e(g))
    {
      if (!c.e(e)) {
        break label183;
      }
      c.d(g);
    }
    for (;;)
    {
      if (c.e(e)) {
        try
        {
          c();
          e();
          p = true;
          return;
        }
        catch (IOException localIOException)
        {
          bno.a();
          bno.a("DiskLruCache " + d + " is corrupt: " + localIOException.getMessage() + ", removing");
          close();
          c.g(d);
          q = false;
        }
      }
      f();
      p = true;
      return;
      label183:
      c.a(g, e);
    }
  }
  
  private void c()
  {
    cax localcax = cbe.a(c.a(e));
    Object localObject3;
    Object localObject4;
    String str2;
    int i1;
    int i2;
    int i3;
    int i4;
    Object localObject2;
    try
    {
      String str1 = localcax.n();
      localObject3 = localcax.n();
      localObject4 = localcax.n();
      str2 = localcax.n();
      String str3 = localcax.n();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(h).equals(localObject4)) || (!Integer.toString(j).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      bnq.a(localcax);
      throw ((Throwable)localObject1);
      i1 = 0;
    }
  }
  
  private static void c(String paramString)
  {
    if (!a.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + paramString + "\"");
    }
  }
  
  private caw d()
  {
    cbe.a(new bni(c.c(e))
    {
      static
      {
        if (!bnh.class.desiredAssertionStatus()) {}
        for (boolean bool = true;; bool = false)
        {
          a = bool;
          return;
        }
      }
      
      protected final void a()
      {
        if ((!a) && (!Thread.holdsLock(bnh.this))) {
          throw new AssertionError();
        }
        bnh.g(bnh.this);
      }
    });
  }
  
  private void e()
  {
    c.d(f);
    Iterator localIterator = m.values().iterator();
    while (localIterator.hasNext())
    {
      bnh.b localb = (bnh.b)localIterator.next();
      int i1;
      if (f == null)
      {
        i1 = 0;
        while (i1 < j)
        {
          k += b[i1];
          i1 += 1;
        }
      }
      else
      {
        f = null;
        i1 = 0;
        while (i1 < j)
        {
          c.d(c[i1]);
          c.d(d[i1]);
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void f()
  {
    for (;;)
    {
      bnh.b localb;
      try
      {
        if (l != null) {
          l.close();
        }
        caw localcaw1 = cbe.a(c.b(f));
        try
        {
          localcaw1.b("libcore.io.DiskLruCache").g(10);
          localcaw1.b("1").g(10);
          localcaw1.j(h).g(10);
          localcaw1.j(j).g(10);
          localcaw1.g(10);
          Iterator localIterator = m.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localb = (bnh.b)localIterator.next();
          if (f != null)
          {
            localcaw1.b("DIRTY").g(32);
            localcaw1.b(a);
            localcaw1.g(10);
            continue;
            localcaw2 = finally;
          }
        }
        finally
        {
          localcaw1.close();
        }
        localcaw2.b("CLEAN").g(32);
      }
      finally {}
      localcaw2.b(a);
      localb.a(localcaw2);
      localcaw2.g(10);
    }
    localcaw2.close();
    if (c.e(e)) {
      c.a(e, g);
    }
    c.a(f, e);
    c.d(g);
    l = d();
    o = false;
  }
  
  private boolean g()
  {
    return (n >= 2000) && (n >= m.size());
  }
  
  private boolean h()
  {
    try
    {
      boolean bool = q;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void i()
  {
    try
    {
      if (h()) {
        throw new IllegalStateException("cache is closed");
      }
    }
    finally {}
  }
  
  private void j()
  {
    while (k > i) {
      a((bnh.b)m.values().iterator().next());
    }
  }
  
  public final bnh.a a(String paramString, long paramLong)
  {
    for (;;)
    {
      try
      {
        b();
        i();
        c(paramString);
        Object localObject = (bnh.b)m.get(paramString);
        if (paramLong != -1L) {
          if (localObject != null)
          {
            long l1 = g;
            if (l1 == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if ((localObject != null) && (f != null))
        {
          paramString = null;
        }
        else
        {
          l.b("DIRTY").g(32).b(paramString).g(10);
          l.flush();
          if (o)
          {
            paramString = null;
          }
          else if (localObject == null)
          {
            localObject = new bnh.b(paramString, (byte)0);
            m.put(paramString, localObject);
            paramString = (String)localObject;
            localObject = new bnh.a(paramString, (byte)0);
            f = ((bnh.a)localObject);
            paramString = (String)localObject;
          }
          else
          {
            paramString = (String)localObject;
          }
        }
      }
      finally {}
    }
  }
  
  /* Error */
  public final bnh.c a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 471	bnh:b	()V
    //   6: aload_0
    //   7: invokespecial 473	bnh:i	()V
    //   10: aload_1
    //   11: invokestatic 475	bnh:c	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 91	bnh:m	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 384	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 19	bnh$b
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +12 -> 39
    //   30: aload_3
    //   31: getfield 178	bnh$b:e	Z
    //   34: istore_2
    //   35: iload_2
    //   36: ifne +9 -> 45
    //   39: aconst_null
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: areturn
    //   45: aload_3
    //   46: invokevirtual 481	bnh$b:a	()Lbnh$c;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnonnull +8 -> 59
    //   54: aconst_null
    //   55: astore_1
    //   56: goto -15 -> 41
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 221	bnh:n	I
    //   64: iconst_1
    //   65: iadd
    //   66: putfield 221	bnh:n	I
    //   69: aload_0
    //   70: getfield 223	bnh:l	Lcaw;
    //   73: ldc_w 407
    //   76: invokeinterface 230 2 0
    //   81: bipush 32
    //   83: invokeinterface 233 2 0
    //   88: aload_1
    //   89: invokeinterface 230 2 0
    //   94: bipush 10
    //   96: invokeinterface 233 2 0
    //   101: pop
    //   102: aload_3
    //   103: astore_1
    //   104: aload_0
    //   105: invokespecial 246	bnh:g	()Z
    //   108: ifeq -67 -> 41
    //   111: aload_0
    //   112: getfield 128	bnh:s	Ljava/util/concurrent/Executor;
    //   115: aload_0
    //   116: getfield 98	bnh:t	Ljava/lang/Runnable;
    //   119: invokeinterface 252 2 0
    //   124: aload_3
    //   125: astore_1
    //   126: goto -85 -> 41
    //   129: astore_1
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	bnh
    //   0	134	1	paramString	String
    //   34	2	2	bool	boolean
    //   25	100	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	129	finally
    //   30	35	129	finally
    //   45	50	129	finally
    //   59	102	129	finally
    //   104	124	129	finally
  }
  
  /* Error */
  public final boolean b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 471	bnh:b	()V
    //   6: aload_0
    //   7: invokespecial 473	bnh:i	()V
    //   10: aload_1
    //   11: invokestatic 475	bnh:c	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 91	bnh:m	Ljava/util/LinkedHashMap;
    //   18: aload_1
    //   19: invokevirtual 384	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   22: checkcast 19	bnh$b
    //   25: astore_1
    //   26: aload_1
    //   27: ifnonnull +9 -> 36
    //   30: iconst_0
    //   31: istore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: iload_2
    //   35: ireturn
    //   36: aload_0
    //   37: aload_1
    //   38: invokespecial 270	bnh:a	(Lbnh$b;)Z
    //   41: istore_2
    //   42: goto -10 -> 32
    //   45: astore_1
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_1
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	bnh
    //   0	50	1	paramString	String
    //   31	11	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	26	45	finally
    //   36	42	45	finally
  }
  
  public final void close()
  {
    for (;;)
    {
      try
      {
        if ((!p) || (q))
        {
          q = true;
          return;
        }
        bnh.b[] arrayOfb = (bnh.b[])m.values().toArray(new bnh.b[m.size()]);
        int i2 = arrayOfb.length;
        int i1 = 0;
        if (i1 < i2)
        {
          bnh.b localb = arrayOfb[i1];
          if (f != null) {
            f.b();
          }
        }
        else
        {
          j();
          l.close();
          l = null;
          q = true;
          continue;
        }
        i1 += 1;
      }
      finally {}
    }
  }
  
  public final class a
  {
    final bnh.b a;
    final boolean[] b;
    boolean c;
    private boolean e;
    
    private a(bnh.b paramb)
    {
      a = paramb;
      if (e) {}
      for (this$1 = null;; this$1 = new boolean[bnh.h(bnh.this)])
      {
        b = bnh.this;
        return;
      }
    }
    
    public final cbj a(int paramInt)
    {
      synchronized (bnh.this)
      {
        if (a.f != this) {
          throw new IllegalStateException();
        }
      }
      if (!a.e) {
        b[paramInt] = true;
      }
      Object localObject2 = a.d[paramInt];
      try
      {
        localObject2 = bnh.i(bnh.this).b((File)localObject2);
        localObject2 = new bni((cbj)localObject2)
        {
          protected final void a()
          {
            synchronized (bnh.this)
            {
              c = true;
              return;
            }
          }
        };
        return (cbj)localObject2;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        cbj localcbj = bnh.a();
        return localcbj;
      }
    }
    
    public final void a()
    {
      synchronized (bnh.this)
      {
        if (c)
        {
          bnh.a(bnh.this, this, false);
          bnh.a(bnh.this, a);
          e = true;
          return;
        }
        bnh.a(bnh.this, this, true);
      }
    }
    
    public final void b()
    {
      synchronized (bnh.this)
      {
        bnh.a(bnh.this, this, false);
        return;
      }
    }
  }
  
  final class b
  {
    final String a;
    final long[] b;
    final File[] c;
    final File[] d;
    boolean e;
    bnh.a f;
    long g;
    
    private b(String paramString)
    {
      a = paramString;
      b = new long[bnh.h(bnh.this)];
      c = new File[bnh.h(bnh.this)];
      d = new File[bnh.h(bnh.this)];
      paramString = new StringBuilder(paramString).append('.');
      int j = paramString.length();
      int i = 0;
      while (i < bnh.h(bnh.this))
      {
        paramString.append(i);
        c[i] = new File(bnh.j(bnh.this), paramString.toString());
        paramString.append(".tmp");
        d[i] = new File(bnh.j(bnh.this), paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private static IOException b(String[] paramArrayOfString)
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    final bnh.c a()
    {
      j = 0;
      if (!Thread.holdsLock(bnh.this)) {
        throw new AssertionError();
      }
      cbk[] arrayOfcbk = new cbk[bnh.h(bnh.this)];
      Object localObject = (long[])b.clone();
      i = 0;
      for (;;)
      {
        try
        {
          if (i < bnh.h(bnh.this))
          {
            arrayOfcbk[i] = bnh.i(bnh.this).a(c[i]);
            i += 1;
            continue;
          }
          localObject = new bnh.c(bnh.this, a, g, arrayOfcbk, (long[])localObject, (byte)0);
          return (bnh.c)localObject;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          i = j;
          continue;
        }
        if ((i >= bnh.h(bnh.this)) || (arrayOfcbk[i] == null)) {
          continue;
        }
        bnq.a(arrayOfcbk[i]);
        i += 1;
      }
      return null;
    }
    
    final void a(caw paramcaw)
    {
      long[] arrayOfLong = b;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        paramcaw.g(32).j(l);
        i += 1;
      }
    }
    
    final void a(String[] paramArrayOfString)
    {
      if (paramArrayOfString.length != bnh.h(bnh.this)) {
        throw b(paramArrayOfString);
      }
      int i = 0;
      try
      {
        while (i < paramArrayOfString.length)
        {
          b[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw b(paramArrayOfString);
      }
    }
  }
  
  public final class c
    implements Closeable
  {
    public final String a;
    public final long b;
    public final cbk[] c;
    private final long[] e;
    
    private c(String paramString, long paramLong, cbk[] paramArrayOfcbk, long[] paramArrayOfLong)
    {
      a = paramString;
      b = paramLong;
      c = paramArrayOfcbk;
      e = paramArrayOfLong;
    }
    
    public final void close()
    {
      cbk[] arrayOfcbk = c;
      int j = arrayOfcbk.length;
      int i = 0;
      while (i < j)
      {
        bnq.a(arrayOfcbk[i]);
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */