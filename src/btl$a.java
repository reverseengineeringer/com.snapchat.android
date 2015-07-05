import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class btl$a
  implements Runnable
{
  private bsb b;
  
  private btl$a(btl parambtl, bsb parambsb)
  {
    b = parambsb;
  }
  
  private boolean a(bsb arg1)
  {
    String str = ???.a();
    synchronized (a.b)
    {
      Iterator localIterator = a.b.iterator();
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
    synchronized (a.c)
    {
      Iterator localIterator = a.c.iterator();
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
    synchronized (a.a)
    {
      localObject2 = a.a.iterator();
      if (((Iterator)localObject2).hasNext()) {
        ((btm)((Iterator)localObject2).next()).a(b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     btl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */