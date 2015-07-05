import com.snapchat.android.Timber;
import com.snapchat.android.discover.model.ChannelPage;
import com.snapchat.android.discover.model.MediaState;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class adm
{
  public final Object a = new Object();
  public final Map<adm.a, String> b = new HashMap();
  public final Set<adm.a> c = new HashSet();
  final ConcurrentHashMap<String, ChannelPage> d = new ConcurrentHashMap();
  private final adj e;
  private final adj.a f = new adj.a()
  {
    public final void a(@cgb List<ChannelPage> paramAnonymousList)
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
  
  public adm()
  {
    this(adj.a());
  }
  
  private adm(adj paramadj)
  {
    e = paramadj;
    e.a(f);
    e.a(new adj.a[] { f });
  }
  
  @cgb
  private int a(@cgb String paramString)
  {
    synchronized (a)
    {
      if (d.size() == 0)
      {
        i = adm.b.c;
        return i;
      }
      if (d.containsKey(paramString))
      {
        i = adm.b.a;
        return i;
      }
    }
    int i = adm.b.b;
    return i;
  }
  
  private void a(adm.a parama, @cgc String paramString)
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
    adm.a locala;
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
        locala = (adm.a)localIterator.next();
        str = locala.b();
        i = a(str);
        switch (adm.2.a[(i - 1)])
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
          break label326;
        }
        if (!localChannelPage.n().isError()) {
          break label331;
        }
        break label326;
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
      Timber.a("IntroMediaStateProvider", "Unprocessed intro media state listeners: " + b.size(), new Object[0]);
      return;
      break;
      label326:
      i = 1;
      continue;
      label331:
      i = 0;
    }
  }
  
  public final void a(@cgc adm.a parama)
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
    @caq
    public abstract void a();
    
    @caq
    public abstract void a(@cgb ChannelPage paramChannelPage);
    
    public abstract void a(@cgc String paramString);
    
    @cgb
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
 * Qualified Name:     adm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */