import java.util.Iterator;

final class auu$a
  implements Iterator<T>
{
  final Iterator<T> mIterator;
  
  auu$a(Iterator<T> paramIterator)
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
 * Qualified Name:     auu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */