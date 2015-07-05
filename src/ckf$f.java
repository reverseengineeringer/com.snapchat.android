import java.util.ArrayList;
import java.util.Collections;
import java.util.TreeSet;

public final class ckf$f
  implements ckg, ckh
{
  volatile ckh a;
  volatile ckg b;
  private final String c;
  private final String d;
  private final String[] e;
  private final boolean f;
  private final boolean g;
  private final ckh h;
  private final ckg i;
  
  public ckf$f(String paramString1, String paramString2, ckh paramckh, ckg paramckg)
  {
    c = paramString1;
    d = paramString2;
    if (paramString1.equals(paramString2)) {}
    for (e = new String[] { paramString1 };; e = ((String[])paramString1.toArray(new String[paramString1.size()])))
    {
      h = paramckh;
      i = paramckg;
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
 * Qualified Name:     ckf.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */