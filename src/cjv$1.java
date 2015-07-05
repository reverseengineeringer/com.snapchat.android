import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class cjv$1
  extends LinkedHashMap<String, cjw>
{
  cjv$1()
  {
    super(7);
  }
  
  protected final boolean removeEldestEntry(Map.Entry<String, cjw> paramEntry)
  {
    return size() > 500;
  }
}

/* Location:
 * Qualified Name:     cjv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */