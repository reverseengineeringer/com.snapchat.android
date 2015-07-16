import java.util.Map.Entry;
import javax.annotation.Nullable;

@cd
final class ea<K, V>
  extends dm<K, V>
{
  private final transient dn<K, V>[] a = new dn[2];
  private final transient dn<K, V>[] b;
  private final transient int c;
  
  ea(dn.a<?, ?>... paramVarArgs)
  {
    this(paramVarArgs, (byte)0);
  }
  
  private ea(dn.a<?, ?>[] paramArrayOfa, byte paramByte)
  {
    paramByte = dh.a();
    b = new dn[paramByte];
    c = (paramByte - 1);
    paramByte = 0;
    while (paramByte < 2)
    {
      Object localObject1 = paramArrayOfa[paramByte];
      Object localObject3 = ((dn.a)localObject1).getKey();
      int i = dh.a(localObject3.hashCode()) & c;
      Object localObject2 = b[i];
      if (localObject2 == null)
      {
        b[i] = localObject1;
        a[paramByte] = localObject1;
      }
      for (;;)
      {
        if (localObject2 == null) {
          break label243;
        }
        if (!localObject3.equals(((dn)localObject2).getKey())) {}
        for (i = 1;; i = 0)
        {
          if (i != 0) {
            break label233;
          }
          paramArrayOfa = String.valueOf(String.valueOf("key"));
          localObject1 = String.valueOf(String.valueOf(localObject1));
          localObject2 = String.valueOf(String.valueOf(localObject2));
          throw new IllegalArgumentException(paramArrayOfa.length() + 34 + ((String)localObject1).length() + ((String)localObject2).length() + "Multiple entries with same " + paramArrayOfa + ": " + (String)localObject1 + " and " + (String)localObject2);
          localObject1 = new ea.b((dn)localObject1, (dn)localObject2);
          break;
        }
        label233:
        localObject2 = ((dn)localObject2).a();
      }
      label243:
      paramByte += 1;
    }
  }
  
  final dr<Map.Entry<K, V>> b()
  {
    return new ea.a((byte)0);
  }
  
  public final V get(@Nullable Object paramObject)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return null;
      int i = dh.a(paramObject.hashCode());
      int j = c;
      for (dn localdn = b[(i & j)]; localdn != null; localdn = localdn.a()) {
        if (paramObject.equals(localdn.getKey())) {
          return (V)localdn.getValue();
        }
      }
    }
  }
  
  public final int size()
  {
    return a.length;
  }
  
  final class a
    extends do<K, V>
  {
    private a() {}
    
    public final ef<Map.Entry<K, V>> a()
    {
      return b().a();
    }
    
    final dl<Map.Entry<K, V>> d()
    {
      return new dy(this, ea.a(ea.this));
    }
    
    final dm<K, V> e()
    {
      return ea.this;
    }
  }
  
  static final class b<K, V>
    extends dn<K, V>
  {
    private final dn<K, V> c;
    
    b(dn<K, V> paramdn1, dn<K, V> paramdn2)
    {
      super();
      c = paramdn2;
    }
    
    final dn<K, V> a()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */