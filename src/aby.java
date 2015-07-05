import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aby
{
  private static final aby d = new aby();
  public final adj a;
  public final List<ace> b;
  public final add c;
  private final Bus e;
  private final alb f;
  private acf g = new acf();
  
  private aby()
  {
    this(localadj, localArrayList, add.a(), ban.a(), alb.a());
  }
  
  private aby(adj paramadj, List<ace> paramList, add paramadd, Bus paramBus, alb paramalb)
  {
    b = paramList;
    a = paramadj;
    c = paramadd;
    e = paramBus;
    f = paramalb;
  }
  
  public static aby a()
  {
    return d;
  }
  
  public static void a(String paramString)
  {
    if (paramString == null) {
      return;
    }
    Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Fetching remote video urls for %s", new Object[] { paramString });
    new abu(paramString).a();
  }
  
  public final void a(@cgc ChannelPage paramChannelPage, @cgc DSnapPage paramDSnapPage)
  {
    if ((paramChannelPage == null) && (paramDSnapPage != null) && (g.a != null)) {}
    for (Object localObject = new acf(g.a, paramDSnapPage);; localObject = new acf(paramChannelPage, paramDSnapPage))
    {
      Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Updating user state from %s to %s", new Object[] { g, localObject });
      g = ((acf)localObject);
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ace)((Iterator)localObject).next()).a(g);
      }
    }
    localObject = f.b();
    if (paramDSnapPage != null) {
      localObject = ((ala)localObject).a(h).a(g);
    }
    for (;;)
    {
      f.a((ala)localObject);
      if (paramDSnapPage != null) {
        f.a.a("DISCOVER", paramDSnapPage.b());
      }
      if (paramChannelPage != null) {
        f.a.a("DISCOVER", paramChannelPage.d());
      }
      a.b();
      return;
      if (paramChannelPage != null) {
        localObject = ((ala)localObject).a(b);
      } else {
        localObject = new ala(new String[] { "DISCOVER" });
      }
    }
  }
  
  @avl
  public final void b()
  {
    e.c(this);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((ace)localIterator.next()).a();
    }
  }
  
  public final void c()
  {
    Timber.c("DiscoverMediaManager", "DISCOVER-MEDIA: Retry failed media", new Object[0]);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((ace)localIterator.next()).c();
    }
  }
  
  @boh
  public final void onUserLoadedEvent(ber paramber)
  {
    a.d();
  }
}

/* Location:
 * Qualified Name:     aby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */