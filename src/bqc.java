import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketImpl;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

public final class bqc
  extends SocketImpl
  implements bqe
{
  private static Field a;
  private static Field b;
  private static Field c;
  private static Field d;
  private static Method[] e = new Method[20];
  private static boolean f = false;
  private static Throwable g = null;
  private final Queue h = new LinkedList();
  private btl i;
  private bsw j;
  private SocketImpl k;
  private bud l;
  private bue m;
  
  static
  {
    for (;;)
    {
      try
      {
        a = SocketImpl.class.getDeclaredField("address");
        b = SocketImpl.class.getDeclaredField("fd");
        c = SocketImpl.class.getDeclaredField("localport");
        d = SocketImpl.class.getDeclaredField("port");
        Field localField1 = a;
        Field localField2 = b;
        Field localField3 = c;
        Field localField4 = d;
        if (localField1 != null) {
          localField1.setAccessible(true);
        }
        btq.a(new AccessibleObject[] { localField2, localField3, localField4 });
        e[0] = SocketImpl.class.getDeclaredMethod("accept", new Class[] { SocketImpl.class });
        e[1] = SocketImpl.class.getDeclaredMethod("available", new Class[0]);
        e[2] = SocketImpl.class.getDeclaredMethod("bind", new Class[] { InetAddress.class, Integer.TYPE });
        e[3] = SocketImpl.class.getDeclaredMethod("close", new Class[0]);
        e[4] = SocketImpl.class.getDeclaredMethod("connect", new Class[] { InetAddress.class, Integer.TYPE });
        e[5] = SocketImpl.class.getDeclaredMethod("connect", new Class[] { SocketAddress.class, Integer.TYPE });
        e[6] = SocketImpl.class.getDeclaredMethod("connect", new Class[] { String.class, Integer.TYPE });
        e[7] = SocketImpl.class.getDeclaredMethod("create", new Class[] { Boolean.TYPE });
        e[8] = SocketImpl.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
        e[9] = SocketImpl.class.getDeclaredMethod("getInetAddress", new Class[0]);
        e[10] = SocketImpl.class.getDeclaredMethod("getInputStream", new Class[0]);
        e[11] = SocketImpl.class.getDeclaredMethod("getLocalPort", new Class[0]);
        e[12] = SocketImpl.class.getDeclaredMethod("getOutputStream", new Class[0]);
        e[13] = SocketImpl.class.getDeclaredMethod("getPort", new Class[0]);
        e[14] = SocketImpl.class.getDeclaredMethod("listen", new Class[] { Integer.TYPE });
        e[15] = SocketImpl.class.getDeclaredMethod("sendUrgentData", new Class[] { Integer.TYPE });
        e[16] = SocketImpl.class.getDeclaredMethod("setPerformancePreferences", new Class[] { Integer.TYPE, Integer.TYPE, Integer.TYPE });
        e[17] = SocketImpl.class.getDeclaredMethod("shutdownInput", new Class[0]);
        e[18] = SocketImpl.class.getDeclaredMethod("shutdownOutput", new Class[0]);
        e[19] = SocketImpl.class.getDeclaredMethod("supportsUrgentData", new Class[0]);
        btq.a(e);
        f = true;
        return;
      }
      catch (SecurityException localSecurityException)
      {
        f = false;
        g = localSecurityException;
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        f = false;
        n = 0;
        if (n < 20)
        {
          if (e[n] == null)
          {
            g = new bry("Bad method: " + n, localNoSuchMethodException);
            return;
          }
          n += 1;
          continue;
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        f = false;
        String str = "unknown";
        if (a == null)
        {
          str = "address";
          g = new bry("No such field: " + str, localNoSuchFieldException);
          return;
        }
        if (b == null)
        {
          str = "fd";
          continue;
        }
        if (c == null)
        {
          str = "localport";
          continue;
        }
        if (d != null) {
          continue;
        }
        str = "port";
        continue;
      }
      catch (Throwable localThrowable)
      {
        f = false;
        g = localThrowable;
        return;
      }
      int n = 20;
    }
  }
  
  public bqc(btl parambtl, bsw parambsw, SocketImpl paramSocketImpl)
  {
    if (parambtl == null) {
      throw new NullPointerException("dispatch was null");
    }
    if (paramSocketImpl == null) {
      throw new NullPointerException("delegate was null");
    }
    i = parambtl;
    j = parambsw;
    k = paramSocketImpl;
    f();
  }
  
  private bsb a(boolean paramBoolean)
  {
    bsb localbsb = new bsb();
    InetAddress localInetAddress = getInetAddress();
    if (localInetAddress != null) {
      localbsb.a(localInetAddress);
    }
    int n = getPort();
    if (n > 0) {
      localbsb.a(n);
    }
    if (paramBoolean) {
      localbsb.a(btr.a.a);
    }
    if (j != null) {
      j = j.a();
    }
    if (brc.b()) {
      localbsb.a(brc.a());
    }
    return localbsb;
  }
  
  /* Error */
  private Object a(int paramInt, Object... paramVarArgs)
  {
    // Byte code:
    //   0: getstatic 61	bqc:a	Ljava/lang/reflect/Field;
    //   3: aload_0
    //   4: getfield 189	bqc:k	Ljava/net/SocketImpl;
    //   7: aload_0
    //   8: getfield 248	bqc:address	Ljava/net/InetAddress;
    //   11: invokevirtual 254	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   14: getstatic 65	bqc:b	Ljava/lang/reflect/Field;
    //   17: aload_0
    //   18: getfield 189	bqc:k	Ljava/net/SocketImpl;
    //   21: aload_0
    //   22: getfield 257	bqc:fd	Ljava/io/FileDescriptor;
    //   25: invokevirtual 254	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   28: getstatic 69	bqc:c	Ljava/lang/reflect/Field;
    //   31: aload_0
    //   32: getfield 189	bqc:k	Ljava/net/SocketImpl;
    //   35: aload_0
    //   36: getfield 260	bqc:localport	I
    //   39: invokevirtual 264	java/lang/reflect/Field:setInt	(Ljava/lang/Object;I)V
    //   42: getstatic 73	bqc:d	Ljava/lang/reflect/Field;
    //   45: aload_0
    //   46: getfield 189	bqc:k	Ljava/net/SocketImpl;
    //   49: aload_0
    //   50: getfield 266	bqc:port	I
    //   53: invokevirtual 264	java/lang/reflect/Field:setInt	(Ljava/lang/Object;I)V
    //   56: getstatic 47	bqc:e	[Ljava/lang/reflect/Method;
    //   59: iload_1
    //   60: aaload
    //   61: aload_0
    //   62: getfield 189	bqc:k	Ljava/net/SocketImpl;
    //   65: aload_2
    //   66: invokevirtual 270	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   69: astore_2
    //   70: aload_0
    //   71: invokespecial 191	bqc:f	()V
    //   74: aload_2
    //   75: areturn
    //   76: astore_2
    //   77: new 141	bry
    //   80: dup
    //   81: aload_2
    //   82: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   85: athrow
    //   86: astore_2
    //   87: new 141	bry
    //   90: dup
    //   91: aload_2
    //   92: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   95: athrow
    //   96: astore_2
    //   97: new 141	bry
    //   100: dup
    //   101: aload_2
    //   102: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   105: athrow
    //   106: astore_2
    //   107: aload_0
    //   108: invokespecial 191	bqc:f	()V
    //   111: aload_2
    //   112: athrow
    //   113: astore_2
    //   114: new 141	bry
    //   117: dup
    //   118: aload_2
    //   119: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   122: athrow
    //   123: astore_2
    //   124: aload_2
    //   125: invokevirtual 277	java/lang/reflect/InvocationTargetException:getTargetException	()Ljava/lang/Throwable;
    //   128: astore_3
    //   129: aload_3
    //   130: ifnonnull +12 -> 142
    //   133: new 141	bry
    //   136: dup
    //   137: aload_2
    //   138: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   141: athrow
    //   142: aload_3
    //   143: instanceof 245
    //   146: ifeq +8 -> 154
    //   149: aload_3
    //   150: checkcast 245	java/lang/Exception
    //   153: athrow
    //   154: aload_3
    //   155: instanceof 279
    //   158: ifeq +8 -> 166
    //   161: aload_3
    //   162: checkcast 279	java/lang/Error
    //   165: athrow
    //   166: new 141	bry
    //   169: dup
    //   170: aload_3
    //   171: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   174: athrow
    //   175: astore_2
    //   176: new 141	bry
    //   179: dup
    //   180: aload_2
    //   181: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   184: athrow
    //   185: astore_2
    //   186: new 141	bry
    //   189: dup
    //   190: aload_2
    //   191: invokespecial 273	bry:<init>	(Ljava/lang/Throwable;)V
    //   194: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	195	0	this	bqc
    //   0	195	1	paramInt	int
    //   0	195	2	paramVarArgs	Object[]
    //   128	43	3	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	56	76	java/lang/IllegalArgumentException
    //   0	56	86	java/lang/IllegalAccessException
    //   56	70	96	java/lang/IllegalArgumentException
    //   56	70	106	finally
    //   97	106	106	finally
    //   114	123	106	finally
    //   124	129	106	finally
    //   133	142	106	finally
    //   142	154	106	finally
    //   154	166	106	finally
    //   166	175	106	finally
    //   176	185	106	finally
    //   186	195	106	finally
    //   56	70	113	java/lang/IllegalAccessException
    //   56	70	123	java/lang/reflect/InvocationTargetException
    //   56	70	175	java/lang/ClassCastException
    //   56	70	185	java/lang/Exception
  }
  
  private Object b(int paramInt, Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = a(paramInt, paramVarArgs);
      return paramVarArgs;
    }
    catch (RuntimeException paramVarArgs)
    {
      throw paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      throw new bry(paramVarArgs);
    }
  }
  
  private Object c(int paramInt, Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = a(paramInt, paramVarArgs);
      return paramVarArgs;
    }
    catch (IOException paramVarArgs)
    {
      throw paramVarArgs;
    }
    catch (RuntimeException paramVarArgs)
    {
      throw paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      throw new bry(paramVarArgs);
    }
  }
  
  public static boolean c()
  {
    return f;
  }
  
  public static Throwable d()
  {
    return g;
  }
  
  public static void e()
  {
    if (!f) {
      throw new bry(g);
    }
    Object localObject1 = new SocketImpl()
    {
      protected final void accept(SocketImpl paramAnonymousSocketImpl) {}
      
      protected final int available()
      {
        return 0;
      }
      
      protected final void bind(InetAddress paramAnonymousInetAddress, int paramAnonymousInt) {}
      
      protected final void close() {}
      
      protected final void connect(String paramAnonymousString, int paramAnonymousInt) {}
      
      protected final void connect(InetAddress paramAnonymousInetAddress, int paramAnonymousInt) {}
      
      protected final void connect(SocketAddress paramAnonymousSocketAddress, int paramAnonymousInt) {}
      
      protected final void create(boolean paramAnonymousBoolean) {}
      
      protected final FileDescriptor getFileDescriptor()
      {
        return null;
      }
      
      protected final InetAddress getInetAddress()
      {
        return null;
      }
      
      protected final InputStream getInputStream()
      {
        return null;
      }
      
      protected final int getLocalPort()
      {
        return 0;
      }
      
      public final Object getOption(int paramAnonymousInt)
      {
        return null;
      }
      
      protected final OutputStream getOutputStream()
      {
        return null;
      }
      
      protected final int getPort()
      {
        return 0;
      }
      
      protected final void listen(int paramAnonymousInt) {}
      
      protected final void sendUrgentData(int paramAnonymousInt) {}
      
      public final void setOption(int paramAnonymousInt, Object paramAnonymousObject) {}
      
      protected final void setPerformancePreferences(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      protected final void shutdownInput() {}
      
      protected final void shutdownOutput() {}
      
      protected final boolean supportsUrgentData()
      {
        return false;
      }
      
      public final String toString()
      {
        return null;
      }
    };
    localObject1 = new bqc(new btl(new Executor()
    {
      public final void execute(Runnable paramAnonymousRunnable) {}
    }), null, (SocketImpl)localObject1);
    Object localObject2 = new Object();
    try
    {
      ((bqc)localObject1).setOption(0, localObject2);
      ((bqc)localObject1).getOption(0);
      ((bqc)localObject1).sendUrgentData(0);
      ((bqc)localObject1).listen(0);
      ((bqc)localObject1).getOutputStream();
      ((bqc)localObject1).getInputStream();
      ((bqc)localObject1).create(false);
      ((bqc)localObject1).connect(null, 0);
      ((bqc)localObject1).connect(null, 0);
      ((bqc)localObject1).connect(null, 0);
      ((bqc)localObject1).close();
      ((bqc)localObject1).bind(null, 0);
      ((bqc)localObject1).available();
      ((bqc)localObject1).accept((SocketImpl)localObject1);
      ((bqc)localObject1).getFileDescriptor();
      ((bqc)localObject1).getInetAddress();
      ((bqc)localObject1).getLocalPort();
      ((bqc)localObject1).getPort();
      ((bqc)localObject1).setPerformancePreferences(0, 0, 0);
      ((bqc)localObject1).shutdownInput();
      ((bqc)localObject1).shutdownOutput();
      ((bqc)localObject1).supportsUrgentData();
      return;
    }
    catch (bry localbry)
    {
      throw localbry;
    }
    catch (Throwable localThrowable)
    {
      throw new bry(localThrowable);
    }
    catch (IOException localIOException) {}
  }
  
  private void f()
  {
    try
    {
      address = ((InetAddress)a.get(k));
      fd = ((FileDescriptor)b.get(k));
      localport = c.getInt(k);
      port = d.getInt(k);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new bry(localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new bry(localIllegalAccessException);
    }
  }
  
  public final bsb a()
  {
    return a(true);
  }
  
  public final void a(bsb parambsb)
  {
    synchronized (h)
    {
      h.add(parambsb);
      return;
    }
  }
  
  public final void accept(SocketImpl paramSocketImpl)
  {
    c(0, new Object[] { paramSocketImpl });
  }
  
  public final int available()
  {
    Integer localInteger = (Integer)c(1, new Object[0]);
    if (localInteger == null) {
      throw new bry("Received a null Integer");
    }
    return localInteger.intValue();
  }
  
  public final bsb b()
  {
    synchronized (h)
    {
      bsb localbsb = (bsb)h.poll();
      return localbsb;
    }
  }
  
  public final void bind(InetAddress paramInetAddress, int paramInt)
  {
    c(2, new Object[] { paramInetAddress, Integer.valueOf(paramInt) });
  }
  
  public final void close()
  {
    c(3, new Object[0]);
    try
    {
      if (m != null) {
        m.d();
      }
      return;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      btd.a(localThrowable);
    }
  }
  
  public final void connect(String paramString, int paramInt)
  {
    try
    {
      c(6, new Object[] { paramString, Integer.valueOf(paramInt) });
      return;
    }
    catch (IOException localIOException)
    {
      if (paramString == null) {}
    }
    try
    {
      bsb localbsb = a(false);
      localbsb.f();
      localbsb.a(paramString);
      localbsb.a(paramInt);
      g = bsa.a(localIOException);
      i.a(localbsb, bsb.a.i);
      throw localIOException;
    }
    catch (ThreadDeath paramString)
    {
      throw paramString;
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        btd.a(paramString);
      }
    }
  }
  
  public final void connect(InetAddress paramInetAddress, int paramInt)
  {
    try
    {
      c(4, new Object[] { paramInetAddress, Integer.valueOf(paramInt) });
      return;
    }
    catch (IOException localIOException)
    {
      if (paramInetAddress == null) {}
    }
    try
    {
      bsb localbsb = a(false);
      localbsb.f();
      localbsb.a(paramInetAddress);
      localbsb.a(paramInt);
      g = bsa.a(localIOException);
      i.a(localbsb, bsb.a.i);
      throw localIOException;
    }
    catch (ThreadDeath paramInetAddress)
    {
      throw paramInetAddress;
    }
    catch (Throwable paramInetAddress)
    {
      for (;;)
      {
        btd.a(paramInetAddress);
      }
    }
  }
  
  public final void connect(SocketAddress paramSocketAddress, int paramInt)
  {
    try
    {
      c(5, new Object[] { paramSocketAddress, Integer.valueOf(paramInt) });
      return;
    }
    catch (IOException localIOException)
    {
      if (paramSocketAddress == null) {}
    }
    try
    {
      if ((paramSocketAddress instanceof InetSocketAddress))
      {
        bsb localbsb = a(false);
        paramSocketAddress = (InetSocketAddress)paramSocketAddress;
        localbsb.f();
        localbsb.a(paramSocketAddress.getAddress());
        localbsb.a(paramSocketAddress.getPort());
        g = bsa.a(localIOException);
        i.a(localbsb, bsb.a.i);
      }
      throw localIOException;
    }
    catch (ThreadDeath paramSocketAddress)
    {
      throw paramSocketAddress;
    }
    catch (Throwable paramSocketAddress)
    {
      for (;;)
      {
        btd.a(paramSocketAddress);
      }
    }
  }
  
  public final void create(boolean paramBoolean)
  {
    c(7, new Object[] { Boolean.valueOf(paramBoolean) });
  }
  
  public final FileDescriptor getFileDescriptor()
  {
    return (FileDescriptor)b(8, new Object[0]);
  }
  
  public final InetAddress getInetAddress()
  {
    return (InetAddress)b(9, new Object[0]);
  }
  
  public final InputStream getInputStream()
  {
    InputStream localInputStream = (InputStream)c(10, new Object[0]);
    if (localInputStream != null) {
      try
      {
        if ((m != null) && (m.a(localInputStream))) {
          return m;
        }
        m = new bue(this, localInputStream, i);
        bue localbue = m;
        return localbue;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        btd.a(localThrowable);
      }
    }
    return localThreadDeath;
  }
  
  public final int getLocalPort()
  {
    return ((Integer)b(11, new Object[0])).intValue();
  }
  
  public final Object getOption(int paramInt)
  {
    return k.getOption(paramInt);
  }
  
  public final OutputStream getOutputStream()
  {
    OutputStream localOutputStream = (OutputStream)c(12, new Object[0]);
    if (localOutputStream != null) {
      try
      {
        if ((l != null) && (l.a(localOutputStream))) {
          return l;
        }
        l = new bud(this, localOutputStream);
        bud localbud = l;
        return localbud;
      }
      catch (ThreadDeath localThreadDeath)
      {
        throw localThreadDeath;
      }
      catch (Throwable localThrowable)
      {
        btd.a(localThrowable);
      }
    }
    return localThreadDeath;
  }
  
  public final int getPort()
  {
    return ((Integer)b(13, new Object[0])).intValue();
  }
  
  public final void listen(int paramInt)
  {
    c(14, new Object[] { Integer.valueOf(paramInt) });
  }
  
  public final void sendUrgentData(int paramInt)
  {
    c(15, new Object[] { Integer.valueOf(paramInt) });
  }
  
  public final void setOption(int paramInt, Object paramObject)
  {
    k.setOption(paramInt, paramObject);
  }
  
  public final void setPerformancePreferences(int paramInt1, int paramInt2, int paramInt3)
  {
    b(16, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public final void shutdownInput()
  {
    c(17, new Object[0]);
  }
  
  public final void shutdownOutput()
  {
    c(18, new Object[0]);
  }
  
  public final boolean supportsUrgentData()
  {
    return ((Boolean)b(19, new Object[0])).booleanValue();
  }
  
  public final String toString()
  {
    return k.toString();
  }
}

/* Location:
 * Qualified Name:     bqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */