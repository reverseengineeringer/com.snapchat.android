import android.text.TextUtils;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.ChannelPage.MediaType;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class adi
  implements ade, alw.a
{
  protected final Map<String, ChannelPage> a = new ConcurrentHashMap();
  final axn b;
  final aej c;
  final aed d;
  protected aej.a e = new aej.a()
  {
    public final void a(@chc List<ChannelPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool2 = false;
      ChannelPage localChannelPage;
      if (paramAnonymousList.hasNext())
      {
        localChannelPage = (ChannelPage)paramAnonymousList.next();
        String str = Integer.toString(localChannelPage.a().hashCode());
        bool1 = bool2;
        if (localChannelPage.k() == MediaState.SUCCESS)
        {
          bool1 = bool2;
          if (!b.e(str)) {
            bool1 = bool2 | d.b(localChannelPage, MediaState.NOT_STARTED);
          }
        }
        str = Integer.toString(localChannelPage.b().hashCode());
        bool2 = bool1;
        if (localChannelPage.l() == MediaState.SUCCESS)
        {
          bool2 = bool1;
          if (!b.e(str)) {
            bool2 = bool1 | d.c(localChannelPage, MediaState.NOT_STARTED);
          }
        }
        if ((localChannelPage.m() != MediaState.SUCCESS) || (localChannelPage.c() == null) || (b.e(Integer.toString(localChannelPage.c().hashCode())))) {
          break label232;
        }
      }
      label232:
      for (boolean bool1 = bool2 | d.d(localChannelPage, MediaState.NOT_STARTED);; bool1 = bool2)
      {
        bool2 = bool1;
        break;
        if (bool2) {
          c.c();
        }
        return;
      }
    }
  };
  protected aej.a f = new aej.a()
  {
    public final void a(@chc List<ChannelPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool2 = false;
      ChannelPage localChannelPage;
      if (paramAnonymousList.hasNext())
      {
        localChannelPage = (ChannelPage)paramAnonymousList.next();
        bool1 = bool2;
        if (localChannelPage.k().isError())
        {
          localChannelPage.k().name();
          bool1 = bool2 | d.b(localChannelPage, MediaState.NOT_STARTED);
        }
        bool2 = bool1;
        if (localChannelPage.l().isError())
        {
          localChannelPage.l().name();
          bool2 = bool1 | d.c(localChannelPage, MediaState.NOT_STARTED);
        }
        if (!localChannelPage.m().isError()) {
          break label167;
        }
        localChannelPage.m().name();
      }
      label167:
      for (boolean bool1 = d.d(localChannelPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
      {
        bool2 = bool1;
        break;
        if (bool2) {
          c.c();
        }
        return;
      }
    }
  };
  protected aej.a g = new aej.a()
  {
    public final void a(@chc List<ChannelPage> paramAnonymousList)
    {
      adi localadi = adi.this;
      Object localObject = paramAnonymousList.iterator();
      ChannelPage localChannelPage;
      boolean bool2;
      boolean bool3;
      for (boolean bool1 = false; ((Iterator)localObject).hasNext(); bool1 = localadi.a(localChannelPage, ChannelPage.MediaType.LOADING_ICON, DownloadPriority.MEDIUM) | bool1 | bool2 | bool3)
      {
        localChannelPage = (ChannelPage)((Iterator)localObject).next();
        bool2 = localadi.a(localChannelPage, ChannelPage.MediaType.FILLED_ICON, DownloadPriority.HIGH);
        bool3 = localadi.a(localChannelPage, ChannelPage.MediaType.INVERTED_ICON, DownloadPriority.HIGH);
      }
      if (bool1) {
        c.c();
      }
      localObject = new HashSet();
      paramAnonymousList = paramAnonymousList.iterator();
      while (paramAnonymousList.hasNext())
      {
        localChannelPage = (ChannelPage)paramAnonymousList.next();
        ((Set)localObject).add(Integer.toString(localChannelPage.a().hashCode()));
        ((Set)localObject).add(Integer.toString(localChannelPage.b().hashCode()));
        if (localChannelPage.c() != null) {
          ((Set)localObject).add(Integer.toString(localChannelPage.c().hashCode()));
        }
      }
      b.a((Set)localObject);
    }
  };
  private final alw h;
  private final acq i;
  
  public adi()
  {
    this(aej.a(), aed.a(), alw.a(), aec.c, acq.a());
  }
  
  private adi(aej paramaej, aed paramaed, alw paramalw, axn paramaxn, acq paramacq)
  {
    c = paramaej;
    d = paramaed;
    b = paramaxn;
    h = paramalw;
    i = paramacq;
  }
  
  private boolean a(ChannelPage paramChannelPage, MediaState paramMediaState, ChannelPage.MediaType paramMediaType)
  {
    switch (adi.4.a[paramMediaType.ordinal()])
    {
    default: 
      return false;
    case 1: 
      return d.b(paramChannelPage, paramMediaState) | false;
    case 2: 
      return d.c(paramChannelPage, paramMediaState) | false;
    }
    return d.d(paramChannelPage, paramMediaState) | false;
  }
  
  public final void a()
  {
    c.a(g);
  }
  
  public final void a(@chc adf paramadf) {}
  
  @cbr
  public final void a(aly paramaly)
  {
    String str = d;
    a.remove(d);
  }
  
  @cbr
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    ChannelPage localChannelPage = (ChannelPage)a.remove(d);
    if (localChannelPage == null) {
      return;
    }
    String str = d;
    Iterator localIterator = n.keySet().iterator();
    ChannelPage.MediaType localMediaType;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localMediaType = (ChannelPage.MediaType)localIterator.next();
    } while (!TextUtils.equals(str, (CharSequence)n.get(localMediaType)));
    while (localMediaType == null)
    {
      paramaly = d;
      return;
      localMediaType = null;
    }
    if (paramus.d())
    {
      paramus = d;
      paramus = b;
      b.name();
    }
    for (;;)
    {
      try
      {
        if (b.a(Integer.toString(d.hashCode()), mBuffer, mSize) == null) {
          continue;
        }
        bool2 = a(localChannelPage, MediaState.SUCCESS, localMediaType);
        bool1 = bool2 | false;
      }
      catch (axq parambgl)
      {
        boolean bool2;
        paramaly = d;
        bool1 = a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE, localMediaType) | false;
        continue;
      }
      if (bool1)
      {
        c.c();
        c.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.PUBLISHER_ICONS });
      }
      i.b(localChannelPage);
      return;
      parambgl = d;
      parambgl = b;
      bool2 = a(localChannelPage, MediaState.DISK_FULL_ERROR, localMediaType);
      boolean bool1 = bool2 | false;
      continue;
      paramaly = d;
      bool1 = a(localChannelPage, MediaState.NETWORK_ERROR, localMediaType) | false;
    }
  }
  
  public final void a(@chc String paramString) {}
  
  final boolean a(@chc ChannelPage paramChannelPage, ChannelPage.MediaType paramMediaType, DownloadPriority paramDownloadPriority)
  {
    String str = paramChannelPage.a(paramMediaType);
    if ((str == null) || (a.containsKey(str))) {
      return false;
    }
    Object localObject = (MediaState)m.get(paramMediaType);
    if ((localObject != MediaState.SUCCESS) && (localObject == MediaState.NOT_STARTED))
    {
      str = Integer.toString(str.hashCode());
      if (b.e(str)) {
        return a(paramChannelPage, MediaState.SUCCESS, paramMediaType) | false;
      }
      if (b.a())
      {
        b.c(str);
        str = paramChannelPage.a(paramMediaType);
        localObject = b;
        a.put(str, paramChannelPage);
        a(paramChannelPage, MediaState.FETCHING_MEDIA, paramMediaType);
        localObject = new aly.a();
        a = paramDownloadPriority;
        e = str;
        d = str;
        g = String.format("%s-%s", new Object[] { paramMediaType.name(), b });
        b = DownloadPriority.BACKGROUND_MEDIUM;
        h = new String[] { "DISCOVER", "STORIES", b };
        paramMediaType = ((aly.a)localObject).a();
        h.a(paramMediaType, this);
        i.a(paramChannelPage);
        return true;
      }
      return a(paramChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE, paramMediaType) | false;
    }
    return false;
  }
  
  public final void b()
  {
    c.a(new aej.a[] { e });
  }
  
  public final void c()
  {
    c.a(new aej.a[] { f });
  }
  
  public final DiscoverMediaCategory d()
  {
    return DiscoverMediaCategory.HOME_PAGE;
  }
}

/* Location:
 * Qualified Name:     adi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */