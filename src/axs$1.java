import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class axs$1
  extends LinkedHashMap<String, axn.a>
{
  axs$1(axs paramaxs, int paramInt1, int paramInt2)
  {
    super(paramInt1, 0.75F, true);
  }
  
  protected final boolean removeEldestEntry(Map.Entry<String, axn.a> paramEntry)
  {
    return size() > val$maxEntries;
  }
}

/* Location:
 * Qualified Name:     axs.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */