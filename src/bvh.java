import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.KeyManagementException;
import java.security.SecureRandom;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContextSpi;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLServerSocketFactory;
import javax.net.ssl.SSLSessionContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class bvh
  extends SSLContextSpi
{
  private static Method[] a = new Method[7];
  private static boolean b = false;
  private SSLContextSpi c;
  private bum d;
  private btx e;
  
  static
  {
    try
    {
      a[0] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", new Class[0]);
      a[1] = SSLContextSpi.class.getDeclaredMethod("engineCreateSSLEngine", new Class[] { String.class, Integer.TYPE });
      a[2] = SSLContextSpi.class.getDeclaredMethod("engineGetClientSessionContext", new Class[0]);
      a[3] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSessionContext", new Class[0]);
      a[4] = SSLContextSpi.class.getDeclaredMethod("engineGetServerSocketFactory", new Class[0]);
      a[5] = SSLContextSpi.class.getDeclaredMethod("engineGetSocketFactory", new Class[0]);
      a[6] = SSLContextSpi.class.getDeclaredMethod("engineInit", new Class[] { KeyManager[].class, TrustManager[].class, SecureRandom.class });
      bur.a(a);
      bvh localbvh = new bvh(new bvh(), null, null);
      localbvh.engineCreateSSLEngine();
      localbvh.engineCreateSSLEngine(null, 0);
      localbvh.engineGetClientSessionContext();
      localbvh.engineGetServerSessionContext();
      localbvh.engineGetServerSocketFactory();
      localbvh.engineGetSocketFactory();
      localbvh.engineInit(null, null, null);
      b = true;
      return;
    }
    catch (Throwable localThrowable)
    {
      bue.c();
      b = false;
    }
  }
  
  private bvh() {}
  
  private bvh(SSLContextSpi paramSSLContextSpi, bum parambum, btx parambtx)
  {
    c = paramSSLContextSpi;
    d = parambum;
    e = parambtx;
  }
  
  public static bvh a(SSLContextSpi paramSSLContextSpi, bum parambum, btx parambtx)
  {
    if (!b) {
      return null;
    }
    return new bvh(paramSSLContextSpi, parambum, parambtx);
  }
  
  private Object a(int paramInt, Object... paramVarArgs)
  {
    if (c == null) {
      return null;
    }
    try
    {
      paramVarArgs = a[paramInt].invoke(c, paramVarArgs);
      return paramVarArgs;
    }
    catch (IllegalArgumentException paramVarArgs)
    {
      throw new bsz(paramVarArgs);
    }
    catch (IllegalAccessException paramVarArgs)
    {
      throw new bsz(paramVarArgs);
    }
    catch (InvocationTargetException paramVarArgs)
    {
      Throwable localThrowable = paramVarArgs.getTargetException();
      if (localThrowable == null) {
        throw new bsz(paramVarArgs);
      }
      if ((localThrowable instanceof Exception)) {
        throw ((Exception)localThrowable);
      }
      if ((localThrowable instanceof Error)) {
        throw ((Error)localThrowable);
      }
      throw new bsz(paramVarArgs);
    }
    catch (ClassCastException paramVarArgs)
    {
      throw new bsz(paramVarArgs);
    }
  }
  
  private Object a(Object... paramVarArgs)
  {
    try
    {
      paramVarArgs = a(6, paramVarArgs);
      return paramVarArgs;
    }
    catch (RuntimeException paramVarArgs)
    {
      throw paramVarArgs;
    }
    catch (KeyManagementException paramVarArgs)
    {
      throw paramVarArgs;
    }
    catch (Exception paramVarArgs)
    {
      throw new bsz(paramVarArgs);
    }
  }
  
  public static boolean a()
  {
    return b;
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
      throw new bsz(paramVarArgs);
    }
  }
  
  protected final SSLEngine engineCreateSSLEngine()
  {
    return (SSLEngine)b(0, new Object[0]);
  }
  
  protected final SSLEngine engineCreateSSLEngine(String paramString, int paramInt)
  {
    return (SSLEngine)b(1, new Object[] { paramString, Integer.valueOf(paramInt) });
  }
  
  protected final SSLSessionContext engineGetClientSessionContext()
  {
    return (SSLSessionContext)b(2, new Object[0]);
  }
  
  protected final SSLSessionContext engineGetServerSessionContext()
  {
    return (SSLSessionContext)b(3, new Object[0]);
  }
  
  protected final SSLServerSocketFactory engineGetServerSocketFactory()
  {
    return (SSLServerSocketFactory)b(4, new Object[0]);
  }
  
  protected final SSLSocketFactory engineGetSocketFactory()
  {
    SSLSocketFactory localSSLSocketFactory = (SSLSocketFactory)b(5, new Object[0]);
    Object localObject = localSSLSocketFactory;
    if (localSSLSocketFactory != null) {}
    try
    {
      localObject = new brc(localSSLSocketFactory, d, e);
      return (SSLSocketFactory)localObject;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable)
    {
      bue.a(localThrowable);
    }
    return localSSLSocketFactory;
  }
  
  protected final void engineInit(KeyManager[] paramArrayOfKeyManager, TrustManager[] paramArrayOfTrustManager, SecureRandom paramSecureRandom)
  {
    a(new Object[] { paramArrayOfKeyManager, paramArrayOfTrustManager, paramSecureRandom });
  }
  
  public final boolean equals(Object paramObject)
  {
    return c.equals(paramObject);
  }
  
  public final int hashCode()
  {
    return c.hashCode();
  }
  
  public final String toString()
  {
    return c.toString();
  }
}

/* Location:
 * Qualified Name:     bvh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */