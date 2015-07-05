import java.util.Iterator;
import java.util.List;

final class fh$1
  implements Iterator<E>
{
  int a = 0;
  
  fh$1(fh paramfh) {}
  
  public final boolean hasNext()
  {
    return (a < b.a.size()) || (b.b.hasNext());
  }
  
  public final E next()
  {
    for (;;)
    {
      if (a < b.a.size())
      {
        List localList = b.a;
        int i = a;
        a = (i + 1);
        return (E)localList.get(i);
      }
      b.a.add(b.b.next());
    }
  }
  
  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     fh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */