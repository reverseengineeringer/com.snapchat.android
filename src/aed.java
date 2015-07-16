import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.DSnapPanel;
import com.snapchat.android.discover.model.MediaState;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class aed
{
  private static final aed d = new aed();
  public final Map<String, MediaState> a = new ConcurrentHashMap();
  public final Map<String, MediaState> b = new ConcurrentHashMap();
  public final Map<String, MediaState> c = new ConcurrentHashMap();
  private final Map<String, MediaState> e = new ConcurrentHashMap();
  private final Map<String, MediaState> f = new ConcurrentHashMap();
  private final Map<String, MediaState> g = new ConcurrentHashMap();
  private final Map<String, MediaState> h = new ConcurrentHashMap();
  
  public static aed a()
  {
    return d;
  }
  
  public final MediaState a(@chc DSnapPanel paramDSnapPanel)
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
          localEntry.getKey();
          a.remove(localEntry.getKey());
        }
      }
    }
  }
  
  public final boolean a(@chc ChannelPage paramChannelPage)
  {
    return (!c(paramChannelPage).isLoading()) && (!d(paramChannelPage).isLoading()) && (!e(paramChannelPage).isLoading()) && (!f(paramChannelPage).isLoading());
  }
  
  public final boolean a(@chc ChannelPage paramChannelPage, @chc MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)e.put(paramChannelPage.d(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramChannelPage = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final boolean a(@chc DSnapPage paramDSnapPage, @chc MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)a.put(paramDSnapPage.b(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramDSnapPage.b();
      if (localMediaState != null) {}
      for (paramDSnapPage = localMediaState.name();; paramDSnapPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final boolean a(@chc DSnapPanel paramDSnapPanel, @chc MediaState paramMediaState)
  {
    paramDSnapPanel = (MediaState)b.put(b, paramMediaState);
    if (!paramMediaState.equals(paramDSnapPanel))
    {
      if (paramDSnapPanel != null) {}
      for (paramDSnapPanel = paramDSnapPanel.name();; paramDSnapPanel = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final boolean b(@chc ChannelPage paramChannelPage)
  {
    return (c(paramChannelPage) == MediaState.SUCCESS) && (d(paramChannelPage) == MediaState.SUCCESS) && (e(paramChannelPage) == MediaState.SUCCESS) && (f(paramChannelPage) == MediaState.SUCCESS);
  }
  
  public final boolean b(@chc ChannelPage paramChannelPage, @chc MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)f.put(paramChannelPage.a(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramChannelPage = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final boolean b(@chc DSnapPage paramDSnapPage, @chc MediaState paramMediaState)
  {
    if (k.intValue() == 0) {
      return true;
    }
    MediaState localMediaState = (MediaState)c.put(a, paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramDSnapPage = a;
      if (localMediaState != null) {}
      for (paramDSnapPage = localMediaState.name();; paramDSnapPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final MediaState c(@chc ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)e.get(paramChannelPage.d());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final boolean c(@chc ChannelPage paramChannelPage, @chc MediaState paramMediaState)
  {
    MediaState localMediaState = (MediaState)g.put(paramChannelPage.b(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramChannelPage = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final MediaState d(@chc ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)f.get(paramChannelPage.a());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final boolean d(@chc ChannelPage paramChannelPage, @chc MediaState paramMediaState)
  {
    if (paramChannelPage.c() == null) {
      return false;
    }
    MediaState localMediaState = (MediaState)h.put(paramChannelPage.c(), paramMediaState);
    if (!paramMediaState.equals(localMediaState))
    {
      paramChannelPage = b;
      if (localMediaState != null) {}
      for (paramChannelPage = localMediaState.name();; paramChannelPage = "NONE")
      {
        paramMediaState.name();
        return true;
      }
    }
    return false;
  }
  
  public final MediaState e(@chc ChannelPage paramChannelPage)
  {
    paramChannelPage = (MediaState)g.get(paramChannelPage.b());
    if (paramChannelPage != null) {
      return paramChannelPage;
    }
    return MediaState.NOT_STARTED;
  }
  
  public final MediaState f(@chc ChannelPage paramChannelPage)
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
 * Qualified Name:     aed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */