import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class dg<K, V>
  extends di<K>
{
  private final df<K, V> a;
  
  dg(df<K, V> paramdf)
  {
    a = paramdf;
  }
  
  public final dw<K> a()
  {
    return b().a();
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  final de<K> d()
  {
    new da()
    {
      final dc<K> c()
      {
        return dg.this;
      }
      
      public final K get(int paramAnonymousInt)
      {
        return (K)((Map.Entry)b.get(paramAnonymousInt)).getKey();
      }
    };
  }
  
  public final int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */