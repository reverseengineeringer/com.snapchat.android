import java.util.Collection;
import java.util.Iterator;

@cd
public abstract class dd<E>
  extends de
  implements Collection<E>
{
  public boolean add(E paramE)
  {
    return c().add(paramE);
  }
  
  public boolean addAll(Collection<? extends E> paramCollection)
  {
    return c().addAll(paramCollection);
  }
  
  protected abstract Collection<E> c();
  
  public void clear()
  {
    c().clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return c().contains(paramObject);
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    return c().containsAll(paramCollection);
  }
  
  public boolean isEmpty()
  {
    return c().isEmpty();
  }
  
  public Iterator<E> iterator()
  {
    return c().iterator();
  }
  
  public boolean remove(Object paramObject)
  {
    return c().remove(paramObject);
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    return c().removeAll(paramCollection);
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    return c().retainAll(paramCollection);
  }
  
  public int size()
  {
    return c().size();
  }
  
  public Object[] toArray()
  {
    return c().toArray();
  }
  
  public <T> T[] toArray(T[] paramArrayOfT)
  {
    return c().toArray(paramArrayOfT);
  }
}

/* Location:
 * Qualified Name:     dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */