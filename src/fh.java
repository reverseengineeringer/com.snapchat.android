import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class fh<E>
  extends AbstractList<E>
{
  private static final fi c = fi.a(fh.class);
  List<E> a;
  Iterator<E> b;
  
  public fh(List<E> paramList, Iterator<E> paramIterator)
  {
    a = paramList;
    b = paramIterator;
  }
  
  public E get(int paramInt)
  {
    if (a.size() > paramInt) {
      return (E)a.get(paramInt);
    }
    if (b.hasNext())
    {
      a.add(b.next());
      return (E)get(paramInt);
    }
    throw new NoSuchElementException();
  }
  
  public Iterator<E> iterator()
  {
    new Iterator()
    {
      int a = 0;
      
      public final boolean hasNext()
      {
        return (a < a.size()) || (b.hasNext());
      }
      
      public final E next()
      {
        for (;;)
        {
          if (a < a.size())
          {
            List localList = a;
            int i = a;
            a = (i + 1);
            return (E)localList.get(i);
          }
          a.add(b.next());
        }
      }
      
      public final void remove()
      {
        throw new UnsupportedOperationException();
      }
    };
  }
  
  public int size()
  {
    c.a("potentially expensive size() call");
    c.a("blowup running");
    for (;;)
    {
      if (!b.hasNext()) {
        return a.size();
      }
      a.add(b.next());
    }
  }
}

/* Location:
 * Qualified Name:     fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */