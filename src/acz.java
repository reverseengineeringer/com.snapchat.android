import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.model.ChannelPage;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

public final class acz
  implements aej.a
{
  private static acz c = new acz();
  public final Set<acz.a> a = new HashSet();
  private final Set<String> b = new HashSet();
  private final SharedPreferences d;
  private final akr e;
  private final bhk f;
  
  private acz()
  {
    this(aej.a(), PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()), new akr(), new bhk());
  }
  
  private acz(aej paramaej, SharedPreferences paramSharedPreferences, akr paramakr, bhk parambhk)
  {
    paramaej.a(this);
    d = paramSharedPreferences;
    e = paramakr;
    f = parambhk;
  }
  
  public static acz a()
  {
    return c;
  }
  
  private void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        ((acz.a)localIterator.next()).a(paramBoolean);
      }
    }
  }
  
  private Set<String> d()
  {
    HashSet localHashSet = new HashSet();
    StringTokenizer localStringTokenizer = new StringTokenizer(d.getString(SharedPreferenceKey.CURRENT_EDITION_IDS.getKey(), ""), ",");
    while (localStringTokenizer.hasMoreTokens())
    {
      String str = localStringTokenizer.nextToken();
      if (!str.isEmpty()) {
        try
        {
          localHashSet.add(str);
        }
        catch (NumberFormatException localNumberFormatException) {}
      }
    }
    return localHashSet;
  }
  
  @cbr
  public final void a(@chc List<ChannelPage> paramList)
  {
    synchronized (b)
    {
      b.clear();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = nexte;
        if (str != null) {
          b.add(str);
        }
      }
    }
    if (b()) {
      a(true);
    }
  }
  
  public final boolean b()
  {
    Set localSet2 = d();
    synchronized (b)
    {
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        if (!localSet2.contains((String)localIterator.next())) {
          return true;
        }
      }
      return false;
    }
  }
  
  public final void c()
  {
    if (b.isEmpty()) {
      return;
    }
    akr.g(System.currentTimeMillis());
    synchronized (b)
    {
      Object localObject3 = b;
      StringBuilder localStringBuilder = new StringBuilder();
      localObject3 = ((Set)localObject3).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        String str2 = (String)((Iterator)localObject3).next();
        if (str2 != null) {
          localStringBuilder.append(str2).append(",");
        }
      }
    }
    String str1 = ((StringBuilder)localObject2).toString();
    ??? = d.edit();
    ((SharedPreferences.Editor)???).putString(SharedPreferenceKey.CURRENT_EDITION_IDS.getKey(), str1);
    ((SharedPreferences.Editor)???).apply();
    a(false);
  }
  
  public static abstract interface a
  {
    @cbr
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     acz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */