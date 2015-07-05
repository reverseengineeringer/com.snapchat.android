import java.util.Map.Entry;

final class dl$1
  extends dw<V>
{
  dl$1(dw paramdw) {}
  
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
 * Qualified Name:     dl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */