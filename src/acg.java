import android.net.NetworkInfo;
import android.os.Handler;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class acg
  implements ace, ald
{
  final adj a;
  final add b;
  final awp c;
  final aco d;
  final acp e;
  final acq f;
  acf g = new acf();
  protected adj.b h = new adj.b()
  {
    @avl
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool1 = false;
      DSnapPage localDSnapPage;
      boolean bool2;
      if (paramAnonymousList.hasNext())
      {
        localDSnapPage = (DSnapPage)paramAnonymousList.next();
        bool2 = bool1;
        if (m.isError())
        {
          Timber.c("EditionMediaLoader", "Resetting placeholder state for %s because it was in error state %s", new Object[] { localDSnapPage, m.name() });
          bool2 = bool1 | b.b(localDSnapPage, MediaState.NOT_STARTED);
        }
        if (!l.isError()) {
          break label161;
        }
        Timber.c("EditionMediaLoader", "Resetting media state for %s because it was in error state %s", new Object[] { localDSnapPage, l.name() });
      }
      label161:
      for (bool1 = b.a(localDSnapPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
      {
        break;
        if (bool1) {
          a.b();
        }
        return;
      }
    }
  };
  protected adj.b i = new adj.b()
  {
    @avl
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        DSnapPage localDSnapPage = (DSnapPage)paramAnonymousList.next();
        if ((l != MediaState.SUCCESS) || (localDSnapPage.b() == null) || (c.e(localDSnapPage.b()))) {
          break label112;
        }
        Timber.e("EditionMediaLoader", "Resetting media state for %s because it is not in the cache %s", new Object[] { localDSnapPage });
        bool |= b.a(localDSnapPage, MediaState.NOT_STARTED);
      }
      label112:
      for (;;)
      {
        break;
        if (bool) {
          a.b();
        }
        return;
      }
    }
  };
  protected adj.b j = new adj.b()
  {
    public final void a(@cgb List<DSnapPage> paramAnonymousList)
    {
      acg localacg = acg.this;
      Object localObject1 = g;
      Object localObject2 = b;
      if (localObject2 != null) {
        localObject2 = new acg.4(localacg, (DSnapPage)localObject2);
      }
      for (int i = Math.max(0, dj.a(paramAnonymousList.iterator(), (cl)localObject2));; i = 0)
      {
        int j = i;
        boolean bool2 = false;
        if (j < paramAnonymousList.size() + i)
        {
          localObject2 = (DSnapPage)paramAnonymousList.get(j % paramAnonymousList.size());
          boolean bool1 = bool2;
          if (((DSnapPage)localObject2).c() != MediaState.SUCCESS)
          {
            if (((DSnapPage)localObject2).c() != MediaState.RESOLVE_NEEDED) {
              break label144;
            }
            bool1 = bool2 | d.a((DSnapPage)localObject2);
          }
          for (;;)
          {
            j += 1;
            bool2 = bool1;
            break;
            label144:
            bool1 = bool2;
            if (((DSnapPage)localObject2).c() == MediaState.NOT_STARTED)
            {
              bool1 = bool2;
              if (((DSnapPage)localObject2).b() != null) {
                if (c.e(((DSnapPage)localObject2).b()))
                {
                  bool1 = bool2 | b.a((DSnapPage)localObject2, MediaState.SUCCESS);
                }
                else
                {
                  if (c.a())
                  {
                    alc.a locala = new alc.a();
                    if (f.a((acf)localObject1, (DSnapPage)localObject2, locala)) {}
                    for (boolean bool3 = e.a((acf)localObject1, (DSnapPage)localObject2, locala);; bool3 = false)
                    {
                      bool1 = bool2 | bool3;
                      break;
                    }
                  }
                  bool1 = bool2 | b.a((DSnapPage)localObject2, MediaState.EXTERNAL_STORAGE_UNAVAILABLE);
                }
              }
            }
          }
        }
        if (bool2) {
          a.b();
        }
        localObject1 = new HashSet();
        paramAnonymousList = paramAnonymousList.iterator();
        while (paramAnonymousList.hasNext())
        {
          localObject2 = (DSnapPage)paramAnonymousList.next();
          if (((DSnapPage)localObject2).b() != null) {
            ((Set)localObject1).add(((DSnapPage)localObject2).b());
          }
        }
        c.a((Set)localObject1);
        return;
      }
    }
  };
  private final ale k;
  
  public acg()
  {
    this(ale.a(), adj.a(), add.a(), adc.b, new aco(), new acp(), new acs());
  }
  
  private acg(ale paramale, adj paramadj, add paramadd, awp paramawp, aco paramaco, acp paramacp, acq paramacq)
  {
    k = paramale;
    a = paramadj;
    b = paramadd;
    c = paramawp;
    d = paramaco;
    e = paramacp;
    f = paramacq;
  }
  
  public final void a()
  {
    k.a(this);
    adj localadj = a;
    adj.b localb = j;
    synchronized (e)
    {
      f.add(localb);
      return;
    }
  }
  
  public final void a(@cgb acf paramacf)
  {
    g = paramacf;
  }
  
  public final void a(@cgb NetworkInfo paramNetworkInfo)
  {
    paramNetworkInfo = a;
    Timber.c("DiscoverRepository", "Manually triggering update of channel and dsnap lists.", new Object[0]);
    g.post(k);
  }
  
  public final void a(@cgb String paramString)
  {
    new acm(new acl(paramString)).a();
  }
  
  public final void b()
  {
    a.a(new adj.b[] { i });
  }
  
  public final void c()
  {
    a.a(new adj.b[] { h });
  }
  
  public final DiscoverMediaCategory d()
  {
    return DiscoverMediaCategory.EDITION;
  }
}

/* Location:
 * Qualified Name:     acg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */