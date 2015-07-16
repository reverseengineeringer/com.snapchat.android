import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.DSnapPage;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class acy
{
  private static final acy d = new acy();
  public final aej a;
  public final List<ade> b;
  public final aed c;
  private final Bus e;
  private final alw f;
  private adf g = new adf();
  
  private acy()
  {
    this(localaej, localArrayList, aed.a(), bbo.a(), alw.a());
  }
  
  private acy(aej paramaej, List<ade> paramList, aed paramaed, Bus paramBus, alw paramalw)
  {
    b = paramList;
    a = paramaej;
    c = paramaed;
    e = paramBus;
    f = paramalw;
  }
  
  public static acy a()
  {
    return d;
  }
  
  public static void a(String paramString)
  {
    if (paramString == null) {
      return;
    }
    new acu(paramString).a();
  }
  
  public final void a(@chd ChannelPage paramChannelPage, @chd DSnapPage paramDSnapPage)
  {
    if ((paramChannelPage == null) && (paramDSnapPage != null) && (g.a != null)) {}
    for (Object localObject = new adf(g.a, paramDSnapPage);; localObject = new adf(paramChannelPage, paramDSnapPage))
    {
      adf localadf = g;
      g = ((adf)localObject);
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ade)((Iterator)localObject).next()).a(g);
      }
    }
    localObject = f.b();
    if (paramDSnapPage != null) {
      localObject = ((alv)localObject).a(h).a(g);
    }
    for (;;)
    {
      f.a((alv)localObject);
      if (paramDSnapPage != null) {
        f.a.a("DISCOVER", paramDSnapPage.b());
      }
      if (paramChannelPage != null) {
        f.a.a("DISCOVER", paramChannelPage.d());
      }
      a.c();
      return;
      if (paramChannelPage != null) {
        localObject = ((alv)localObject).a(b);
      } else {
        localObject = new alv(new String[] { "DISCOVER" });
      }
    }
  }
  
  @awj
  public final void b()
  {
    e.c(this);
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((ade)localIterator.next()).a();
    }
  }
  
  public final void c()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      ((ade)localIterator.next()).c();
    }
  }
  
  @bpi
  public final void onUserLoadedEvent(bfq parambfq)
  {
    a.e();
    a.b();
  }
}

/* Location:
 * Qualified Name:     acy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */