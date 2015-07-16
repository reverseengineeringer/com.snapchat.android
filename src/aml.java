import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;

@awj
public final class aml
{
  public Map<String, PriorityQueue<aly>> a;
  public final Object b = new Object();
  private final Map<String, aly> c = new HashMap();
  
  public aml()
  {
    this(alv.a);
  }
  
  private aml(Set<String> paramSet)
  {
    a = new HashMap(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      a.put(str, a(1, new alv(new String[] { str })));
    }
  }
  
  public static PriorityQueue<aly> a(int paramInt, alv paramalv)
  {
    return new PriorityQueue(paramInt, amk.a(paramalv));
  }
  
  public final int a()
  {
    synchronized (b)
    {
      int i = c.size();
      return i;
    }
  }
  
  public final aly a(@chc alv paramalv, @chc Set<String> paramSet)
  {
    synchronized (b)
    {
      paramalv = a(a.size(), paramalv);
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        Object localObject2 = (String)paramSet.next();
        localObject2 = (PriorityQueue)a.get(localObject2);
        if (!((PriorityQueue)localObject2).isEmpty()) {
          paramalv.add(((PriorityQueue)localObject2).peek());
        }
      }
    }
    if (!paramalv.isEmpty())
    {
      paramalv = pollh;
      paramalv = (aly)((PriorityQueue)a.get(paramalv)).poll();
      if (paramalv != null) {
        c.remove(paramalv.a());
      }
      for (;;)
      {
        return paramalv;
        new StringBuilder("Discrepency between request map and request queue map ").append(f);
      }
    }
    return null;
  }
  
  public final aly a(@chc String paramString)
  {
    synchronized (b)
    {
      paramString = (aly)c.get(paramString);
      if (paramString != null)
      {
        ((PriorityQueue)a.get(h)).remove(paramString);
        c.remove(paramString.a());
        return paramString;
      }
      return null;
    }
  }
  
  public final void a(aly paramaly)
  {
    aly localaly;
    Object localObject1;
    synchronized (b)
    {
      localaly = (aly)c.get(paramaly.a());
      localObject1 = paramaly;
      if (localaly == null) {
        break label248;
      }
      if (paramaly == null) {
        throw new IllegalArgumentException("other cannot be null");
      }
    }
    if (!paramaly.a().equals(localaly.a())) {
      throw new IllegalArgumentException("keys for both requests do not match");
    }
    if (!c.equals(c)) {
      throw new IllegalArgumentException("Fallback priorities for both requests do not match");
    }
    if (b.compareTo(b) >= 0)
    {
      localObject1 = b;
      if ((!a) || (!a)) {
        break label301;
      }
    }
    label248:
    label301:
    for (boolean bool = true;; bool = false)
    {
      long l = Math.min(j, j);
      localObject1 = new aly(d, e, (DownloadPriority)localObject1, c, bool, l, f, h, g, k, i);
      ((PriorityQueue)a.get(h)).remove(localaly);
      c.remove(localaly.a());
      c.put(((aly)localObject1).a(), localObject1);
      ((PriorityQueue)a.get(h)).offer(localObject1);
      return;
      localObject1 = b;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     aml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */