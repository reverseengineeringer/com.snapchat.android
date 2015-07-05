import android.os.Bundle;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Provider;

public final class ach
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
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        ChannelPage localChannelPage = (ChannelPage)paramAnonymousList.next();
        if ((localChannelPage.n() != MediaState.SUCCESS) || (b.e(localChannelPage.o()))) {
          break label105;
        }
        Timber.e("IntroVideoMediaLoader", "Resetting intro video media state for %s because it is not in the cache %s", new Object[] { localChannelPage });
        bool |= d.a(localChannelPage, MediaState.NOT_STARTED);
      }
      label105:
      for (;;)
      {
        break;
        if (bool) {
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
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        ChannelPage localChannelPage = (ChannelPage)paramAnonymousList.next();
        if (!localChannelPage.n().isError()) {
          break label98;
        }
        Timber.c("IntroVideoMediaLoader", "Resetting state for %s because it was in error state %s", new Object[] { localChannelPage, localChannelPage.n().name() });
        bool = d.a(localChannelPage, MediaState.NOT_STARTED) | bool;
      }
      label98:
      for (;;)
      {
        break;
        if (bool) {
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
      ach localach = ach.this;
      Object localObject = paramAnonymousList.iterator();
      boolean bool = false;
      while (((Iterator)localObject).hasNext())
      {
        ChannelPage localChannelPage = (ChannelPage)((Iterator)localObject).next();
        if ((localChannelPage.n() == MediaState.SUCCESS) || (localChannelPage.n() != MediaState.NOT_STARTED)) {
          break label201;
        }
        if (b.e(localChannelPage.o())) {
          bool = d.a(localChannelPage, MediaState.SUCCESS) | bool;
        } else if (b.a()) {
          bool = localach.a(localChannelPage) | bool;
        } else {
          bool |= d.a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
        }
      }
      label201:
      for (;;)
      {
        break;
        if (bool) {
          c.b();
        }
        localObject = new HashSet();
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext()) {
          ((Set)localObject).add(((ChannelPage)paramAnonymousList.next()).o());
        }
        b.a((Set)localObject);
        return;
      }
    }
  };
  private final alb h;
  private final acc i;
  private final Provider<String> j;
  private final abq k;
  
  public ach()
  {
    this(adj.a(), add.a(), alb.a(), adc.a, new acc(), new bfq(), abq.a());
  }
  
  private ach(adj paramadj, add paramadd, alb paramalb, awp paramawp, acc paramacc, Provider<String> paramProvider, abq paramabq)
  {
    c = paramadj;
    d = paramadd;
    b = paramawp;
    h = paramalb;
    i = paramacc;
    j = paramProvider;
    k = paramabq;
  }
  
  public final void a()
  {
    c.a(g);
  }
  
  public final void a(@cgb acf paramacf) {}
  
  @caq
  public final void a(alc paramalc)
  {
    Object localObject = (ChannelPage)a.remove(paramalc.a());
    if (localObject != null)
    {
      abq localabq = k;
      paramalc = paramalc.a();
      localObject = b;
      localabq.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", paramalc);
    }
  }
  
  @caq
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
  {
    ChannelPage localChannelPage = (ChannelPage)a.remove(paramalc.a());
    if (localChannelPage == null) {
      return;
    }
    if (paramuc.d()) {
      Timber.c("IntroVideoMediaLoader", "DISCOVER-MEDIA: Downloaded intro video for %s (executed with %s priority)", new Object[] { b, b.name() });
    }
    for (;;)
    {
      try
      {
        if (b.a(localChannelPage.o(), mBuffer, mSize) == null) {
          continue;
        }
        bool2 = d.a(localChannelPage, MediaState.SUCCESS);
        bool1 = bool2 | false;
      }
      catch (aws parambfl)
      {
        boolean bool2;
        String str;
        long l;
        Timber.f("IntroVideoMediaLoader", "DISCOVER-MEDIA: Cannot cache intro video for %s, external storage is not available.", new Object[] { b });
        bool1 = d.a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE) | false;
        continue;
      }
      parambfl = k;
      paramalc = paramalc.a();
      str = b;
      d.c(localChannelPage);
      bool2 = paramuc.d();
      l = paramuc.c();
      paramalc = parambfl.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", paramalc);
      if (paramalc != null) {
        paramalc.a("success", Boolean.valueOf(bool2)).a("reachability", a.f()).a("return_size_bytes", Long.valueOf(l)).a(false);
      }
      if (bool1)
      {
        c.b();
        c.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.INTRO_VIDEO_FILES });
      }
      k.c(localChannelPage);
      return;
      Timber.f("IntroVideoMediaLoader", "DISCOVER-MEDIA: Cannot cache intro video for %s, cache write failed.", new Object[] { b });
      bool2 = d.a(localChannelPage, MediaState.DISK_FULL_ERROR);
      boolean bool1 = bool2 | false;
      continue;
      Timber.f("IntroVideoMediaLoader", "DISCOVER-MEDIA: Failed to download intro video for %s.", new Object[] { b });
      bool1 = d.a(localChannelPage, MediaState.NETWORK_ERROR) | false;
    }
  }
  
  public final void a(@cgb String paramString) {}
  
  final boolean a(ChannelPage paramChannelPage)
  {
    String str1 = paramChannelPage.d();
    a.put(str1, paramChannelPage);
    boolean bool = d.a(paramChannelPage, MediaState.FETCHING_MEDIA) | false;
    Object localObject2 = i.a();
    Object localObject1;
    if (localObject2 != null)
    {
      Timber.c("IntroVideoMediaLoader", "DISCOVER-MEDIA: Requesting download for %s intro video (%s).", new Object[] { b, paramChannelPage.d() });
      if (paramChannelPage.d().startsWith("http"))
      {
        localObject1 = paramChannelPage.d();
        Object localObject3 = new alc.a();
        a = DownloadPriority.MEDIUM;
        e = paramChannelPage.d();
        d = ((String)localObject1);
        f = ((Bundle)localObject2);
        g = ("IntroVideo-" + b);
        b = DownloadPriority.BACKGROUND_LOW;
        h = new String[] { "DISCOVER", "STORIES", b };
        localObject1 = ((alc.a)localObject3).a("DISCOVER", paramChannelPage.d(), 7).a();
        h.a((alc)localObject1, this);
        localObject1 = k;
        localObject2 = paramChannelPage.d();
        localObject3 = b;
        String str2 = paramChannelPage.d();
        ((abq)localObject1).a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", (String)localObject2, EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME").a("publisher_name", localObject3).a("intro_video_url", str2).b());
      }
    }
    for (int m = 1;; m = 0)
    {
      if (m == 0) {
        break label337;
      }
      k.b(paramChannelPage);
      return bool;
      localObject1 = (String)j.get() + paramChannelPage.d();
      break;
    }
    label337:
    a.remove(str1);
    return d.a(paramChannelPage, MediaState.NOT_STARTED) | bool;
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
 * Qualified Name:     ach
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */