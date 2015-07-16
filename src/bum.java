import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

public final class bum
{
  List a = new LinkedList();
  final Set b = new HashSet();
  final Set c = new HashSet();
  private Executor d;
  
  public bum(Executor paramExecutor)
  {
    this(paramExecutor, new LinkedList(), new LinkedList());
  }
  
  private bum(Executor paramExecutor, List paramList1, List paramList2)
  {
    d = paramExecutor;
    a(paramList1);
    b(paramList2);
  }
  
  @Deprecated
  public final void a(btc parambtc)
  {
    a(parambtc, btc.a.e);
  }
  
  public final void a(btc parambtc, btc.a parama)
  {
    if (b) {
      return;
    }
    b = true;
    c = parama;
    d.execute(new bum.a(parambtc, (byte)0));
  }
  
  public final void a(bun parambun)
  {
    synchronized (a)
    {
      a.add(parambun);
      return;
    }
  }
  
  public final void a(List paramList)
  {
    synchronized (b)
    {
      b.addAll(paramList);
      b.remove(null);
      return;
    }
  }
  
  public final void b(List paramList)
  {
    synchronized (c)
    {
      c.addAll(paramList);
      c.remove(null);
      return;
    }
  }
  
  final class a
    implements Runnable
  {
    private btc b;
    
    private a(btc parambtc)
    {
      b = parambtc;
    }
    
    private boolean a(btc arg1)
    {
      String str = ???.a();
      synchronized (b)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext()) {
          if (str.contains((String)localIterator.next())) {
            return true;
          }
        }
        return false;
      }
    }
    
    private boolean a(String paramString)
    {
      synchronized (c)
      {
        Iterator localIterator = c.iterator();
        while (localIterator.hasNext()) {
          if (paramString.contains((String)localIterator.next())) {
            return false;
          }
        }
        return true;
      }
    }
    
    public final void run()
    {
      if (a(b)) {
        return;
      }
      Object localObject2 = b.a();
      if (a((String)localObject2))
      {
        int i = ((String)localObject2).indexOf("?");
        if (i != -1)
        {
          ??? = b;
          localObject2 = ((String)localObject2).substring(0, i);
          if (localObject2 == null) {
            throw new NullPointerException();
          }
          i = ((String)localObject2);
        }
      }
      synchronized (a)
      {
        localObject2 = a.iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((bun)((Iterator)localObject2).next()).a(b);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */