import android.os.Build.VERSION;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.Socket;
import java.net.SocketImpl;
import java.net.SocketImplFactory;
import java.net.URL;
import java.net.URLStreamHandler;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;

public final class btp
{
  public static final int a = buc.a.b;
  public static int b = btp.b.c;
  private static final List d = new LinkedList();
  bqb c;
  private bqd e;
  private bqb f;
  private buc g;
  private btl h;
  private bsw i;
  private int j = b;
  private int k = a;
  
  static
  {
    try
    {
      URL localURL = new URL("https://www.google.com");
      if ((((URLStreamHandler)btq.a(btq.a(URL.class, URLStreamHandler.class), localURL)).getClass().getName().contains("okhttp")) && (Build.VERSION.SDK_INT >= 19))
      {
        b = btp.b.a;
        return;
      }
      b = btp.b.b;
      return;
    }
    catch (Exception localException)
    {
      b = btp.b.c;
    }
  }
  
  public btp(btl parambtl, bsw parambsw)
  {
    h = parambtl;
    i = parambsw;
  }
  
  static void a(Throwable paramThrowable)
  {
    synchronized (d)
    {
      d.add(paramThrowable);
      btd.g();
      return;
    }
  }
  
  static void a(javax.net.ssl.SSLSocketFactory paramSSLSocketFactory)
  {
    org.apache.http.conn.ssl.SSLSocketFactory localSSLSocketFactory = org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
    btq.a(org.apache.http.conn.ssl.SSLSocketFactory.class, javax.net.ssl.SSLSocketFactory.class).set(localSSLSocketFactory, paramSSLSocketFactory);
  }
  
  private static boolean a(SocketImplFactory paramSocketImplFactory)
  {
    try
    {
      Field localField = btq.a(Socket.class, SocketImplFactory.class);
      return false;
    }
    catch (brz paramSocketImplFactory)
    {
      try
      {
        localField.setAccessible(true);
        localField.set(null, paramSocketImplFactory);
        return true;
      }
      catch (IllegalArgumentException paramSocketImplFactory)
      {
        a(paramSocketImplFactory);
        return true;
      }
      catch (IllegalAccessException paramSocketImplFactory)
      {
        a(paramSocketImplFactory);
        return false;
      }
      catch (NullPointerException paramSocketImplFactory)
      {
        a(paramSocketImplFactory);
      }
      paramSocketImplFactory = paramSocketImplFactory;
      a(paramSocketImplFactory);
      return false;
    }
  }
  
  static javax.net.ssl.SSLSocketFactory c()
  {
    org.apache.http.conn.ssl.SSLSocketFactory localSSLSocketFactory = org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
    return (javax.net.ssl.SSLSocketFactory)btq.a(org.apache.http.conn.ssl.SSLSocketFactory.class, javax.net.ssl.SSLSocketFactory.class).get(localSSLSocketFactory);
  }
  
  public static void d()
  {
    synchronized (d)
    {
      Iterator localIterator = d.iterator();
      if (localIterator.hasNext()) {
        btd.a((Throwable)localIterator.next());
      }
    }
    d.clear();
  }
  
  private boolean e()
  {
    btp.a locala = new btp.a(this);
    Thread localThread = new Thread(locala);
    localThread.start();
    try
    {
      localThread.join();
      return a;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  private boolean f()
  {
    try
    {
      g = new buc(k, h, i);
      boolean bool = g.b();
      return bool;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return false;
  }
  
  private boolean g()
  {
    SocketImpl localSocketImpl = null;
    SocketImplFactory localSocketImplFactory;
    try
    {
      localSocketImplFactory = (SocketImplFactory)btq.a(btq.a(Socket.class, SocketImplFactory.class), null);
      if (localSocketImplFactory != null) {
        break label108;
      }
      try
      {
        localSocketImpl = (SocketImpl)btq.a(btq.a(Socket.class, SocketImpl.class), new Socket());
        if (localSocketImpl == null) {
          throw new brz("SocketImpl was null");
        }
      }
      catch (brz localbrz1)
      {
        a(localbrz1);
        return false;
      }
      localObject = localbrz2.getClass();
    }
    catch (brz localbrz2)
    {
      a(localbrz2);
      return false;
    }
    Object localObject;
    if (localSocketImplFactory != null) {}
    for (;;)
    {
      try
      {
        localObject = new bqd(localSocketImplFactory, h, i);
        a((SocketImplFactory)localObject);
        e = ((bqd)localObject);
        return true;
      }
      catch (brz localbrz3)
      {
        a(localbrz3);
        return false;
        a(new NullPointerException("Null SocketImpl"));
        return false;
      }
      catch (IOException localIOException)
      {
        label108:
        a(localIOException);
      }
      if (!(localSocketImplFactory instanceof bqd)) {
        break;
      }
      return true;
      if (localObject == null) {
        continue;
      }
      localObject = new bqd((Class)localObject, h, i);
      Socket.setSocketImplFactory((SocketImplFactory)localObject);
    }
    return false;
  }
  
  public final boolean a()
  {
    boolean bool3 = false;
    if (!bqc.c())
    {
      a(bqc.d());
      return bool3;
    }
    label122:
    label153:
    label172:
    for (;;)
    {
      boolean bool1;
      try
      {
        bqc.e();
        bool1 = g() | false;
        if (Build.VERSION.SDK_INT >= 19)
        {
          bool2 = bool1 | e();
          if (Build.VERSION.SDK_INT < 17) {
            break label172;
          }
          bool2 |= buf.a(h, i);
          if (j != btp.b.a) {
            break label153;
          }
          javax.net.ssl.SSLSocketFactory localSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
          if (!(localSSLSocketFactory instanceof bqb)) {
            break label122;
          }
          f = ((bqb)localSSLSocketFactory);
          return bool2 | true;
        }
      }
      catch (bry localbry)
      {
        localbry.toString();
        btd.f();
        return false;
      }
      boolean bool2 = bool1 | b();
      continue;
      f = new bqb(localbry, h, i);
      HttpsURLConnection.setDefaultSSLSocketFactory(f);
      continue;
      bool3 = bool2;
      if (j != btp.b.b) {
        break;
      }
      return bool2 | f();
    }
  }
  
  public final boolean b()
  {
    do
    {
      try
      {
        javax.net.ssl.SSLSocketFactory localSSLSocketFactory = c();
        if (localSSLSocketFactory == null)
        {
          a(new NullPointerException("Delegate factory was null"));
          return false;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        a(localIllegalArgumentException1);
        return false;
      }
      catch (IllegalAccessException localIllegalAccessException1)
      {
        a(localIllegalAccessException1);
        return false;
      }
      catch (ClassCastException localClassCastException)
      {
        a(localClassCastException);
        return false;
      }
      catch (brz localbrz1)
      {
        a(localbrz1);
        return false;
      }
    } while ((localbrz1 instanceof bqb));
    bqb localbqb = new bqb(localbrz1, h, i);
    try
    {
      a(localbqb);
      c = localbqb;
      return true;
    }
    catch (IllegalArgumentException localIllegalArgumentException2)
    {
      a(localIllegalArgumentException2);
      return false;
    }
    catch (IllegalAccessException localIllegalAccessException2)
    {
      a(localIllegalAccessException2);
      return false;
    }
    catch (brz localbrz2)
    {
      a(localbrz2);
    }
    return false;
  }
  
  static final class a
    implements Runnable
  {
    boolean a = false;
    private boolean b;
    private btp c;
    
    public a(btp parambtp)
    {
      c = parambtp;
      b = true;
    }
    
    public final void run()
    {
      if (b)
      {
        a = c.b();
        return;
      }
      btp localbtp = c;
      try
      {
        javax.net.ssl.SSLSocketFactory localSSLSocketFactory = btp.c();
        if ((localSSLSocketFactory instanceof bqb)) {
          btp.a(a);
        }
        c = null;
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        btp.a(localIllegalArgumentException);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        btp.a(localIllegalAccessException);
        return;
      }
      catch (brz localbrz)
      {
        btp.a(localbrz);
      }
    }
  }
  
  public static enum b {}
}

/* Location:
 * Qualified Name:     btp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */