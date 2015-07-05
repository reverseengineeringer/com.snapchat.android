import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class es$a$1
  extends LinkedHashMap<K, V>
{
  es$a$1(es.a parama)
  {
    super(134, 0.75F, true);
  }
  
  protected final boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > a.a;
  }
}

/* Location:
 * Qualified Name:     es.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */