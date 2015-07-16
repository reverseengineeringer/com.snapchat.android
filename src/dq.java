import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class dq<K, V>
  extends dj<V>
{
  private final dm<K, V> a;
  
  dq(dm<K, V> paramdm)
  {
    a = paramdm;
  }
  
  public final ef<V> a()
  {
    return du.a(a.a().a());
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return (paramObject != null) && (ds.a(a(), paramObject));
  }
  
  final dl<V> d()
  {
    new di()
    {
      final dj<V> c()
      {
        return dq.this;
      }
      
      public final V get(int paramAnonymousInt)
      {
        return (V)((Map.Entry)b.get(paramAnonymousInt)).getValue();
      }
    };
  }
  
  public final int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */