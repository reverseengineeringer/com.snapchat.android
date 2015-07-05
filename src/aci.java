import android.text.TextUtils;
import com.snapchat.android.Timber;
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

public final class aci
  implements ace, alb.a
{
  protected final Map<String, ChannelPage> a = new ConcurrentHashMap();
  final awp b;
  final adj c;
  final add d;
  protected adj.a e = new adj.a()
  {
    public final void a(@cgb List<ChannelPage> paramAnonymousList)
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
          if (!b.e(str))
          {
            Timber.e("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting filled icon media state for %s because it is not in the cache %s", new Object[] { localChannelPage });
            bool1 = bool2 | d.b(localChannelPage, MediaState.NOT_STARTED);
          }
        }
        str = Integer.toString(localChannelPage.b().hashCode());
        bool2 = bool1;
        if (localChannelPage.l() == MediaState.SUCCESS)
        {
          bool2 = bool1;
          if (!b.e(str))
          {
            Timber.e("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting inverted icon media state for %s because it is not in the cache %s", new Object[] { localChannelPage });
            bool2 = bool1 | d.c(localChannelPage, MediaState.NOT_STARTED);
          }
        }
        if ((localChannelPage.m() != MediaState.SUCCESS) || (localChannelPage.c() == null) || (b.e(Integer.toString(localChannelPage.c().hashCode())))) {
          break label280;
        }
        Timber.e("PublisherIconMediaLoader", "BRAND-ICON: Resetting loading icon media state for %s because it is not in the cache %s", new Object[] { localChannelPage });
      }
      label280:
      for (boolean bool1 = bool2 | d.d(localChannelPage, MediaState.NOT_STARTED);; bool1 = bool2)
      {
        bool2 = bool1;
        break;
        if (bool2) {
          c.b();
        }
        return;
      }
    }
  };
  protected adj.a f = new adj.a()
  {
    public final void a(@cgb List<ChannelPage> paramAnonymousList)
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
          Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for filled icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.k().name() });
          bool1 = bool2 | d.b(localChannelPage, MediaState.NOT_STARTED);
        }
        bool2 = bool1;
        if (localChannelPage.l().isError())
        {
          Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Resetting state for inverted icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.l().name() });
          bool2 = bool1 | d.c(localChannelPage, MediaState.NOT_STARTED);
        }
        if (!localChannelPage.m().isError()) {
          break label221;
        }
        Timber.a("PublisherIconMediaLoader", "BRAND-ICON: Resetting state for loading icon for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.m().name() });
      }
      label221:
      for (boolean bool1 = d.d(localChannelPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
      {
        bool2 = bool1;
        break;
        if (bool2) {
          c.b();
        }
        return;
      }
    }
  };
  protected adj.a g = new adj.a()
  {
    public final void a(@cgb List<ChannelPage> paramAnonymousList)
    {
      aci localaci = aci.this;
      Object localObject = paramAnonymousList.iterator();
      ChannelPage localChannelPage;
      boolean bool2;
      boolean bool3;
      for (boolean bool1 = false; ((Iterator)localObject).hasNext(); bool1 = localaci.a(localChannelPage, ChannelPage.MediaType.LOADING_ICON, DownloadPriority.MEDIUM) | bool1 | bool2 | bool3)
      {
        localChannelPage = (ChannelPage)((Iterator)localObject).next();
        bool2 = localaci.a(localChannelPage, ChannelPage.MediaType.FILLED_ICON, DownloadPriority.HIGH);
        bool3 = localaci.a(localChannelPage, ChannelPage.MediaType.INVERTED_ICON, DownloadPriority.HIGH);
      }
      if (bool1) {
        c.b();
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
  private final alb h;
  private final abq i;
  
  public aci()
  {
    this(adj.a(), add.a(), alb.a(), adc.c, abq.a());
  }
  
  private aci(adj paramadj, add paramadd, alb paramalb, awp paramawp, abq paramabq)
  {
    c = paramadj;
    d = paramadd;
    b = paramawp;
    h = paramalb;
    i = paramabq;
  }
  
  private boolean a(ChannelPage paramChannelPage, MediaState paramMediaState, ChannelPage.MediaType paramMediaType)
  {
    switch (aci.4.a[paramMediaType.ordinal()])
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
  
  public final void a(@cgb acf paramacf) {}
  
  @caq
  public final void a(alc paramalc)
  {
    Timber.a("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Download cancelled for publisher icon %s", new Object[] { d });
    a.remove(d);
  }
  
  @caq
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
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
      Timber.f("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Unknown URL %s", new Object[] { d });
      return;
      localMediaType = null;
    }
    if (paramuc.d()) {
      Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Downloaded publisher icon %s for %s (executed with %s priority)", new Object[] { d, b, b.name() });
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
      catch (aws parambfl)
      {
        boolean bool2;
        Timber.f("PublisherIconMediaLoader", "BDISCOVER-MEDIA-BRAND-ICON: annot cache publisher icon %s, external storage is not available.", new Object[] { d });
        bool1 = a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE, localMediaType) | false;
        continue;
      }
      if (bool1)
      {
        c.b();
        c.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.PUBLISHER_ICONS });
      }
      i.c(localChannelPage);
      return;
      Timber.f("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Cannot cache publisher icon %s for %s, cache write failed.", new Object[] { d, b });
      bool2 = a(localChannelPage, MediaState.DISK_FULL_ERROR, localMediaType);
      boolean bool1 = bool2 | false;
      continue;
      Timber.f("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Failed to download publisher icon %s %s", new Object[] { d, paramuc });
      bool1 = a(localChannelPage, MediaState.NETWORK_ERROR, localMediaType) | false;
    }
  }
  
  public final void a(@cgb String paramString) {}
  
  final boolean a(@cgb ChannelPage paramChannelPage, ChannelPage.MediaType paramMediaType, DownloadPriority paramDownloadPriority)
  {
    String str = paramChannelPage.a(paramMediaType);
    if ((str == null) || (a.containsKey(str))) {
      return false;
    }
    Object localObject = (MediaState)m.get(paramMediaType);
    if ((localObject != MediaState.SUCCESS) && (localObject == MediaState.NOT_STARTED))
    {
      localObject = Integer.toString(str.hashCode());
      if (b.e((String)localObject))
      {
        Timber.a("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: File exists in cache for publisher icon %s", new Object[] { str });
        return a(paramChannelPage, MediaState.SUCCESS, paramMediaType) | false;
      }
      if (b.a())
      {
        Timber.a("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Missing file for publisher icon %s", new Object[] { str });
        b.c((String)localObject);
        str = paramChannelPage.a(paramMediaType);
        Timber.c("PublisherIconMediaLoader", "DISCOVER-MEDIA-BRAND-ICON: Requesting download for %s publisher icon (%s).", new Object[] { b, str });
        a.put(str, paramChannelPage);
        a(paramChannelPage, MediaState.FETCHING_MEDIA, paramMediaType);
        localObject = new alc.a();
        a = paramDownloadPriority;
        e = str;
        d = str;
        g = String.format("%s-%s", new Object[] { paramMediaType.name(), b });
        b = DownloadPriority.BACKGROUND_MEDIUM;
        h = new String[] { "DISCOVER", "STORIES", b };
        paramMediaType = ((alc.a)localObject).a();
        h.a(paramMediaType, this);
        i.b(paramChannelPage);
        return true;
      }
      return a(paramChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE, paramMediaType) | false;
    }
    return false;
  }
  
  public final void b()
  {
    c.a(new adj.a[] { e });
  }
  
  public final void c()
  {
    c.a(new adj.a[] { f });
  }
  
  public final DiscoverMediaCategory d()
  {
    return DiscoverMediaCategory.HOME_PAGE;
  }
}

/* Location:
 * Qualified Name:     aci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */