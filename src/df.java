import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
public abstract class df<K, V>
  implements Serializable, Map<K, V>
{
  private static final Map.Entry<?, ?>[] a = new Map.Entry[0];
  private transient di<Map.Entry<K, V>> b;
  private transient di<K> c;
  private transient dc<V> d;
  
  public static <K, V> df<K, V> b(K paramK, V paramV)
  {
    return db.a(paramK, paramV);
  }
  
  public dc<V> b()
  {
    dc localdc = d;
    Object localObject = localdc;
    if (localdc == null)
    {
      localObject = new dh(this);
      d = ((dc)localObject);
    }
    return (dc<V>)localObject;
  }
  
  public final di<Map.Entry<K, V>> c()
  {
    di localdi2 = b;
    di localdi1 = localdi2;
    if (localdi2 == null)
    {
      localdi1 = d();
      b = localdi1;
    }
    return localdi1;
  }
  
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
    return b().contains(paramObject);
  }
  
  abstract di<Map.Entry<K, V>> d();
  
  public final di<K> e()
  {
    di localdi2 = c;
    di localdi1 = localdi2;
    if (localdi2 == null)
    {
      localdi1 = f();
      c = localdi1;
    }
    return localdi1;
  }
  
  public boolean equals(@Nullable Object paramObject)
  {
    return dl.a(this, paramObject);
  }
  
  di<K> f()
  {
    return new dg(this);
  }
  
  public abstract V get(@Nullable Object paramObject);
  
  public int hashCode()
  {
    return c().hashCode();
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
    return dl.a(this);
  }
}

/* Location:
 * Qualified Name:     df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */