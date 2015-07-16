import java.util.NoSuchElementException;

final class ds$3
  extends ef<T>
{
  boolean a;
  
  ds$3(Object paramObject) {}
  
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
 * Qualified Name:     ds.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */