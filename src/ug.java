import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ug
{
  private final Map<String, List<String>> mHeadersMap = dl.a();
  
  public ug() {}
  
  public ug(@cgb blu paramblu)
  {
    Iterator localIterator = paramblu.a().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      mHeadersMap.put(str.toLowerCase(), paramblu.c(str));
    }
  }
  
  @cgb
  public final List<String> a(@cgb String paramString)
  {
    paramString = paramString.toLowerCase();
    if (mHeadersMap.containsKey(paramString)) {
      return (List)mHeadersMap.get(paramString);
    }
    return new ArrayList();
  }
}

/* Location:
 * Qualified Name:     ug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */