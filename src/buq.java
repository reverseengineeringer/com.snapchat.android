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

public final class buq
{
  public static final int a = bvd.a.b;
  public static int b = buq.b.c;
  private static final List d = new LinkedList();
  brc c;
  private bre e;
  private brc f;
  private bvd g;
  private bum h;
  private btx i;
  private int j = b;
  private int k = a;
  
  static
  {
    try
    {
      URL localURL = new URL("https://www.google.com");
      if ((((URLStreamHandler)bur.a(bur.a(URL.class, URLStreamHandler.class), localURL)).getClass().getName().contains("okhttp")) && (Build.VERSION.SDK_INT >= 19))
      {
        b = buq.b.a;
        return;
      }
      b = buq.b.b;
      return;
    }
    catch (Exception localException)
    {
      b = buq.b.c;
    }
  }
  
  public buq(bum parambum, btx parambtx)
  {
    h = parambum;
    i = parambtx;
  }
  
  static void a(Throwable paramThrowable)
  {
    synchronized (d)
    {
      d.add(paramThrowable);
      bue.g();
      return;
    }
  }
  
  static void a(javax.net.ssl.SSLSocketFactory paramSSLSocketFactory)
  {
    org.apache.http.conn.ssl.SSLSocketFactory localSSLSocketFactory = org.apache.http.conn.ssl.SSLSocketFactory.getSocketFactory();
    bur.a(org.apache.http.conn.ssl.SSLSocketFactory.class, javax.net.ssl.SSLSocketFactory.class).set(localSSLSocketFactory, paramSSLSocketFactory);
  }
  
  private static boolean a(SocketImplFactory paramSocketImplFactory)
  {
    try
    {
      Field localField = bur.a(Socket.class, SocketImplFactory.class);
      return false;
    }
    catch (bta paramSocketImplFactory)
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
    return (javax.net.ssl.SSLSocketFactory)bur.a(org.apache.http.conn.ssl.SSLSocketFactory.class, javax.net.ssl.SSLSocketFactory.class).get(localSSLSocketFactory);
  }
  
  public static void d()
  {
    synchronized (d)
    {
      Iterator localIterator = d.iterator();
      if (localIterator.hasNext()) {
        bue.a((Throwable)localIterator.next());
      }
    }
    d.clear();
  }
  
  private boolean e()
  {
    buq.a locala = new buq.a(this);
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
      g = new bvd(k, h, i);
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
      localSocketImplFactory = (SocketImplFactory)bur.a(bur.a(Socket.class, SocketImplFactory.class), null);
      if (localSocketImplFactory != null) {
        break label108;
      }
      try
      {
        localSocketImpl = (SocketImpl)bur.a(bur.a(Socket.class, SocketImpl.class), new Socket());
        if (localSocketImpl == null) {
          throw new bta("SocketImpl was null");
        }
      }
      catch (bta localbta1)
      {
        a(localbta1);
        return false;
      }
      localObject = localbta2.getClass();
    }
    catch (bta localbta2)
    {
      a(localbta2);
      return false;
    }
    Object localObject;
    if (localSocketImplFactory != null) {}
    for (;;)
    {
      try
      {
        localObject = new bre(localSocketImplFactory, h, i);
        a((SocketImplFactory)localObject);
        e = ((bre)localObject);
        return true;
      }
      catch (bta localbta3)
      {
        a(localbta3);
        return false;
        a(new NullPointerException("Null SocketImpl"));
        return false;
      }
      catch (IOException localIOException)
      {
        label108:
        a(localIOException);
      }
      if (!(localSocketImplFactory instanceof bre)) {
        break;
      }
      return true;
      if (localObject == null) {
        continue;
      }
      localObject = new bre((Class)localObject, h, i);
      Socket.setSocketImplFactory((SocketImplFactory)localObject);
    }
    return false;
  }
  
  public final boolean a()
  {
    boolean bool3 = false;
    if (!brd.c())
    {
      a(brd.d());
      return bool3;
    }
    label116:
    label147:
    label166:
    for (;;)
    {
      boolean bool1;
      try
      {
        brd.e();
        bool1 = g() | false;
        if (Build.VERSION.SDK_INT >= 19)
        {
          bool2 = bool1 | e();
          if (Build.VERSION.SDK_INT < 17) {
            break label166;
          }
          bool2 |= bvg.a(h, i);
          if (j != buq.b.a) {
            break label147;
          }
          javax.net.ssl.SSLSocketFactory localSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
          if (!(localSSLSocketFactory instanceof brc)) {
            break label116;
          }
          f = ((brc)localSSLSocketFactory);
          return bool2 | true;
        }
      }
      catch (bsz localbsz)
      {
        bue.f();
        return false;
      }
      boolean bool2 = bool1 | b();
      continue;
      f = new brc(localbsz, h, i);
      HttpsURLConnection.setDefaultSSLSocketFactory(f);
      continue;
      bool3 = bool2;
      if (j != buq.b.b) {
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
      catch (bta localbta1)
      {
        a(localbta1);
        return false;
      }
    } while ((localbta1 instanceof brc));
    brc localbrc = new brc(localbta1, h, i);
    try
    {
      a(localbrc);
      c = localbrc;
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
    catch (bta localbta2)
    {
      a(localbta2);
    }
    return false;
  }
  
  static final class a
    implements Runnable
  {
    boolean a = false;
    private boolean b;
    private buq c;
    
    public a(buq parambuq)
    {
      c = parambuq;
      b = true;
    }
    
    public final void run()
    {
      if (b)
      {
        a = c.b();
        return;
      }
      buq localbuq = c;
      try
      {
        javax.net.ssl.SSLSocketFactory localSSLSocketFactory = buq.c();
        if ((localSSLSocketFactory instanceof brc)) {
          buq.a(a);
        }
        c = null;
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        buq.a(localIllegalArgumentException);
        return;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        buq.a(localIllegalAccessException);
        return;
      }
      catch (bta localbta)
      {
        buq.a(localbta);
      }
    }
  }
  
  public static enum b {}
}

/* Location:
 * Qualified Name:     buq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */