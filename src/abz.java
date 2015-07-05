import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.discover.model.ChannelPage;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

public final class abz
  implements adj.a
{
  private static abz c = new abz();
  public final Set<abz.a> a = new HashSet();
  private final Set<String> b = new HashSet();
  private final SharedPreferences d;
  private final ajx e;
  private final bgk f;
  
  private abz()
  {
    this(adj.a(), PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.b()), new ajx(), new bgk());
  }
  
  private abz(adj paramadj, SharedPreferences paramSharedPreferences, ajx paramajx, bgk parambgk)
  {
    paramadj.a(this);
    d = paramSharedPreferences;
    e = paramajx;
    f = parambgk;
  }
  
  public static abz a()
  {
    return c;
  }
  
  private void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        ((abz.a)localIterator.next()).a(paramBoolean);
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
        catch (NumberFormatException localNumberFormatException)
        {
          Timber.f("DiscoverNewContentObserver", localNumberFormatException.toString(), new Object[0]);
        }
      }
    }
    return localHashSet;
  }
  
  @caq
  public final void a(@cgb List<ChannelPage> paramList)
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
    if (b())
    {
      Timber.c("DiscoverNewContentObserver", "Updated - new editions were found", new Object[0]);
      a(true);
      return;
    }
    Timber.c("DiscoverNewContentObserver", "Updated - no new editions were found", new Object[0]);
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
    Timber.c("DiscoverNewContentObserver", "Discover has been seen by the user, resetting list of seen editions ids.", new Object[0]);
    if (b.isEmpty()) {
      return;
    }
    ajx.g(System.currentTimeMillis());
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
    @caq
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     abz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */