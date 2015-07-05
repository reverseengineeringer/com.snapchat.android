import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

public class bmn
{
  private static final bmn a = ;
  
  public static bmn a()
  {
    return a;
  }
  
  public static URI a(URL paramURL)
  {
    return paramURL.toURI();
  }
  
  public static void a(String paramString)
  {
    System.out.println(paramString);
  }
  
  public static String b()
  {
    return "OkHttp";
  }
  
  /* Error */
  private static bmn c()
  {
    // Byte code:
    //   0: ldc 53
    //   2: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: pop
    //   6: new 61	bmm
    //   9: dup
    //   10: aconst_null
    //   11: ldc 63
    //   13: iconst_1
    //   14: anewarray 55	java/lang/Class
    //   17: dup
    //   18: iconst_0
    //   19: getstatic 69	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   22: aastore
    //   23: invokespecial 72	bmm:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   26: astore 5
    //   28: new 61	bmm
    //   31: dup
    //   32: aconst_null
    //   33: ldc 74
    //   35: iconst_1
    //   36: anewarray 55	java/lang/Class
    //   39: dup
    //   40: iconst_0
    //   41: ldc 76
    //   43: aastore
    //   44: invokespecial 72	bmm:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   47: astore 6
    //   49: ldc 78
    //   51: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   54: astore_1
    //   55: aload_1
    //   56: ldc 80
    //   58: iconst_1
    //   59: anewarray 55	java/lang/Class
    //   62: dup
    //   63: iconst_0
    //   64: ldc 82
    //   66: aastore
    //   67: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   70: astore_0
    //   71: aload_1
    //   72: ldc 88
    //   74: iconst_1
    //   75: anewarray 55	java/lang/Class
    //   78: dup
    //   79: iconst_0
    //   80: ldc 82
    //   82: aastore
    //   83: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   86: astore_1
    //   87: ldc 90
    //   89: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   92: pop
    //   93: new 61	bmm
    //   96: dup
    //   97: ldc 92
    //   99: ldc 94
    //   101: iconst_0
    //   102: anewarray 55	java/lang/Class
    //   105: invokespecial 72	bmm:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   108: astore_2
    //   109: new 61	bmm
    //   112: dup
    //   113: aconst_null
    //   114: ldc 96
    //   116: iconst_1
    //   117: anewarray 55	java/lang/Class
    //   120: dup
    //   121: iconst_0
    //   122: ldc 92
    //   124: aastore
    //   125: invokespecial 72	bmm:<init>	(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    //   128: astore_3
    //   129: new 6	bmn$a
    //   132: dup
    //   133: aload 5
    //   135: aload 6
    //   137: aload_0
    //   138: aload_1
    //   139: aload_2
    //   140: aload_3
    //   141: invokespecial 99	bmn$a:<init>	(Lbmm;Lbmm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lbmm;Lbmm;)V
    //   144: areturn
    //   145: astore_0
    //   146: ldc 101
    //   148: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   151: pop
    //   152: goto -146 -> 6
    //   155: astore_0
    //   156: ldc 103
    //   158: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   161: astore_0
    //   162: new 105	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   169: ldc 103
    //   171: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 112
    //   176: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   185: astore_1
    //   186: new 105	java/lang/StringBuilder
    //   189: dup
    //   190: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   193: ldc 103
    //   195: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc 117
    //   200: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   209: astore_2
    //   210: new 105	java/lang/StringBuilder
    //   213: dup
    //   214: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   217: ldc 103
    //   219: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: ldc 119
    //   224: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   230: invokestatic 59	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   233: astore_3
    //   234: new 9	bmn$b
    //   237: dup
    //   238: aload_0
    //   239: ldc 121
    //   241: iconst_2
    //   242: anewarray 55	java/lang/Class
    //   245: dup
    //   246: iconst_0
    //   247: ldc 123
    //   249: aastore
    //   250: dup
    //   251: iconst_1
    //   252: aload_1
    //   253: aastore
    //   254: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   257: aload_0
    //   258: ldc 125
    //   260: iconst_1
    //   261: anewarray 55	java/lang/Class
    //   264: dup
    //   265: iconst_0
    //   266: ldc 123
    //   268: aastore
    //   269: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   272: aload_0
    //   273: ldc 127
    //   275: iconst_1
    //   276: anewarray 55	java/lang/Class
    //   279: dup
    //   280: iconst_0
    //   281: ldc 123
    //   283: aastore
    //   284: invokevirtual 86	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   287: aload_2
    //   288: aload_3
    //   289: invokespecial 130	bmn$b:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   292: astore_0
    //   293: aload_0
    //   294: areturn
    //   295: astore_0
    //   296: new 2	bmn
    //   299: dup
    //   300: invokespecial 131	bmn:<init>	()V
    //   303: areturn
    //   304: astore_2
    //   305: aconst_null
    //   306: astore_2
    //   307: aconst_null
    //   308: astore_3
    //   309: goto -180 -> 129
    //   312: astore_0
    //   313: aconst_null
    //   314: astore_0
    //   315: aconst_null
    //   316: astore_1
    //   317: aconst_null
    //   318: astore_3
    //   319: aload_0
    //   320: astore_2
    //   321: aload_3
    //   322: astore_0
    //   323: aconst_null
    //   324: astore 4
    //   326: aload_2
    //   327: astore_3
    //   328: aload_0
    //   329: astore_2
    //   330: aload_3
    //   331: astore_0
    //   332: aload 4
    //   334: astore_3
    //   335: goto -206 -> 129
    //   338: astore_0
    //   339: goto -43 -> 296
    //   342: astore_0
    //   343: aconst_null
    //   344: astore_0
    //   345: aconst_null
    //   346: astore_1
    //   347: aconst_null
    //   348: astore_2
    //   349: goto -26 -> 323
    //   352: astore_1
    //   353: aconst_null
    //   354: astore_1
    //   355: aload_0
    //   356: astore_2
    //   357: aconst_null
    //   358: astore_3
    //   359: aload_1
    //   360: astore_0
    //   361: aload_3
    //   362: astore_1
    //   363: goto -40 -> 323
    //   366: astore_2
    //   367: aconst_null
    //   368: astore_3
    //   369: aload_0
    //   370: astore_2
    //   371: aload_3
    //   372: astore_0
    //   373: goto -50 -> 323
    //   376: astore_3
    //   377: aload_0
    //   378: astore_3
    //   379: aload_2
    //   380: astore_0
    //   381: aload_3
    //   382: astore_2
    //   383: goto -60 -> 323
    //   386: astore_1
    //   387: goto -72 -> 315
    //   390: astore_3
    //   391: goto -84 -> 307
    // Local variable table:
    //   start	length	slot	name	signature
    //   70	68	0	localMethod	Method
    //   145	1	0	localClassNotFoundException1	ClassNotFoundException
    //   155	1	0	localClassNotFoundException2	ClassNotFoundException
    //   161	133	0	localObject1	Object
    //   295	1	0	localClassNotFoundException3	ClassNotFoundException
    //   312	1	0	localClassNotFoundException4	ClassNotFoundException
    //   314	18	0	localObject2	Object
    //   338	1	0	localNoSuchMethodException1	NoSuchMethodException
    //   342	1	0	localNoSuchMethodException2	NoSuchMethodException
    //   344	37	0	localObject3	Object
    //   54	293	1	localObject4	Object
    //   352	1	1	localNoSuchMethodException3	NoSuchMethodException
    //   354	9	1	localObject5	Object
    //   386	1	1	localClassNotFoundException5	ClassNotFoundException
    //   108	180	2	localObject6	Object
    //   304	1	2	localClassNotFoundException6	ClassNotFoundException
    //   306	51	2	localObject7	Object
    //   366	1	2	localNoSuchMethodException4	NoSuchMethodException
    //   370	13	2	localObject8	Object
    //   128	244	3	localObject9	Object
    //   376	1	3	localNoSuchMethodException5	NoSuchMethodException
    //   378	4	3	localObject10	Object
    //   390	1	3	localClassNotFoundException7	ClassNotFoundException
    //   324	9	4	localObject11	Object
    //   26	108	5	localbmm1	bmm
    //   47	89	6	localbmm2	bmm
    // Exception table:
    //   from	to	target	type
    //   0	6	145	java/lang/ClassNotFoundException
    //   6	49	155	java/lang/ClassNotFoundException
    //   129	145	155	java/lang/ClassNotFoundException
    //   146	152	155	java/lang/ClassNotFoundException
    //   156	293	295	java/lang/ClassNotFoundException
    //   87	109	304	java/lang/ClassNotFoundException
    //   49	71	312	java/lang/ClassNotFoundException
    //   156	293	338	java/lang/NoSuchMethodException
    //   49	71	342	java/lang/NoSuchMethodException
    //   71	87	352	java/lang/NoSuchMethodException
    //   87	109	366	java/lang/NoSuchMethodException
    //   109	129	376	java/lang/NoSuchMethodException
    //   71	87	386	java/lang/ClassNotFoundException
    //   109	129	390	java/lang/ClassNotFoundException
  }
  
  public void a(Socket paramSocket) {}
  
  public void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }
  
  public void a(SSLSocket paramSSLSocket) {}
  
  public void a(SSLSocket paramSSLSocket, String paramString, List<blz> paramList) {}
  
  public String b(SSLSocket paramSSLSocket)
  {
    return null;
  }
  
  public void b(Socket paramSocket) {}
  
  static final class a
    extends bmn
  {
    private final bmm<Socket> a;
    private final bmm<Socket> b;
    private final Method c;
    private final Method d;
    private final bmm<Socket> e;
    private final bmm<Socket> f;
    
    public a(bmm<Socket> parambmm1, bmm<Socket> parambmm2, Method paramMethod1, Method paramMethod2, bmm<Socket> parambmm3, bmm<Socket> parambmm4)
    {
      a = parambmm1;
      b = parambmm2;
      c = paramMethod1;
      d = paramMethod2;
      e = parambmm3;
      f = parambmm4;
    }
    
    public final void a(Socket paramSocket)
    {
      if (c == null) {
        return;
      }
      try
      {
        c.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
    
    public final void a(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
    {
      try
      {
        paramSocket.connect(paramInetSocketAddress, paramInt);
        return;
      }
      catch (SecurityException paramSocket)
      {
        paramInetSocketAddress = new IOException("Exception in connect");
        paramInetSocketAddress.initCause(paramSocket);
        throw paramInetSocketAddress;
      }
    }
    
    public final void a(SSLSocket paramSSLSocket, String paramString, List<blz> paramList)
    {
      if (paramString != null)
      {
        a.a(paramSSLSocket, new Object[] { Boolean.valueOf(true) });
        b.a(paramSSLSocket, new Object[] { paramString });
      }
      if ((f != null) && (f.a(paramSSLSocket)))
      {
        paramString = new bzu();
        int j = paramList.size();
        int i = 0;
        while (i < j)
        {
          blz localblz = (blz)paramList.get(i);
          if (localblz != blz.a)
          {
            paramString.a(localblz.toString().length());
            paramString.a(localblz.toString());
          }
          i += 1;
        }
        paramString = paramString.o();
        f.b(paramSSLSocket, new Object[] { paramString });
      }
    }
    
    public final String b(SSLSocket paramSSLSocket)
    {
      if (e == null) {
        return null;
      }
      if (!e.a(paramSSLSocket)) {
        return null;
      }
      paramSSLSocket = (byte[])e.b(paramSSLSocket, new Object[0]);
      if (paramSSLSocket != null) {
        return new String(paramSSLSocket, bmp.c);
      }
      return null;
    }
    
    public final void b(Socket paramSocket)
    {
      if (d == null) {
        return;
      }
      try
      {
        d.invoke(null, new Object[] { paramSocket });
        return;
      }
      catch (IllegalAccessException paramSocket)
      {
        throw new RuntimeException(paramSocket);
      }
      catch (InvocationTargetException paramSocket)
      {
        throw new RuntimeException(paramSocket.getCause());
      }
    }
  }
  
  static final class b
    extends bmn
  {
    private final Method a;
    private final Method b;
    private final Method c;
    private final Class<?> d;
    private final Class<?> e;
    
    public b(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class<?> paramClass1, Class<?> paramClass2)
    {
      a = paramMethod1;
      b = paramMethod2;
      c = paramMethod3;
      d = paramClass1;
      e = paramClass2;
    }
    
    public final void a(SSLSocket paramSSLSocket)
    {
      try
      {
        c.invoke(null, new Object[] { paramSSLSocket });
        return;
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        for (;;) {}
      }
    }
    
    public final void a(SSLSocket paramSSLSocket, String paramString, List<blz> paramList)
    {
      paramString = new ArrayList(paramList.size());
      int j = paramList.size();
      int i = 0;
      Object localObject;
      while (i < j)
      {
        localObject = (blz)paramList.get(i);
        if (localObject != blz.a) {
          paramString.add(((blz)localObject).toString());
        }
        i += 1;
      }
      try
      {
        paramList = bmn.class.getClassLoader();
        localObject = d;
        Class localClass = e;
        paramString = new bmn.c(paramString);
        paramString = Proxy.newProxyInstance(paramList, new Class[] { localObject, localClass }, paramString);
        a.invoke(null, new Object[] { paramSSLSocket, paramString });
        return;
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new AssertionError(paramSSLSocket);
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        for (;;) {}
      }
    }
    
    public final String b(SSLSocket paramSSLSocket)
    {
      try
      {
        paramSSLSocket = (bmn.c)Proxy.getInvocationHandler(b.invoke(null, new Object[] { paramSSLSocket }));
        if ((!bmn.c.a(paramSSLSocket)) && (bmn.c.b(paramSSLSocket) == null))
        {
          bmi.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
          return null;
        }
        if (bmn.c.a(paramSSLSocket)) {
          return null;
        }
        paramSSLSocket = bmn.c.b(paramSSLSocket);
        return paramSSLSocket;
      }
      catch (InvocationTargetException paramSSLSocket)
      {
        throw new AssertionError();
      }
      catch (IllegalAccessException paramSSLSocket)
      {
        for (;;) {}
      }
    }
  }
  
  static final class c
    implements InvocationHandler
  {
    private final List<String> a;
    private boolean b;
    private String c;
    
    public c(List<String> paramList)
    {
      a = paramList;
    }
    
    public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    {
      String str = paramMethod.getName();
      Class localClass = paramMethod.getReturnType();
      paramObject = paramArrayOfObject;
      if (paramArrayOfObject == null) {
        paramObject = bmp.b;
      }
      if ((str.equals("supports")) && (Boolean.TYPE == localClass)) {
        return Boolean.valueOf(true);
      }
      if ((str.equals("unsupported")) && (Void.TYPE == localClass))
      {
        b = true;
        return null;
      }
      if ((str.equals("protocols")) && (paramObject.length == 0)) {
        return a;
      }
      if (((str.equals("selectProtocol")) || (str.equals("select"))) && (String.class == localClass) && (paramObject.length == 1) && ((paramObject[0] instanceof List)))
      {
        paramObject = (List)paramObject[0];
        int j = ((List)paramObject).size();
        int i = 0;
        while (i < j)
        {
          if (a.contains(((List)paramObject).get(i)))
          {
            paramObject = (String)((List)paramObject).get(i);
            c = ((String)paramObject);
            return paramObject;
          }
          i += 1;
        }
        paramObject = (String)a.get(0);
        c = ((String)paramObject);
        return paramObject;
      }
      if (((str.equals("protocolSelected")) || (str.equals("selected"))) && (paramObject.length == 1))
      {
        c = ((String)paramObject[0]);
        return null;
      }
      return paramMethod.invoke(this, (Object[])paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     bmn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */