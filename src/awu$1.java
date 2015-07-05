import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class awu$1
  extends LinkedHashMap<String, String>
{
  awu$1(awu paramawu, int paramInt1, int paramInt2)
  {
    super(paramInt1, 0.75F, true);
  }
  
  protected final boolean removeEldestEntry(Map.Entry<String, String> paramEntry)
  {
    return size() > val$maxEntries;
  }
}

/* Location:
 * Qualified Name:     awu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */