import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public final class alv
{
  public static final Set<String> a = dr.a("DEFAULT", "CAMERA", "FEED", "CHAT", "STORIES", "DISCOVER", new String[0]);
  private final String b;
  private final SortedSet<String> c;
  
  private alv(alv paramalv, @chd String paramString)
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
  
  public alv(String... paramVarArgs)
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
    b = avz.a(localArrayList, "; ");
  }
  
  public final alv a(String paramString)
  {
    return new alv(this, paramString);
  }
  
  @awj
  public final DownloadPriority a(aly paramaly)
  {
    int i = 1;
    alv localalv = g;
    if (atx.a(c, c, true) > 0) {}
    while (i != 0)
    {
      return b;
      i = 0;
    }
    return c;
  }
  
  @awj
  public final int b(aly paramaly)
  {
    return atx.a(c, g.c, false);
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
      paramObject = (alv)paramObject;
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
 * Qualified Name:     alv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */