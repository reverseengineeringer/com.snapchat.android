import java.util.ArrayList;
import java.util.Collections;
import java.util.TreeSet;

public final class clg$f
  implements clh, cli
{
  volatile cli a;
  volatile clh b;
  private final String c;
  private final String d;
  private final String[] e;
  private final boolean f;
  private final boolean g;
  private final cli h;
  private final clh i;
  
  public clg$f(String paramString1, String paramString2, cli paramcli, clh paramclh)
  {
    c = paramString1;
    d = paramString2;
    if (paramString1.equals(paramString2)) {}
    for (e = new String[] { paramString1 };; e = ((String[])paramString1.toArray(new String[paramString1.size()])))
    {
      h = paramcli;
      i = paramclh;
      f = false;
      g = true;
      return;
      TreeSet localTreeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
      localTreeSet.add(paramString1);
      localTreeSet.add(paramString2);
      paramString1 = new ArrayList(localTreeSet);
      Collections.reverse(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     clg.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */