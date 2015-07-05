import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class add
{
  private static final add d = new add();
  public final Map<String, MediaState> a = new ConcurrentHashMap();
  public final Map<String, MediaState> b = new ConcurrentHashMap();
  public final Map<String, MediaState> c = new ConcurrentHashMap();
  private final Map<String, MediaState> e = new ConcurrentHashMap();
  private final Map<String, MediaState> f = new ConcurrentHashMap();
  private final Map<String, MediaState> g = new ConcurrentHashMap();
  private final Map<String, MediaState> h = new ConcurrentHashMap();
  
  public static add a()
  {
    return d;
  }
  
  public final MediaState a(@cgb DSnapPanel paramDSnapPanel)
  {
    paramDSnapPanel = (MediaState)b.get(b);
    if (paramDSnapPanel != null) {
      return paramDSnapPanel;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final void a(Set<String> paramSet)
  {
    synchronized (a)
    {
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramSet.contains(localEntry.getKey()))
        {
          Timber.c("DiscoverMediaStateTracker", "Removing key %s from tracked DSnap loading states.", new Object[] { localEntry.getKey() });
          a.remove(localEntry.getKey());
        }
      }
    }
  }
  
  public final boolean a(@cgb ChannelPage paramChannelPage)
  {
    return (!c(paramChannelPage).isLoading()) && (!d(paramChannelPage).isLoading()) && (!e(paramChannelPage).isLoading()) && (!f(paramChannelPage).isLoading());
  }
  
  public final boolean a(@cgb ChannelPage paramChannelPage, @cgb MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)e.put(paramChannelPage.d(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated intro video loading state for %s from %s to %s", new Object[] { str, paramChannelPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final boolean a(@cgb DSnapPage paramDSnapPage, @cgb MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)a.put(paramDSnapPage.b(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = paramDSnapPage.b();
      if (localMediaState != null) {}
      for (paramDSnapPage = localMediaState.name();; paramDSnapPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s media from %s to %s", new Object[] { str, paramDSnapPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final boolean a(@cgb DSnapPanel paramDSnapPanel, @cgb MediaState paramMediaState)
  {
    Object localObject = (MediaState)b.put(b, paramMediaState);
    if (!paramMediaState.equals(localObject))
    {
      if (localObject != null) {}
      for (localObject = ((MediaState)localObject).name();; localObject = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s from %s to %s", new Object[] { paramDSnapPanel, localObject, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final boolean b(@cgb ChannelPage paramChannelPage)
  {
    return (c(paramChannelPage) == MediaState.SUCCESS) && (d(paramChannelPage) == MediaState.SUCCESS) && (e(paramChannelPage) == MediaState.SUCCESS) && (f(paramChannelPage) == MediaState.SUCCESS);
  }
  
  public final boolean b(@cgb ChannelPage paramChannelPage, @cgb MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)f.put(paramChannelPage.a(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated filled icon loading state for %s from %s to %s", new Object[] { str, paramChannelPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final boolean b(@cgb DSnapPage paramDSnapPage, @cgb MediaState paramMediaState)
  {
    if (k.intValue() == 0) {
      return true;
    }
    MediaState localMediaState = (MediaState)c.put(a, paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = a;
      if (localMediaState != null) {}
      for (paramDSnapPage = localMediaState.name();; paramDSnapPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading state for %s placeholder from %s to %s", new Object[] { str, paramDSnapPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final MediaState c(@cgb ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)e.get(paramChannelPage.d());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final boolean c(@cgb ChannelPage paramChannelPage, @cgb MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)g.put(paramChannelPage.b(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated inverted icon loading state for %s from %s to %s", new Object[] { str, paramChannelPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final MediaState d(@cgb ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)f.get(paramChannelPage.a());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final boolean d(@cgb ChannelPage paramChannelPage, @cgb MediaState paramMediaState)
  {
    if (paramChannelPage.c() == null) {
      return false;
    }
    MediaState localMediaState = (MediaState)h.put(paramChannelPage.c(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      String str = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        Timber.c("DiscoverMediaStateTracker", "DISCOVER-MEDIA: Updated loading icon loading state for %s from %s to %s", new Object[] { str, paramChannelPage, paramMediaState.name() });
        return true;
      }
    }
    return false;
  }
  
  public final MediaState e(@cgb ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)g.get(paramChannelPage.b());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final MediaState f(@cgb ChannelPage paramChannelPage)
  {
    if (paramChannelPage.c() == null) {
      paramChannelPage = MediaState.SUCCESS;
    }
    MediaState localMediaState;
    do
    {
      return paramChannelPage;
      localMediaState = (MediaState)h.get(paramChannelPage.c());
      paramChannelPage = localMediaState;
    } while (localMediaState != null);
    return MediaState.NOT_STARTED;
  }
}

/* Location:
 * Qualified Name:     add
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */