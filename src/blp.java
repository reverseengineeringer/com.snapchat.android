import java.net.SocketException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class blp
{
  private static final blp a;
  private final int b;
  private final long c;
  private final LinkedList<blo> d = new LinkedList();
  private Executor e = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), bmp.c("OkHttp ConnectionPool"));
  private final Runnable f = new Runnable()
  {
    public final void run()
    {
      blp.a(blp.this);
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
      a = new blp(0, l);
      return;
    }
    if (str3 != null)
    {
      a = new blp(Integer.parseInt(str3), l);
      return;
    }
    a = new blp(5, l);
  }
  
  private blp(int paramInt, long paramLong)
  {
    b = paramInt;
    c = (paramLong * 1000L * 1000L);
  }
  
  public static blp a()
  {
    return a;
  }
  
  private boolean b()
  {
    int i;
    long l2;
    blo localblo;
    long l3;
    try
    {
      if (d.isEmpty()) {
        return false;
      }
      ArrayList localArrayList = new ArrayList();
      i = 0;
      l2 = System.nanoTime();
      l1 = c;
      localListIterator = d.listIterator(d.size());
      for (;;)
      {
        if (!localListIterator.hasPrevious()) {
          break label154;
        }
        localblo = (blo)localListIterator.previous();
        l3 = localblo.d() + c - l2;
        if ((l3 > 0L) && (localblo.b())) {
          break;
        }
        localListIterator.remove();
        localArrayList.add(localblo);
      }
      if (!localblo.c()) {
        break label318;
      }
    }
    finally {}
    long l1 = Math.min(l1, l3);
    i += 1;
    break label321;
    label154:
    ListIterator localListIterator = d.listIterator(d.size());
    label318:
    label321:
    label324:
    for (;;)
    {
      if ((localListIterator.hasPrevious()) && (i > b))
      {
        localblo = (blo)localListIterator.previous();
        if (localblo.c())
        {
          ((List)localObject).add(localblo);
          localListIterator.remove();
          i -= 1;
          break label324;
        }
      }
      else
      {
        boolean bool = ((List)localObject).isEmpty();
        if (!bool) {}
      }
      try
      {
        l2 = l1 / 1000000L;
        wait(l2, (int)(l1 - 1000000L * l2));
        return true;
      }
      catch (InterruptedException localInterruptedException)
      {
        int j;
        for (;;) {}
      }
      j = ((List)localObject).size();
      i = 0;
      while (i < j)
      {
        bmp.a(getc);
        i += 1;
      }
      return true;
      break label324;
      break;
    }
  }
  
  public final blo a(blg paramblg)
  {
    for (;;)
    {
      try
      {
        ListIterator localListIterator = d.listIterator(d.size());
        if (localListIterator.hasPrevious())
        {
          blo localblo2 = (blo)localListIterator.previous();
          if ((b.a.equals(paramblg)) && (localblo2.b()) && (System.nanoTime() - localblo2.d() < c))
          {
            localListIterator.remove();
            boolean bool = localblo2.e();
            blo localblo1 = localblo2;
            if (!bool) {}
            try
            {
              bmn.a().a(c);
              localblo1 = localblo2;
              if ((localblo1 != null) && (localblo1.e())) {
                d.addFirst(localblo1);
              }
              return localblo1;
            }
            catch (SocketException localSocketException)
            {
              bmp.a(c);
              bmn.a();
              bmn.a("Unable to tagSocket(): " + localSocketException);
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
  
  final void a(blo paramblo)
  {
    boolean bool = d.isEmpty();
    d.addFirst(paramblo);
    if (bool)
    {
      e.execute(f);
      return;
    }
    notifyAll();
  }
}

/* Location:
 * Qualified Name:     blp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */