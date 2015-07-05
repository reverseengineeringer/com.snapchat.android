import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public final class ala
{
  public static final Set<String> a = di.a("DEFAULT", "CAMERA", "FEED", "CHAT", "STORIES", "DISCOVER", new String[0]);
  private final String b;
  private final SortedSet<String> c;
  
  private ala(ala paramala, @cgc String paramString)
  {
    c = new TreeSet(c);
    int i = c.size();
    if (paramString != null) {
      c.add(paramString);
    }
    if (c.size() != i)
    {
      b = (b + "; " + paramString);
      return;
    }
    b = b;
  }
  
  public ala(String... paramVarArgs)
  {
    c = new TreeSet();
    ArrayList localArrayList = new ArrayList(paramVarArgs.length);
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      if (str != null)
      {
        c.add(str);
        localArrayList.add(str);
      }
      i += 1;
    }
    b = avb.a(localArrayList, "; ");
  }
  
  public final ala a(String paramString)
  {
    return new ala(this, paramString);
  }
  
  @avl
  public final DownloadPriority a(alc paramalc)
  {
    int i = 1;
    ala localala = g;
    if (asy.a(c, c, true) > 0) {}
    while (i != 0)
    {
      return b;
      i = 0;
    }
    return c;
  }
  
  @avl
  public final int b(alc paramalc)
  {
    return asy.a(c, g.c, false);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (ala)paramObject;
    } while (c.equals(c));
    return false;
  }
  
  public final int hashCode()
  {
    return c.hashCode();
  }
  
  public final String toString()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     ala
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */