import java.util.Iterator;

final class atw$a
  implements Iterator<T>
{
  final Iterator<T> mIterator;
  
  atw$a(Iterator<T> paramIterator)
  {
    Iterator localIterator;
    mIterator = localIterator;
  }
  
  public final boolean hasNext()
  {
    return mIterator.hasNext();
  }
  
  public final T next()
  {
    return (T)mIterator.next();
  }
  
  public final void remove()
  {
    this$0.a();
    mIterator.remove();
  }
}

/* Location:
 * Qualified Name:     atw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */