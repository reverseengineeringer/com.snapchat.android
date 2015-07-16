import android.os.Bundle;
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

public final class adh
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
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        ChannelPage localChannelPage = (ChannelPage)paramAnonymousList.next();
        if ((localChannelPage.n() != MediaState.SUCCESS) || (b.e(localChannelPage.o()))) {
          break label90;
        }
        bool |= d.a(localChannelPage, MediaState.NOT_STARTED);
      }
      label90:
      for (;;)
      {
        break;
        if (bool) {
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
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        ChannelPage localChannelPage = (ChannelPage)paramAnonymousList.next();
        if (!localChannelPage.n().isError()) {
          break label81;
        }
        localChannelPage.n().name();
        bool = d.a(localChannelPage, MediaState.NOT_STARTED) | bool;
      }
      label81:
      for (;;)
      {
        break;
        if (bool) {
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
      adh localadh = adh.this;
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
          bool = localadh.a(localChannelPage) | bool;
        } else {
          bool |= d.a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
        }
      }
      label201:
      for (;;)
      {
        break;
        if (bool) {
          c.c();
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
  private final alw h;
  private final adc i;
  private final Provider<String> j;
  private final acq k;
  
  public adh()
  {
    this(aej.a(), aed.a(), alw.a(), aec.a, new adc(), new bgq(), acq.a());
  }
  
  private adh(aej paramaej, aed paramaed, alw paramalw, axn paramaxn, adc paramadc, Provider<String> paramProvider, acq paramacq)
  {
    c = paramaej;
    d = paramaed;
    b = paramaxn;
    h = paramalw;
    i = paramadc;
    j = paramProvider;
    k = paramacq;
  }
  
  public final void a()
  {
    c.a(g);
  }
  
  public final void a(@chc adf paramadf) {}
  
  @cbr
  public final void a(aly paramaly)
  {
    if ((ChannelPage)a.remove(paramaly.a()) != null) {
      k.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", paramaly.a());
    }
  }
  
  @cbr
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    ChannelPage localChannelPage = (ChannelPage)a.remove(paramaly.a());
    if (localChannelPage == null) {
      return;
    }
    if (paramus.d())
    {
      String str = b;
      b.name();
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
      catch (axq parambgl)
      {
        boolean bool2;
        long l;
        parambgl = b;
        bool1 = d.a(localChannelPage, MediaState.EXTERNAL_STORAGE_UNAVAILABLE) | false;
        continue;
      }
      parambgl = k;
      paramaly = paramaly.a();
      d.c(localChannelPage);
      bool2 = paramus.d();
      l = paramus.c();
      paramaly = parambgl.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", paramaly);
      if (paramaly != null) {
        paramaly.a("success", Boolean.valueOf(bool2)).a("reachability", a.f()).a("return_size_bytes", Long.valueOf(l)).a(false);
      }
      if (bool1)
      {
        c.c();
        c.a(new DbTable.DatabaseTable[] { DbTable.DatabaseTable.INTRO_VIDEO_FILES });
      }
      k.b(localChannelPage);
      return;
      parambgl = b;
      bool2 = d.a(localChannelPage, MediaState.DISK_FULL_ERROR);
      boolean bool1 = bool2 | false;
      continue;
      parambgl = b;
      bool1 = d.a(localChannelPage, MediaState.NETWORK_ERROR) | false;
    }
  }
  
  public final void a(@chc String paramString) {}
  
  final boolean a(ChannelPage paramChannelPage)
  {
    String str1 = paramChannelPage.d();
    a.put(str1, paramChannelPage);
    boolean bool = d.a(paramChannelPage, MediaState.FETCHING_MEDIA) | false;
    Object localObject2 = i.a();
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = b;
      paramChannelPage.d();
      if (paramChannelPage.d().startsWith("http"))
      {
        localObject1 = paramChannelPage.d();
        Object localObject3 = new aly.a();
        a = DownloadPriority.MEDIUM;
        e = paramChannelPage.d();
        d = ((String)localObject1);
        f = ((Bundle)localObject2);
        g = ("IntroVideo-" + b);
        b = DownloadPriority.BACKGROUND_LOW;
        h = new String[] { "DISCOVER", "STORIES", b };
        localObject1 = ((aly.a)localObject3).a("DISCOVER", paramChannelPage.d(), 7).a();
        h.a((aly)localObject1, this);
        localObject1 = k;
        localObject2 = paramChannelPage.d();
        localObject3 = b;
        String str2 = paramChannelPage.d();
        ((acq)localObject1).a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME", (String)localObject2, EasyMetric.EasyMetricFactory.a("DISCOVER_INTRO_VIDEO_DOWNLOAD_TIME").a("publisher_name", localObject3).a("intro_video_url", str2).b());
      }
    }
    for (int m = 1;; m = 0)
    {
      if (m == 0) {
        break label322;
      }
      k.a(paramChannelPage);
      return bool;
      localObject1 = (String)j.get() + paramChannelPage.d();
      break;
    }
    label322:
    a.remove(str1);
    return d.a(paramChannelPage, MediaState.NOT_STARTED) | bool;
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
 * Qualified Name:     adh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */