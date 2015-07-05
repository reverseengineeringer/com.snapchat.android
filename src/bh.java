import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class bh<CallbackClass>
  implements Iterable<CallbackClass>
{
  private final Set<CallbackClass> a = new HashSet();
  private Set<CallbackClass> b = null;
  
  public final void a()
  {
    try
    {
      a.clear();
      b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(CallbackClass paramCallbackClass)
  {
    try
    {
      a.add(paramCallbackClass);
      b = null;
      return;
    }
    finally
    {
      paramCallbackClass = finally;
      throw paramCallbackClass;
    }
  }
  
  public final Iterator<CallbackClass> iterator()
  {
    try
    {
      if (b == null) {
        b = Collections.unmodifiableSet(a);
      }
      Iterator localIterator = b.iterator();
      return localIterator;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */