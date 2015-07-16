import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class aem
{
  public final Object a = new Object();
  public final Map<aem.a, String> b = new HashMap();
  public final Set<aem.a> c = new HashSet();
  final ConcurrentHashMap<String, ChannelPage> d = new ConcurrentHashMap();
  private final aej e;
  private final aej.a f = new aej.a()
  {
    public final void a(@chc List<ChannelPage> paramAnonymousList)
    {
      synchronized (a)
      {
        d.clear();
        paramAnonymousList = paramAnonymousList.iterator();
        if (paramAnonymousList.hasNext())
        {
          ChannelPage localChannelPage = (ChannelPage)paramAnonymousList.next();
          d.put(d, localChannelPage);
        }
      }
      a();
    }
  };
  
  public aem()
  {
    this(aej.a());
  }
  
  private aem(aej paramaej)
  {
    e = paramaej;
    e.a(f);
    e.a(new aej.a[] { f });
  }
  
  @chc
  private int a(@chc String paramString)
  {
    synchronized (a)
    {
      if (d.size() == 0)
      {
        i = aem.b.c;
        return i;
      }
      if (d.containsKey(paramString))
      {
        i = aem.b.a;
        return i;
      }
    }
    int i = aem.b.b;
    return i;
  }
  
  private void a(aem.a parama, @chd String paramString)
  {
    synchronized (a)
    {
      if (c.contains(parama))
      {
        parama.a(paramString);
        c.remove(parama);
      }
      return;
    }
  }
  
  public final void a()
  {
    aem.a locala;
    String str;
    int i;
    for (;;)
    {
      synchronized (a)
      {
        HashMap localHashMap = new HashMap(b.size());
        Iterator localIterator = b.keySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        locala = (aem.a)localIterator.next();
        str = locala.b();
        i = a(str);
        switch (aem.2.a[(i - 1)])
        {
        case 1: 
          localHashMap.put(locala, str);
        }
      }
      ChannelPage localChannelPage = (ChannelPage)d.get(str);
      if (localChannelPage.e())
      {
        locala.a(localChannelPage);
        label162:
        a(locala, b);
      }
      else
      {
        if ((localChannelPage.m().isError()) || (localChannelPage.l().isError()) || (localChannelPage.k().isError())) {
          break label315;
        }
        if (!localChannelPage.n().isError()) {
          break label320;
        }
        break label315;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        locala.a();
        break label162;
      }
      localMap.put(locala, str);
      break label162;
      a(locala, null);
      locala.a();
      break;
      b.clear();
      b.putAll(localMap);
      new StringBuilder("Unprocessed intro media state listeners: ").append(b.size());
      return;
      break;
      label315:
      i = 1;
      continue;
      label320:
      i = 0;
    }
  }
  
  public final void a(@chd aem.a parama)
  {
    synchronized (a)
    {
      b.put(parama, parama.b());
      c.add(parama);
      a();
      return;
    }
  }
  
  public static abstract interface a
  {
    @cbr
    public abstract void a();
    
    @cbr
    public abstract void a(@chc ChannelPage paramChannelPage);
    
    public abstract void a(@chd String paramString);
    
    @chc
    public abstract String b();
  }
  
  static enum b
  {
    public static int[] a()
    {
      return (int[])d.clone();
    }
  }
}

/* Location:
 * Qualified Name:     aem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */