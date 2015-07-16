import java.util.Queue;

@cd
public abstract class df<E>
  extends dd<E>
  implements Queue<E>
{
  protected abstract Queue<E> b();
  
  public E element()
  {
    return (E)b().element();
  }
  
  public boolean offer(E paramE)
  {
    return b().offer(paramE);
  }
  
  public E peek()
  {
    return (E)b().peek();
  }
  
  public E poll()
  {
    return (E)b().poll();
  }
  
  public E remove()
  {
    return (E)b().remove();
  }
}

/* Location:
 * Qualified Name:     df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */