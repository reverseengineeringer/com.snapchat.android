import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

public final class bsh
{
  public JSONArray a = new JSONArray();
  
  public bsh(bsl parambsl)
  {
    parambsl = parambsl.c().iterator();
    while (parambsl.hasNext())
    {
      Object localObject = ((bsj)parambsl.next()).a();
      if (localObject != null) {
        a.put(localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bsh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */