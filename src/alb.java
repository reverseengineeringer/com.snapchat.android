import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.DownloadPriority;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.inject.Provider;

@avl
public final class alb
{
  private static final alb e = new alb();
  public final alh a;
  public boolean b = false;
  public alb.c c;
  protected final alk.a d = new alk.a()
  {
    public final void a(alk paramAnonymousalk, alc paramAnonymousalc, bfl paramAnonymousbfl, uc paramAnonymousuc, Object paramAnonymousObject)
    {
      alb.a(alb.this, paramAnonymousalk, paramAnonymousalc, paramAnonymousbfl, paramAnonymousuc, (alb.b)paramAnonymousObject);
    }
  };
  private final StringBuilder f = new StringBuilder(1024);
  private final Object g = new Object();
  private final Map<String, Set<alc>> h = new HashMap();
  private final bfn<alk> i;
  private final bfn<bfl> j;
  private final aln k;
  private final alp l;
  private final ExecutorService m;
  private final alm n;
  private final aky o;
  private final alq p;
  private ala q = new ala(new String[] { "DEFAULT" });
  
  private alb()
  {
    this(new bfn(alk.a, 3), new bfn(new Provider() {}, 6), new aln(), new alp(), new ThreadPoolExecutor(3, Integer.MAX_VALUE, 2L, TimeUnit.SECONDS, new LinkedBlockingQueue(Integer.MAX_VALUE), all.a()), new alm(), aky.a(), new alq(), new alh(), ala.a);
  }
  
  private alb(bfn<alk> parambfn, bfn<bfl> parambfn1, aln paramaln, alp paramalp, ExecutorService paramExecutorService, alm paramalm, aky paramaky, alq paramalq, alh paramalh, Set<String> paramSet)
  {
    i = parambfn;
    j = parambfn1;
    k = paramaln;
    l = paramalp;
    m = paramExecutorService;
    n = paramalm;
    o = paramaky;
    p = paramalq;
    a = paramalh;
    parambfn = paramSet.iterator();
    while (parambfn.hasNext())
    {
      parambfn1 = (String)parambfn.next();
      h.put(parambfn1, new HashSet());
    }
  }
  
  public static alb a()
  {
    return e;
  }
  
  private static void a(StringBuilder paramStringBuilder, alc paramalc)
  {
    paramStringBuilder.append("- ");
    paramStringBuilder.append("[");
    paramStringBuilder.append(g);
    paramStringBuilder.append("] ");
    paramStringBuilder.append(f);
    paramStringBuilder.append(" (");
    paramStringBuilder.append(b.name());
    paramStringBuilder.append(", ");
    paramStringBuilder.append(c.name());
    paramStringBuilder.append(")");
    paramStringBuilder.append("\n");
  }
  
  private int d()
  {
    int i1 = 0;
    for (;;)
    {
      synchronized (g)
      {
        Iterator localIterator = h.entrySet().iterator();
        if (localIterator.hasNext())
        {
          Set localSet = (Set)((Map.Entry)localIterator.next()).getValue();
          if (localSet != null) {
            i1 = localSet.size() + i1;
          }
        }
        else
        {
          return i1;
        }
      }
    }
  }
  
  private Set<String> e()
  {
    HashSet localHashSet = new HashSet();
    synchronized (g)
    {
      Iterator localIterator = h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (Map.Entry)localIterator.next();
        Set localSet1 = (Set)((Map.Entry)localObject2).getValue();
        localObject2 = (String)((Map.Entry)localObject2).getKey();
        if ((localSet1 != null) && (localSet1.size() < 2)) {
          localHashSet.add(localObject2);
        }
      }
    }
    return localSet;
  }
  
  private void f()
  {
    if (!ReleaseManager.f()) {
      return;
    }
    Object localObject2 = new HashMap();
    Object localObject3 = new ArrayList();
    Iterator localIterator;
    Object localObject5;
    synchronized (g)
    {
      ala localala = q.a(null);
      localIterator = ala.a.iterator();
      if (localIterator.hasNext())
      {
        localObject5 = (String)localIterator.next();
        ((Map)localObject2).put(localObject5, new HashSet((Collection)h.get(localObject5)));
        ((List)localObject3).add(new LinkedList((Queue)l.a.get(localObject5)));
      }
    }
    f.setLength(0);
    f.append("Executing:\n");
    ??? = ala.a.iterator();
    while (((Iterator)???).hasNext())
    {
      localIterator = ((Set)((Map)localObject2).get((String)((Iterator)???).next())).iterator();
      while (localIterator.hasNext())
      {
        localObject5 = (alc)localIterator.next();
        a(f, (alc)localObject5);
      }
    }
    f.append("Pending:\n");
    localObject2 = ((List)localObject3).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = ((Collection)((Iterator)localObject2).next()).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        ??? = (alc)((Iterator)localObject3).next();
        a(f, (alc)???);
      }
    }
    Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Download queue (context %s):\n%s", new Object[] { localObject1, f.toString() });
  }
  
  @avl
  public final void a(@cgb ala arg1)
  {
    for (;;)
    {
      Object localObject4;
      String str;
      synchronized (g)
      {
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Signaling context changed from %s to %s with %d queued requests", new Object[] { q, ???, Integer.valueOf(l.a()) });
        q = ???;
        alp localalp = l;
        ala localala = q;
        synchronized (b)
        {
          Object localObject3 = a;
          a = new HashMap(((Map)localObject3).size());
          localObject3 = ((Map)localObject3).entrySet().iterator();
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
          localObject4 = (Map.Entry)((Iterator)localObject3).next();
          str = (String)((Map.Entry)localObject4).getKey();
          Object localObject5 = (PriorityQueue)((Map.Entry)localObject4).getValue();
          localObject4 = alp.a(Math.max(1, ((PriorityQueue)localObject5).size()), localala);
          localObject5 = ((PriorityQueue)localObject5).iterator();
          if (((Iterator)localObject5).hasNext()) {
            ((PriorityQueue)localObject4).offer((alc)((Iterator)localObject5).next());
          }
        }
      }
      a.put(str, localObject4);
    }
    ??? = c;
    if (??? != null) {
      ???.a(q);
    }
    f();
  }
  
  @avl
  public final void a(alc paramalc, alb.a parama)
  {
    synchronized (g)
    {
      l.a(paramalc);
      aln localaln = k;
      synchronized (a)
      {
        Set localSet = (Set)b.get(paramalc.a());
        Object localObject1 = localSet;
        if (localSet == null)
        {
          localObject1 = new HashSet();
          b.put(paramalc.a(), localObject1);
        }
        ((Set)localObject1).add(parama);
        Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s queued. Queue size now %d", new Object[] { paramalc, Integer.valueOf(l.a()) });
        c();
        return;
      }
    }
  }
  
  @avl
  public final boolean a(String paramString)
  {
    alc localalc;
    synchronized (g)
    {
      Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Attempting to cancel request for key %s", new Object[] { paramString });
      localalc = l.a(paramString);
      if (localalc == null) {
        break label115;
      }
      paramString = k.a(localalc).iterator();
      if (paramString.hasNext()) {
        ((alb.a)paramString.next()).a(localalc);
      }
    }
    Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s canceled. Queue size now %d", new Object[] { localalc, Integer.valueOf(l.a()) });
    return true;
    label115:
    Timber.c("DownloadManager", "DOWNLOAD-MANAGER: No request to cancel for key %s", new Object[] { paramString });
    return false;
  }
  
  @cgb
  public final ala b()
  {
    synchronized (g)
    {
      ala localala = q;
      return localala;
    }
  }
  
  @avl
  public final void c()
  {
    int i2 = 0;
    synchronized (g)
    {
      alk localalk = (alk)i.mResources.poll();
      bfl localbfl = (bfl)j.mResources.poll();
      Object localObject3 = e();
      int i1 = i2;
      if (localalk != null)
      {
        i1 = i2;
        if (localbfl != null)
        {
          i1 = i2;
          if (((Set)localObject3).size() > 0)
          {
            localObject3 = l.a(q, (Set)localObject3);
            i1 = i2;
            if (localObject3 != null)
            {
              if ((!b) || (!q.a((alc)localObject3).isBackground())) {
                break label173;
              }
              Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Skipping remaining queue downloads since background downloads are paused.", new Object[0]);
              l.a((alc)localObject3);
              i1 = i2;
            }
          }
        }
      }
      if (i1 == 0)
      {
        if (localalk != null) {
          i.a(localalk);
        }
        if (localbfl != null) {
          j.a(localbfl);
        }
      }
      return;
      label173:
      Timber.c("DownloadManager", "DOWNLOAD-MANAGER: Request %s starting. Download executor pool size now %d/%d, queue size now %d", new Object[] { localObject3, Integer.valueOf(i.mResources.size()), Integer.valueOf(i.mCapacity), Integer.valueOf(l.a()) });
      alb.b localb = new alb.b(k.a((alc)localObject3));
      Object localObject4 = h;
      ((Set)h.get(localObject4)).add(localObject3);
      localObject4 = c;
      if (localObject4 != null) {
        ((alb.c)localObject4).a((alc)localObject3);
      }
      f();
      localObject4 = p;
      if (b == 0L)
      {
        b = SystemClock.elapsedRealtime();
        Timber.c("ContinuousDownloadSession", "Session[%d] starting at %d ms", new Object[] { Integer.valueOf(a), Long.valueOf(b) });
      }
      localObject4 = d;
      b.execute(new alk.2(localalk, (alc)localObject3, localbfl, (alk.a)localObject4, localb));
      i1 = 1;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(alc paramalc);
    
    public abstract void a(alc paramalc, bfl parambfl, uc paramuc);
  }
  
  public static final class b
  {
    final Set<alb.a> a;
    
    public b(Set<alb.a> paramSet)
    {
      a = paramSet;
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(@cgb ala paramala);
    
    public abstract void a(alc paramalc);
    
    public abstract void a(alc paramalc, uc paramuc);
  }
}

/* Location:
 * Qualified Name:     alb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */