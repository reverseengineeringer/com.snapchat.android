import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class dp<K, V>
  extends dr<K>
{
  private final dm<K, V> a;
  
  dp(dm<K, V> paramdm)
  {
    a = paramdm;
  }
  
  public final ef<K> a()
  {
    return b().a();
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  final dl<K> d()
  {
    new di()
    {
      final dj<K> c()
      {
        return dp.this;
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
 * Qualified Name:     dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */