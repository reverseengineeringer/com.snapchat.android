import java.util.NoSuchElementException;

final class dj$3
  extends dw<T>
{
  boolean a;
  
  dj$3(Object paramObject) {}
  
  public final boolean hasNext()
  {
    return !a;
  }
  
  public final T next()
  {
    if (a) {
      throw new NoSuchElementException();
    }
    a = true;
    return (T)b;
  }
}

/* Location:
 * Qualified Name:     dj.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */