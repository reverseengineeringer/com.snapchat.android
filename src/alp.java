import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;

@avl
public final class alp
{
  public Map<String, PriorityQueue<alc>> a;
  public final Object b = new Object();
  private final Map<String, alc> c = new HashMap();
  
  public alp()
  {
    this(ala.a);
  }
  
  private alp(Set<String> paramSet)
  {
    a = new HashMap(paramSet.size());
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      a.put(str, a(1, new ala(new String[] { str })));
    }
  }
  
  public static PriorityQueue<alc> a(int paramInt, ala paramala)
  {
    return new PriorityQueue(paramInt, alo.a(paramala));
  }
  
  public final int a()
  {
    synchronized (b)
    {
      int i = c.size();
      return i;
    }
  }
  
  public final alc a(@cgb ala paramala, @cgb Set<String> paramSet)
  {
    synchronized (b)
    {
      paramala = a(a.size(), paramala);
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        Object localObject2 = (String)paramSet.next();
        localObject2 = (PriorityQueue)a.get(localObject2);
        if (!((PriorityQueue)localObject2).isEmpty()) {
          paramala.add(((PriorityQueue)localObject2).peek());
        }
      }
    }
    if (!paramala.isEmpty())
    {
      paramala = pollh;
      paramala = (alc)((PriorityQueue)a.get(paramala)).poll();
      if (paramala != null) {
        c.remove(paramala.a());
      }
      for (;;)
      {
        return paramala;
        Timber.e("DownloadRequestQueue", "Discrepency between request map and request queue map " + f, new Object[0]);
      }
    }
    return null;
  }
  
  public final alc a(@cgb String paramString)
  {
    synchronized (b)
    {
      paramString = (alc)c.get(paramString);
      if (paramString != null)
      {
        ((PriorityQueue)a.get(h)).remove(paramString);
        c.remove(paramString.a());
        return paramString;
      }
      return null;
    }
  }
  
  public final void a(alc paramalc)
  {
    alc localalc;
    Object localObject1;
    synchronized (b)
    {
      localalc = (alc)c.get(paramalc.a());
      localObject1 = paramalc;
      if (localalc == null) {
        break label248;
      }
      if (paramalc == null) {
        throw new IllegalArgumentException("other cannot be null");
      }
    }
    if (!paramalc.a().equals(localalc.a())) {
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
      localObject1 = new alc(d, e, (DownloadPriority)localObject1, c, bool, l, f, h, g, k, i);
      ((PriorityQueue)a.get(h)).remove(localalc);
      c.remove(localalc.a());
      c.put(((alc)localObject1).a(), localObject1);
      ((PriorityQueue)a.get(h)).offer(localObject1);
      return;
      localObject1 = b;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     alp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */