import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public final class brg
{
  public JSONArray a = new JSONArray();
  
  public brg(brk parambrk)
  {
    parambrk = parambrk.c().iterator();
    while (parambrk.hasNext())
    {
      Object localObject = ((bri)parambrk.next()).a();
      if (localObject != null) {
        a.put(localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     brg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */