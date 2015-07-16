import android.net.NetworkInfo;
import com.snapchat.android.discover.controller.DiscoverMediaCategory;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class adg
  implements ade, alz
{
  final aej a;
  final aed b;
  final axn c;
  final ado d;
  final adp e;
  final adq f;
  adf g = new adf();
  protected aej.b h = new aej.b()
  {
    @awj
    public final void a(@chc List<DSnapPage> paramAnonymousList)
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
          m.name();
          bool2 = bool1 | b.b(localDSnapPage, MediaState.NOT_STARTED);
        }
        if (!l.isError()) {
          break label125;
        }
        l.name();
      }
      label125:
      for (bool1 = b.a(localDSnapPage, MediaState.NOT_STARTED) | bool2;; bool1 = bool2)
      {
        break;
        if (bool1) {
          a.c();
        }
        return;
      }
    }
  };
  protected aej.b i = new aej.b()
  {
    @awj
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      paramAnonymousList = paramAnonymousList.iterator();
      boolean bool = false;
      if (paramAnonymousList.hasNext())
      {
        DSnapPage localDSnapPage = (DSnapPage)paramAnonymousList.next();
        if ((l != MediaState.SUCCESS) || (localDSnapPage.b() == null) || (c.e(localDSnapPage.b()))) {
          break label97;
        }
        bool |= b.a(localDSnapPage, MediaState.NOT_STARTED);
      }
      label97:
      for (;;)
      {
        break;
        if (bool) {
          a.c();
        }
        return;
      }
    }
  };
  protected aej.b j = new aej.b()
  {
    public final void a(@chc List<DSnapPage> paramAnonymousList)
    {
      adg localadg = adg.this;
      Object localObject1 = g;
      Object localObject2 = b;
      if (localObject2 != null) {
        localObject2 = new adg.4(localadg, (DSnapPage)localObject2);
      }
      for (int i = Math.max(0, ds.a(paramAnonymousList.iterator(), (cp)localObject2));; i = 0)
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
                    aly.a locala = new aly.a();
                    if (f.a((adf)localObject1, (DSnapPage)localObject2, locala)) {}
                    for (boolean bool3 = e.a((adf)localObject1, (DSnapPage)localObject2, locala);; bool3 = false)
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
          a.c();
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
  private final ama k;
  
  public adg()
  {
    this(ama.a(), aej.a(), aed.a(), aec.b, new ado(), new adp(), new ads());
  }
  
  private adg(ama paramama, aej paramaej, aed paramaed, axn paramaxn, ado paramado, adp paramadp, adq paramadq)
  {
    k = paramama;
    a = paramaej;
    b = paramaed;
    c = paramaxn;
    d = paramado;
    e = paramadp;
    f = paramadq;
  }
  
  public final void a()
  {
    k.a(this);
    aej localaej = a;
    aej.b localb = j;
    synchronized (e)
    {
      f.add(localb);
      return;
    }
  }
  
  public final void a(@chc adf paramadf)
  {
    g = paramadf;
  }
  
  public final void a(@chc NetworkInfo paramNetworkInfo)
  {
    a.b();
  }
  
  public final void a(@chc String paramString)
  {
    new adm(new adl(paramString)).a();
  }
  
  public final void b()
  {
    a.a(new aej.b[] { i });
  }
  
  public final void c()
  {
    a.a(new aej.b[] { h });
  }
  
  public final DiscoverMediaCategory d()
  {
    return DiscoverMediaCategory.EDITION;
  }
}

/* Location:
 * Qualified Name:     adg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */