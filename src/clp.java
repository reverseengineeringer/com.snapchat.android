import java.util.Collections;
import java.util.Set;

public final class clp
  implements clo
{
  public final chl a(String paramString)
  {
    if ("UTC".equalsIgnoreCase(paramString)) {
      return chl.a;
    }
    return null;
  }
  
  public final Set<String> a()
  {
    return Collections.singleton("UTC");
  }
}

/* Location:
 * Qualified Name:     clp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */