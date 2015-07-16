import java.util.Map;
import java.util.Set;

public abstract interface bpg
{
  public static final bpg a = new bpg()
  {
    public final Map<Class<?>, bpf> a(Object paramAnonymousObject)
    {
      return bpc.a(paramAnonymousObject);
    }
    
    public final Map<Class<?>, Set<bpe>> b(Object paramAnonymousObject)
    {
      return bpc.b(paramAnonymousObject);
    }
  };
  
  public abstract Map<Class<?>, bpf> a(Object paramObject);
  
  public abstract Map<Class<?>, Set<bpe>> b(Object paramObject);
}

/* Location:
 * Qualified Name:     bpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */