import java.util.NoSuchElementException;

final class ds$1
  extends eg<Object>
{
  public final boolean hasNext()
  {
    return false;
  }
  
  public final boolean hasPrevious()
  {
    return false;
  }
  
  public final Object next()
  {
    throw new NoSuchElementException();
  }
  
  public final int nextIndex()
  {
    return 0;
  }
  
  public final Object previous()
  {
    throw new NoSuchElementException();
  }
  
  public final int previousIndex()
  {
    return -1;
  }
}

/* Location:
 * Qualified Name:     ds.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */