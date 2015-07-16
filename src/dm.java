import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
public abstract class dm<K, V>
  implements Serializable, Map<K, V>
{
  private static final Map.Entry<?, ?>[] a = new Map.Entry[0];
  private transient dr<Map.Entry<K, V>> b;
  private transient dr<K> c;
  private transient dj<V> d;
  
  public static <K, V> dm<K, V> a(K paramK1, V paramV1, K paramK2, V paramV2)
  {
    return new ea(new dn.a[] { a(paramK1, paramV1), a(paramK2, paramV2) });
  }
  
  private static <K, V> dn.a<K, V> a(K paramK, V paramV)
  {
    cx.a(paramK, paramV);
    return new dn.a(paramK, paramV);
  }
  
  private dj<V> c()
  {
    dj localdj = d;
    Object localObject = localdj;
    if (localdj == null)
    {
      localObject = new dq(this);
      d = ((dj)localObject);
    }
    return (dj<V>)localObject;
  }
  
  public final dr<Map.Entry<K, V>> a()
  {
    dr localdr2 = b;
    dr localdr1 = localdr2;
    if (localdr2 == null)
    {
      localdr1 = b();
      b = localdr1;
    }
    return localdr1;
  }
  
  abstract dr<Map.Entry<K, V>> b();
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean containsKey(@Nullable Object paramObject)
  {
    return get(paramObject) != null;
  }
  
  public boolean containsValue(@Nullable Object paramObject)
  {
    return c().contains(paramObject);
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    return du.a(this, paramObject);
  }
  
  public abstract V get(@Nullable Object paramObject);
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  @Deprecated
  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    return du.a(this);
  }
}

/* Location:
 * Qualified Name:     dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */