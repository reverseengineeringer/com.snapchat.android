import javax.annotation.Nullable;

@ce
abstract class dn<K, V>
  extends dk<K, V>
{
  dn(dn<K, V> paramdn)
  {
    super(paramdn.getKey(), paramdn.getValue());
  }
  
  dn(K paramK, V paramV)
  {
    super(paramK, paramV);
    cx.a(paramK, paramV);
  }
  
  @Nullable
  abstract dn<K, V> a();
  
  static final class a<K, V>
    extends dn<K, V>
  {
    a(K paramK, V paramV)
    {
      super(paramV);
    }
    
    @Nullable
    final dn<K, V> a()
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */