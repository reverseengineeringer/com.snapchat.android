import java.io.Serializable;
import javax.annotation.Nullable;

@cd
final class dd<K, V>
  extends cr<K, V>
  implements Serializable
{
  final K a;
  final V b;
  
  dd(@Nullable K paramK, @Nullable V paramV)
  {
    a = paramK;
    b = paramV;
  }
  
  @Nullable
  public final K getKey()
  {
    return (K)a;
  }
  
  @Nullable
  public final V getValue()
  {
    return (V)b;
  }
  
  public final V setValue(V paramV)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */