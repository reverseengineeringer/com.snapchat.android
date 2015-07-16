import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class ckw$1
  extends LinkedHashMap<String, ckx>
{
  ckw$1()
  {
    super(7);
  }
  
  protected final boolean removeEldestEntry(Map.Entry<String, ckx> paramEntry)
  {
    return size() > 500;
  }
}

/* Location:
 * Qualified Name:     ckw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */