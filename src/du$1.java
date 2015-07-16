import java.util.Map.Entry;

final class du$1
  extends ef<V>
{
  du$1(ef paramef) {}
  
  public final boolean hasNext()
  {
    return a.hasNext();
  }
  
  public final V next()
  {
    return (V)((Map.Entry)a.next()).getValue();
  }
}

/* Location:
 * Qualified Name:     du.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */