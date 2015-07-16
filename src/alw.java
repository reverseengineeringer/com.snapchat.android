import android.os.SystemClock;
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

@awj
public final class alw
{
  private static final alw e = new alw();
  public final amd a;
  public boolean b = false;
  public alw.c c;
  protected final amg.a d = new amg.a()
  {
    public final void a(amg paramAnonymousamg, aly paramAnonymousaly, bgl paramAnonymousbgl, us paramAnonymousus, Object paramAnonymousObject)
    {
      alw.a(alw.this, paramAnonymousamg, paramAnonymousaly, paramAnonymousbgl, paramAnonymousus, (alw.b)paramAnonymousObject);
    }
  };
  private final StringBuilder f = new StringBuilder(1024);
  private final Object g = new Object();
  private final Map<String, Set<aly>> h = new HashMap();
  private final bgn<amg> i;
  private final bgn<bgl> j;
  private final amj k;
  private final aml l;
  private final ExecutorService m;
  private final ami n;
  private final alt o;
  private final amm p;
  private final alx q;
  private alv r = new alv(new String[] { "DEFAULT" });
  
  private alw()
  {
    this(new bgn(amg.a, 5), new bgn(new Provider() {}, 10), new amj(), new aml(), new ThreadPoolExecutor(5, Integer.MAX_VALUE, 2L, TimeUnit.SECONDS, new LinkedBlockingQueue(Integer.MAX_VALUE), amh.a()), new ami(), alt.a(), new amm(), new amd(), alv.a, new alx());
  }
  
  private alw(bgn<amg> parambgn, bgn<bgl> parambgn1, amj paramamj, aml paramaml, ExecutorService paramExecutorService, ami paramami, alt paramalt, amm paramamm, amd paramamd, Set<String> paramSet, alx paramalx)
  {
    i = parambgn;
    j = parambgn1;
    k = paramamj;
    l = paramaml;
    m = paramExecutorService;
    n = paramami;
    o = paramalt;
    p = paramamm;
    a = paramamd;
    parambgn = paramSet.iterator();
    while (parambgn.hasNext())
    {
      parambgn1 = (String)parambgn.next();
      h.put(parambgn1, new HashSet());
    }
    q = paramalx;
  }
  
  public static alw a()
  {
    return e;
  }
  
  private Set<String> a(int paramInt)
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
        if ((localSet1 != null) && (localSet1.size() < paramInt)) {
          localHashSet.add(localObject2);
        }
      }
    }
    return localSet;
  }
  
  private static void a(StringBuilder paramStringBuilder, aly paramaly)
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
  
  private void e()
  {
    if (!ReleaseManager.f()) {
      return;
    }
    HashMap localHashMap = new HashMap();
    Object localObject2 = new ArrayList();
    Iterator localIterator2;
    Object localObject4;
    synchronized (g)
    {
      r.a(null);
      localIterator2 = alv.a.iterator();
      if (localIterator2.hasNext())
      {
        localObject4 = (String)localIterator2.next();
        localHashMap.put(localObject4, new HashSet((Collection)h.get(localObject4)));
        ((List)localObject2).add(new LinkedList((Queue)l.a.get(localObject4)));
      }
    }
    f.setLength(0);
    f.append("Executing:\n");
    ??? = alv.a.iterator();
    while (((Iterator)???).hasNext())
    {
      localIterator2 = ((Set)((Map)localObject1).get((String)((Iterator)???).next())).iterator();
      while (localIterator2.hasNext())
      {
        localObject4 = (aly)localIterator2.next();
        a(f, (aly)localObject4);
      }
    }
    f.append("Pending:\n");
    Iterator localIterator1 = ((List)localObject2).iterator();
    while (localIterator1.hasNext())
    {
      localObject2 = ((Collection)localIterator1.next()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ??? = (aly)((Iterator)localObject2).next();
        a(f, (aly)???);
      }
    }
    f.toString();
  }
  
  @awj
  public final void a(@chc alv arg1)
  {
    for (;;)
    {
      Object localObject5;
      String str;
      synchronized (g)
      {
        Object localObject2 = r;
        l.a();
        r = ???;
        localObject2 = l;
        alv localalv = r;
        synchronized (b)
        {
          Object localObject4 = a;
          a = new HashMap(((Map)localObject4).size());
          localObject4 = ((Map)localObject4).entrySet().iterator();
          if (!((Iterator)localObject4).hasNext()) {
            break;
          }
          localObject5 = (Map.Entry)((Iterator)localObject4).next();
          str = (String)((Map.Entry)localObject5).getKey();
          Object localObject6 = (PriorityQueue)((Map.Entry)localObject5).getValue();
          localObject5 = aml.a(Math.max(1, ((PriorityQueue)localObject6).size()), localalv);
          localObject6 = ((PriorityQueue)localObject6).iterator();
          if (((Iterator)localObject6).hasNext()) {
            ((PriorityQueue)localObject5).offer((aly)((Iterator)localObject6).next());
          }
        }
      }
      a.put(str, localObject5);
    }
    ??? = c;
    if (??? != null) {
      ???.a(r);
    }
    e();
  }
  
  @awj
  public final void a(aly paramaly, alw.a parama)
  {
    synchronized (g)
    {
      l.a(paramaly);
      amj localamj = k;
      synchronized (a)
      {
        Set localSet = (Set)b.get(paramaly.a());
        Object localObject1 = localSet;
        if (localSet == null)
        {
          localObject1 = new HashSet();
          b.put(paramaly.a(), localObject1);
        }
        ((Set)localObject1).add(parama);
        l.a();
        c();
        return;
      }
    }
  }
  
  @awj
  public final boolean a(String paramString)
  {
    synchronized (g)
    {
      paramString = l.a(paramString);
      if (paramString == null) {
        break label78;
      }
      Iterator localIterator = k.a(paramString).iterator();
      if (localIterator.hasNext()) {
        ((alw.a)localIterator.next()).a(paramString);
      }
    }
    l.a();
    return true;
    label78:
    return false;
  }
  
  @chc
  public final alv b()
  {
    synchronized (g)
    {
      alv localalv = r;
      return localalv;
    }
  }
  
  @awj
  public final void c()
  {
    int i1 = 0;
    label395:
    label401:
    for (;;)
    {
      synchronized (g)
      {
        int i2 = i.mCapacity - i.mResources.size();
        if (i2 >= q.a()) {
          break label395;
        }
        amg localamg = (amg)i.mResources.poll();
        bgl localbgl = (bgl)j.mResources.poll();
        Object localObject4 = a(q.b());
        if ((localamg != null) && (localbgl != null) && (((Set)localObject4).size() > 0))
        {
          localObject4 = l.a(r, (Set)localObject4);
          if (localObject4 != null)
          {
            if ((b) && (r.a((aly)localObject4).isBackground()))
            {
              l.a((aly)localObject4);
              if (i1 == 0)
              {
                if (localamg != null) {
                  i.a(localamg);
                }
                if (localbgl != null) {
                  j.a(localbgl);
                }
              }
              return;
            }
            i.mResources.size();
            i1 = i.mCapacity;
            l.a();
            alw.b localb = new alw.b(k.a((aly)localObject4));
            Object localObject5 = h;
            ((Set)h.get(localObject5)).add(localObject4);
            localObject5 = c;
            if (localObject5 != null) {
              ((alw.c)localObject5).a((aly)localObject4);
            }
            e();
            localObject5 = p;
            if (b == 0L)
            {
              b = SystemClock.elapsedRealtime();
              i1 = a;
              long l1 = b;
            }
            localObject5 = d;
            b.execute(new amg.2(localamg, (aly)localObject4, localbgl, (amg.a)localObject5, localb));
            i1 = 1;
            break label401;
          }
        }
        else
        {
          q.a();
          q.b();
        }
      }
      i1 = 0;
      break label401;
      Object localObject2 = null;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(aly paramaly);
    
    public abstract void a(aly paramaly, bgl parambgl, us paramus);
  }
  
  public static final class b
  {
    final Set<alw.a> a;
    
    public b(Set<alw.a> paramSet)
    {
      a = paramSet;
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(@chc alv paramalv);
    
    public abstract void a(aly paramaly);
    
    public abstract void a(aly paramaly, us paramus);
  }
}

/* Location:
 * Qualified Name:     alw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */