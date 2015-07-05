import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public final class bmp
{
  public static final byte[] a = new byte[0];
  public static final String[] b = new String[0];
  public static final Charset c = Charset.forName("UTF-8");
  
  public static int a(String paramString)
  {
    if ("http".equals(paramString)) {
      return 80;
    }
    if ("https".equals(paramString)) {
      return 443;
    }
    return -1;
  }
  
  private static int a(String paramString, int paramInt)
  {
    if (paramInt != -1) {
      return paramInt;
    }
    return a(paramString);
  }
  
  public static int a(URI paramURI)
  {
    return a(paramURI.getScheme(), paramURI.getPort());
  }
  
  public static int a(URL paramURL)
  {
    return a(paramURL.getProtocol(), paramURL.getPort());
  }
  
  public static bzx a(bzx parambzx)
  {
    try
    {
      parambzx = bzx.a(MessageDigest.getInstance("SHA-1").digest(parambzx.d()));
      return parambzx;
    }
    catch (NoSuchAlgorithmException parambzx)
    {
      throw new AssertionError(parambzx);
    }
  }
  
  public static <T> List<T> a(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }
  
  public static <T> List<T> a(T... paramVarArgs)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramVarArgs.clone()));
  }
  
  public static <K, V> Map<K, V> a(Map<K, V> paramMap)
  {
    return Collections.unmodifiableMap(new LinkedHashMap(paramMap));
  }
  
  public static void a(long paramLong1, long paramLong2)
  {
    if (((0L | paramLong2) < 0L) || (0L > paramLong1) || (paramLong1 - 0L < paramLong2)) {
      throw new ArrayIndexOutOfBoundsException();
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable) {}
  }
  
  public static void a(Closeable paramCloseable1, Closeable paramCloseable2)
  {
    Object localObject = null;
    for (;;)
    {
      try
      {
        paramCloseable1.close();
        paramCloseable1 = (Closeable)localObject;
      }
      catch (Throwable paramCloseable1)
      {
        continue;
      }
      try
      {
        paramCloseable2.close();
        paramCloseable2 = paramCloseable1;
      }
      catch (Throwable localThrowable)
      {
        paramCloseable2 = paramCloseable1;
        if (paramCloseable1 != null) {
          continue;
        }
        paramCloseable2 = localThrowable;
        continue;
        if (!(paramCloseable2 instanceof IOException)) {
          continue;
        }
        throw ((IOException)paramCloseable2);
        if (!(paramCloseable2 instanceof RuntimeException)) {
          continue;
        }
        throw ((RuntimeException)paramCloseable2);
        if (!(paramCloseable2 instanceof Error)) {
          continue;
        }
        throw ((Error)paramCloseable2);
        throw new AssertionError(paramCloseable2);
      }
    }
    if (paramCloseable2 == null) {
      return;
    }
  }
  
  public static void a(Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (RuntimeException paramSocket)
    {
      throw paramSocket;
    }
    catch (Exception paramSocket) {}
  }
  
  public static boolean a(caj paramcaj, int paramInt, TimeUnit paramTimeUnit)
  {
    long l2 = System.nanoTime();
    long l1;
    if (E_c) {
      l1 = paramcaj.E_().f() - l2;
    }
    for (;;)
    {
      paramcaj.E_().a(Math.min(l1, paramTimeUnit.toNanos(paramInt)) + l2);
      try
      {
        paramTimeUnit = new bzu();
        while (paramcaj.a(paramTimeUnit, 2048L) != -1L) {
          paramTimeUnit.p();
        }
      }
      catch (InterruptedIOException paramTimeUnit)
      {
        if (l1 == Long.MAX_VALUE) {
          E_c = false;
        }
        for (;;)
        {
          return false;
          l1 = Long.MAX_VALUE;
          break;
          if (l1 == Long.MAX_VALUE) {
            E_c = false;
          }
          for (;;)
          {
            return true;
            paramcaj.E_().a(l1 + l2);
          }
          paramcaj.E_().a(l1 + l2);
        }
      }
      finally
      {
        if (l1 != Long.MAX_VALUE) {
          break label188;
        }
      }
    }
    E_c = false;
    for (;;)
    {
      throw paramTimeUnit;
      label188:
      paramcaj.E_().a(l1 + l2);
    }
  }
  
  public static boolean a(caj paramcaj, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = a(paramcaj, 100, paramTimeUnit);
      return bool;
    }
    catch (IOException paramcaj) {}
    return false;
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static <T> T[] a(Class<T> paramClass, T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfT1.length;
    int i = 0;
    if (i < k)
    {
      T ? = paramArrayOfT1[i];
      int m = paramArrayOfT2.length;
      int j = 0;
      for (;;)
      {
        if (j < m)
        {
          T ? = paramArrayOfT2[j];
          if (?.equals(?)) {
            localArrayList.add(?);
          }
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return localArrayList.toArray((Object[])Array.newInstance(paramClass, localArrayList.size()));
  }
  
  public static String b(String paramString)
  {
    try
    {
      paramString = bzx.a(MessageDigest.getInstance("MD5").digest(paramString.getBytes("UTF-8"))).b();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
  
  public static ThreadFactory c(String paramString)
  {
    new ThreadFactory()
    {
      public final Thread newThread(Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable = new Thread(paramAnonymousRunnable, a);
        paramAnonymousRunnable.setDaemon(b);
        return paramAnonymousRunnable;
      }
    };
  }
}

/* Location:
 * Qualified Name:     bmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */