import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ux
{
  private final Map<String, List<String>> mHeadersMap = du.a();
  
  public ux() {}
  
  public ux(@chc bmv parambmv)
  {
    Iterator localIterator = parambmv.a().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      mHeadersMap.put(str.toLowerCase(), parambmv.c(str));
    }
  }
  
  @chc
  public final List<String> a(@chc String paramString)
  {
    paramString = paramString.toLowerCase();
    if (mHeadersMap.containsKey(paramString)) {
      return (List)mHeadersMap.get(paramString);
    }
    return new ArrayList();
  }
}

/* Location:
 * Qualified Name:     ux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */