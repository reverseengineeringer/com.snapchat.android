import java.util.PriorityQueue;

public final class avg<E>
  extends PriorityQueue<E>
{
  public final boolean offer(E paramE)
  {
    if (contains(paramE)) {
      return false;
    }
    return super.offer(paramE);
  }
}

/* Location:
 * Qualified Name:     avg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */