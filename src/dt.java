import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class dt<K, V>
  extends db<K, V>
{
  final transient K a;
  final transient V b;
  transient db<V, K> c;
  
  dt(K paramK, V paramV)
  {
    if (paramK == null)
    {
      paramK = String.valueOf(String.valueOf(paramV));
      throw new NullPointerException(paramK.length() + 24 + "null key in entry: null=" + paramK);
    }
    if (paramV == null)
    {
      paramK = String.valueOf(String.valueOf(paramK));
      throw new NullPointerException(paramK.length() + 26 + "null value in entry: " + paramK + "=null");
    }
    a = paramK;
    b = paramV;
  }
  
  private dt(K paramK, V paramV, db<V, K> paramdb)
  {
    a = paramK;
    b = paramV;
    c = paramdb;
  }
  
  public final db<V, K> a()
  {
    db localdb = c;
    Object localObject = localdb;
    if (localdb == null)
    {
      localObject = new dt(b, a, this);
      c = ((db)localObject);
    }
    return (db<V, K>)localObject;
  }
  
  public final boolean containsKey(@Nullable Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public final boolean containsValue(@Nullable Object paramObject)
  {
    return b.equals(paramObject);
  }
  
  final di<Map.Entry<K, V>> d()
  {
    return di.a(dl.a(a, b));
  }
  
  final di<K> f()
  {
    return di.a(a);
  }
  
  public final V get(@Nullable Object paramObject)
  {
    if (a.equals(paramObject)) {
      return (V)b;
    }
    return null;
  }
  
  public final int size()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */