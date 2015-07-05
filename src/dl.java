import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.annotation.Nullable;

@cd
public final class dl
{
  static final ch.a a = new ch.a(cu.a, "=", (byte)0);
  
  static int a(int paramInt)
  {
    if (paramInt < 3)
    {
      ct.a(paramInt, "expectedSize");
      return paramInt + 1;
    }
    if (paramInt < 1073741824) {
      return paramInt / 3 + paramInt;
    }
    return Integer.MAX_VALUE;
  }
  
  static <K, V> dw<V> a(dw<Map.Entry<K, V>> paramdw)
  {
    new dw()
    {
      public final boolean hasNext()
      {
        return a.hasNext();
      }
      
      public final V next()
      {
        return (V)((Map.Entry)a.next()).getValue();
      }
    };
  }
  
  static String a(Map<?, ?> paramMap)
  {
    StringBuilder localStringBuilder = cu.a(paramMap.size()).append('{');
    a.a(localStringBuilder, paramMap.entrySet().iterator());
    return '}';
  }
  
  public static <K, V> HashMap<K, V> a()
  {
    return new HashMap();
  }
  
  @cd
  public static <K, V> Map.Entry<K, V> a(@Nullable K paramK, @Nullable V paramV)
  {
    return new dd(paramK, paramV);
  }
  
  static boolean a(Map<?, ?> paramMap, Object paramObject)
  {
    if (paramMap == paramObject) {
      return true;
    }
    if ((paramObject instanceof Map))
    {
      paramObject = (Map)paramObject;
      return paramMap.entrySet().equals(((Map)paramObject).entrySet());
    }
    return false;
  }
  
  public static <K, V> LinkedHashMap<K, V> b()
  {
    return new LinkedHashMap();
  }
  
  public static <K extends Comparable, V> TreeMap<K, V> c()
  {
    return new TreeMap();
  }
}

/* Location:
 * Qualified Name:     dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */