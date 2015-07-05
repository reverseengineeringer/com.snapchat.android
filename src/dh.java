import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class dh<K, V>
  extends dc<V>
{
  private final df<K, V> a;
  
  dh(df<K, V> paramdf)
  {
    a = paramdf;
  }
  
  public final dw<V> a()
  {
    return dl.a(a.c().a());
  }
  
  public final boolean contains(@Nullable Object paramObject)
  {
    return (paramObject != null) && (dj.a(a(), paramObject));
  }
  
  final de<V> d()
  {
    new da()
    {
      final dc<V> c()
      {
        return dh.this;
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
 * Qualified Name:     dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */