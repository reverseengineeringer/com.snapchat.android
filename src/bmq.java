import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class bmq
{
  private static final bmq a;
  private final int b;
  private final long c;
  private final LinkedList<bmp> d = new LinkedList();
  private Executor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bnq.c("OkHttp ConnectionPool"));
  private final Runnable f = new Runnable()
  {
    public final void run()
    {
      bmq.a(bmq.this);
    }
  };
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    if (str2 != null) {}
    for (long l = Long.parseLong(str2); (str1 != null) && (!Boolean.parseBoolean(str1)); l = 300000L)
    {
      a = new bmq(0, l);
      return;
    }
    if (str3 != null)
    {
      a = new bmq(Integer.parseInt(str3), l);
      return;
    }
    a = new bmq(5, l);
  }
  
  private bmq(int paramInt, long paramLong)
  {
    b = paramInt;
    c = (paramLong * 1000L * 1000L);
  }
  
  public static bmq a()
  {
    return a;
  }
  
  private boolean b()
  {
    int i;
    bmp localbmp;
    long l3;
    try
    {
      if (d.isEmpty()) {
        return false;
      }
      ArrayList localArrayList = new ArrayList();
      i = 0;
      long l2 = System.nanoTime();
      l1 = c;
      localListIterator = d.listIterator(d.size());
      for (;;)
      {
        if (!localListIterator.hasPrevious()) {
          break label154;
        }
        localbmp = (bmp)localListIterator.previous();
        l3 = localbmp.d() + c - l2;
        if ((l3 > 0L) && (localbmp.b())) {
          break;
        }
        localListIterator.remove();
        localArrayList.add(localbmp);
      }
      if (!localbmp.c()) {
        break label292;
      }
    }
    finally {}
    long l1 = Math.min(l1, l3);
    i += 1;
    break label295;
    label154:
    ListIterator localListIterator = d.listIterator(d.size());
    label292:
    label295:
    label298:
    for (;;)
    {
      if ((localListIterator.hasPrevious()) && (i > b))
      {
        localbmp = (bmp)localListIterator.previous();
        if (localbmp.c())
        {
          ((List)localObject).add(localbmp);
          localListIterator.remove();
          i -= 1;
          break label298;
        }
      }
      else
      {
        if (((List)localObject).isEmpty()) {
          return true;
        }
        int j = ((List)localObject).size();
        i = 0;
        while (i < j)
        {
          bnq.a(getc);
          i += 1;
        }
        return true;
      }
      break label298;
      break;
    }
  }
  
  public final bmp a(bmh parambmh)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = d.listIterator(d.size());
        if (localListIterator.hasPrevious())
        {
          bmp localbmp2 = (bmp)localListIterator.previous();
          if ((b.a.equals(parambmh)) && (localbmp2.b()) && (System.nanoTime() - localbmp2.d() < c))
          {
            localListIterator.remove();
            boolean bool = localbmp2.e();
            bmp localbmp1 = localbmp2;
            if (!bool) {}
            try
            {
              bno.a().a(c);
              localbmp1 = localbmp2;
              if ((localbmp1 != null) && (localbmp1.e())) {
                d.addFirst(localbmp1);
              }
              return localbmp1;
            }
            catch (SocketException localSocketException)
            {
              bnq.a(c);
              bno.a();
              bno.a("Unable to tagSocket(): " + localSocketException);
            }
          }
        }
        else
        {
          Object localObject = null;
        }
      }
      finally {}
    }
  }
  
  final void a(bmp parambmp)
  {
    boolean bool = d.isEmpty();
    d.addFirst(parambmp);
    if (bool) {
      e.execute(f);
    }
  }
}

/* Location:
 * Qualified Name:     bmq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */