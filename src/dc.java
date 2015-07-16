import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;

@cc
@ce
public final class dc<E>
  extends df<E>
  implements Serializable
{
  @cf
  final int a;
  private final Queue<E> b;
  
  private dc()
  {
    co.a(true, "maxSize (%s) must >= 0", new Object[] { Integer.valueOf(5) });
    b = new ArrayDeque(5);
    a = 5;
  }
  
  public static <E> dc<E> a()
  {
    return new dc();
  }
  
  public final boolean add(E paramE)
  {
    co.a(paramE);
    if (a == 0) {
      return true;
    }
    if (size() == a) {
      b.remove();
    }
    b.add(paramE);
    return true;
  }
  
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    return ds.a(this, paramCollection.iterator());
  }
  
  protected final Queue<E> b()
  {
    return b;
  }
  
  public final boolean contains(Object paramObject)
  {
    return b.contains(co.a(paramObject));
  }
  
  public final boolean offer(E paramE)
  {
    return add(paramE);
  }
  
  public final boolean remove(Object paramObject)
  {
    return b.remove(co.a(paramObject));
  }
}

/* Location:
 * Qualified Name:     dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */