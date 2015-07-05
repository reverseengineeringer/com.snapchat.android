import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public final class bor
{
  public final bor.b a = new bor.b();
  final Context b;
  public final ExecutorService c;
  public final bos d;
  final Map<String, bol> e;
  final Map<Object, boj> f;
  final Map<Object, boj> g;
  final Set<Object> h;
  final Handler i;
  final Handler j;
  final bom k;
  final bpk l;
  final List<bol> m;
  final bor.c n;
  final boolean o;
  boolean p;
  
  bor(Context paramContext, ExecutorService paramExecutorService, Handler paramHandler, bos parambos, bom parambom, bpk parambpk)
  {
    a.start();
    bpo.a(a.getLooper());
    b = paramContext;
    c = paramExecutorService;
    e = new LinkedHashMap();
    f = new WeakHashMap();
    g = new WeakHashMap();
    h = new HashSet();
    i = new bor.a(a.getLooper(), this);
    d = parambos;
    j = paramHandler;
    k = parambom;
    l = parambpk;
    m = new ArrayList(4);
    p = bpo.d(b);
    o = bpo.b(paramContext, "android.permission.ACCESS_NETWORK_STATE");
    n = new bor.c(this);
    paramContext = n;
    paramExecutorService = new IntentFilter();
    paramExecutorService.addAction("android.intent.action.AIRPLANE_MODE");
    if (a.o) {
      paramExecutorService.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }
    a.b.registerReceiver(paramContext, paramExecutorService);
  }
  
  private void a(boj paramboj)
  {
    Object localObject = paramboj.c();
    if (localObject != null)
    {
      k = true;
      f.put(localObject, paramboj);
    }
  }
  
  static void a(List<bol> paramList)
  {
    if (paramList.isEmpty()) {}
    while (!get0b.o) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      bol localbol = (bol)paramList.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(bpo.a(localbol));
    }
    bpo.a("Dispatcher", "delivered", localStringBuilder.toString());
  }
  
  private void e(bol parambol)
  {
    boj localboj = k;
    if (localboj != null) {
      a(localboj);
    }
    parambol = l;
    if (parambol != null)
    {
      int i2 = parambol.size();
      int i1 = 0;
      while (i1 < i2)
      {
        a((boj)parambol.get(i1));
        i1 += 1;
      }
    }
  }
  
  final void a(NetworkInfo paramNetworkInfo)
  {
    Object localObject;
    if ((c instanceof bpf))
    {
      localObject = (bpf)c;
      if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnectedOrConnecting())) {
        break label131;
      }
      ((bpf)localObject).a(3);
    }
    while ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected()) && (!f.isEmpty()))
    {
      paramNetworkInfo = f.values().iterator();
      while (paramNetworkInfo.hasNext())
      {
        localObject = (boj)paramNetworkInfo.next();
        paramNetworkInfo.remove();
        if (a.o) {
          bpo.a("Dispatcher", "replaying", b.a());
        }
        a((boj)localObject, false);
      }
      label131:
      switch (paramNetworkInfo.getType())
      {
      default: 
        ((bpf)localObject).a(3);
        break;
      case 1: 
      case 6: 
      case 9: 
        ((bpf)localObject).a(4);
        break;
      case 0: 
        switch (paramNetworkInfo.getSubtype())
        {
        case 7: 
        case 8: 
        case 9: 
        case 10: 
        case 11: 
        default: 
          ((bpf)localObject).a(3);
          break;
        case 13: 
        case 14: 
        case 15: 
          ((bpf)localObject).a(3);
          break;
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 12: 
          ((bpf)localObject).a(2);
          break;
        case 1: 
        case 2: 
          ((bpf)localObject).a(1);
        }
        break;
      }
    }
  }
  
  final void a(boj paramboj, boolean paramBoolean)
  {
    if (h.contains(j))
    {
      g.put(paramboj.c(), paramboj);
      if (a.o) {
        bpo.a("Dispatcher", "paused", b.a(), "because tag '" + j + "' is paused");
      }
    }
    label288:
    do
    {
      do
      {
        int i1;
        do
        {
          bpg localbpg;
          do
          {
            return;
            localbol = (bol)e.get(i);
            if (localbol == null) {
              break label288;
            }
            paramBoolean = b.o;
            localbpg = b;
            if (k != null) {
              break;
            }
            k = paramboj;
          } while (!paramBoolean);
          if ((l == null) || (l.isEmpty()))
          {
            bpo.a("Hunter", "joined", localbpg.a(), "to empty hunter");
            return;
          }
          bpo.a("Hunter", "joined", localbpg.a(), bpo.a(localbol, "to "));
          return;
          if (l == null) {
            l = new ArrayList(3);
          }
          l.add(paramboj);
          if (paramBoolean) {
            bpo.a("Hunter", "joined", localbpg.a(), bpo.a(localbol, "to "));
          }
          i1 = b.r;
        } while (i1 - 1 <= s - 1);
        s = i1;
        return;
        if (!c.isShutdown()) {
          break;
        }
      } while (!a.o);
      bpo.a("Dispatcher", "ignored", b.a(), "because shut down");
      return;
      bol localbol = bol.a(a, this, k, l, paramboj);
      n = c.submit(localbol);
      e.put(i, localbol);
      if (paramBoolean) {
        f.remove(paramboj.c());
      }
    } while (!a.o);
    bpo.a("Dispatcher", "enqueued", b.a());
  }
  
  final void a(bol parambol)
  {
    i.sendMessageDelayed(i.obtainMessage(5, parambol), 500L);
  }
  
  final void a(bol parambol, boolean paramBoolean)
  {
    String str2;
    StringBuilder localStringBuilder;
    if (b.o)
    {
      str2 = bpo.a(parambol);
      localStringBuilder = new StringBuilder("for error");
      if (!paramBoolean) {
        break label75;
      }
    }
    label75:
    for (String str1 = " (will replay)";; str1 = "")
    {
      bpo.a("Dispatcher", "batched", str2, str1);
      e.remove(f);
      d(parambol);
      return;
    }
  }
  
  final void a(Object paramObject)
  {
    if (!h.remove(paramObject)) {}
    Object localObject1;
    do
    {
      return;
      localObject1 = null;
      Iterator localIterator = g.values().iterator();
      while (localIterator.hasNext())
      {
        boj localboj = (boj)localIterator.next();
        if (j.equals(paramObject))
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((List)localObject2).add(localboj);
          localIterator.remove();
          localObject1 = localObject2;
        }
      }
    } while (localObject1 == null);
    j.sendMessage(j.obtainMessage(13, localObject1));
  }
  
  final void b(bol parambol)
  {
    i.sendMessage(i.obtainMessage(6, parambol));
  }
  
  final void c(bol parambol)
  {
    boolean bool2 = true;
    if (parambol.b()) {
      return;
    }
    if (c.isShutdown())
    {
      a(parambol, false);
      return;
    }
    if (o) {}
    for (NetworkInfo localNetworkInfo = ((ConnectivityManager)bpo.a(b, "connectivity")).getActiveNetworkInfo();; localNetworkInfo = null)
    {
      int i1;
      label70:
      int i2;
      label79:
      label86:
      boolean bool3;
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
      {
        i1 = 1;
        if (r <= 0) {
          break label139;
        }
        i2 = 1;
        if (i2 != 0) {
          break label144;
        }
        bool1 = false;
        bool3 = j.b();
        if (bool1) {
          break label174;
        }
        if ((!o) || (!bool3)) {
          break label168;
        }
      }
      label139:
      label144:
      label168:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        a(parambol, bool1);
        if (!bool1) {
          break;
        }
        e(parambol);
        return;
        i1 = 0;
        break label70;
        i2 = 0;
        break label79;
        r -= 1;
        bool1 = j.a(localNetworkInfo);
        break label86;
      }
      label174:
      if ((!o) || (i1 != 0))
      {
        if (b.o) {
          bpo.a("Dispatcher", "retrying", bpo.a(parambol));
        }
        if ((p instanceof bpb.a)) {
          i |= ad;
        }
        n = c.submit(parambol);
        return;
      }
      a(parambol, bool3);
      if (!bool3) {
        break;
      }
      e(parambol);
      return;
    }
  }
  
  final void d(bol parambol)
  {
    if (parambol.b()) {}
    do
    {
      return;
      m.add(parambol);
    } while (i.hasMessages(7));
    i.sendEmptyMessageDelayed(7, 200L);
  }
  
  static final class a
    extends Handler
  {
    private final bor a;
    
    public a(Looper paramLooper, bor parambor)
    {
      super();
      a = parambor;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      switch (what)
      {
      case 3: 
      case 8: 
      default: 
        bpd.a.post(new Runnable()
        {
          public final void run()
          {
            throw new AssertionError("Unknown handler message received: " + paramMessagewhat);
          }
        });
      case 1: 
      case 2: 
      case 11: 
      case 12: 
      case 4: 
        do
        {
          for (;;)
          {
            return;
            paramMessage = (boj)obj;
            a.a(paramMessage, true);
            return;
            paramMessage = (boj)obj;
            localObject1 = a;
            Object localObject2 = i;
            bol localbol = (bol)e.get(localObject2);
            if (localbol != null)
            {
              localbol.a(paramMessage);
              if (localbol.a())
              {
                e.remove(localObject2);
                if (a.o) {
                  bpo.a("Dispatcher", "canceled", b.a());
                }
              }
            }
            if (h.contains(j))
            {
              g.remove(paramMessage.c());
              if (a.o) {
                bpo.a("Dispatcher", "canceled", b.a(), "because paused request got canceled");
              }
            }
            paramMessage = (boj)f.remove(paramMessage.c());
            if ((paramMessage != null) && (a.o))
            {
              bpo.a("Dispatcher", "canceled", b.a(), "from replaying");
              return;
              paramMessage = obj;
              localObject1 = a;
              if (h.add(paramMessage))
              {
                localObject2 = e.values().iterator();
                while (((Iterator)localObject2).hasNext())
                {
                  localbol = (bol)((Iterator)localObject2).next();
                  bool = b.o;
                  boj localboj = k;
                  List localList = l;
                  if ((localList != null) && (!localList.isEmpty())) {}
                  for (int i = 1; (localboj != null) || (i != 0); i = 0)
                  {
                    if ((localboj != null) && (j.equals(paramMessage)))
                    {
                      localbol.a(localboj);
                      g.put(localboj.c(), localboj);
                      if (bool) {
                        bpo.a("Dispatcher", "paused", b.a(), "because tag '" + paramMessage + "' was paused");
                      }
                    }
                    if (i == 0) {
                      break label618;
                    }
                    i = localList.size() - 1;
                    while (i >= 0)
                    {
                      localboj = (boj)localList.get(i);
                      if (j.equals(paramMessage))
                      {
                        localbol.a(localboj);
                        g.put(localboj.c(), localboj);
                        if (bool) {
                          bpo.a("Dispatcher", "paused", b.a(), "because tag '" + paramMessage + "' was paused");
                        }
                      }
                      i -= 1;
                    }
                  }
                  continue;
                  if (localbol.a())
                  {
                    ((Iterator)localObject2).remove();
                    if (bool) {
                      bpo.a("Dispatcher", "canceled", bpo.a(localbol), "all actions paused");
                    }
                  }
                }
              }
            }
          }
          paramMessage = obj;
          a.a(paramMessage);
          return;
          paramMessage = (bol)obj;
          localObject1 = a;
          if (boz.b(h)) {
            k.a(f, m);
          }
          e.remove(f);
          ((bor)localObject1).d(paramMessage);
        } while (!b.o);
        bpo.a("Dispatcher", "batched", bpo.a(paramMessage), "for completion");
        return;
      case 5: 
        paramMessage = (bol)obj;
        a.c(paramMessage);
        return;
      case 6: 
        paramMessage = (bol)obj;
        a.a(paramMessage, false);
        return;
      case 7: 
        paramMessage = a;
        localObject1 = new ArrayList(m);
        m.clear();
        j.sendMessage(j.obtainMessage(8, localObject1));
        bor.a((List)localObject1);
        return;
      case 9: 
        label618:
        paramMessage = (NetworkInfo)obj;
        a.a(paramMessage);
        return;
      }
      Object localObject1 = a;
      if (arg1 == 1) {}
      for (boolean bool = true;; bool = false)
      {
        p = bool;
        return;
      }
    }
  }
  
  public static final class b
    extends HandlerThread
  {
    b()
    {
      super(10);
    }
  }
  
  static final class c
    extends BroadcastReceiver
  {
    final bor a;
    
    c(bor parambor)
    {
      a = parambor;
    }
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {}
      String str;
      do
      {
        do
        {
          return;
          str = paramIntent.getAction();
          if (!"android.intent.action.AIRPLANE_MODE".equals(str)) {
            break;
          }
        } while (!paramIntent.hasExtra("state"));
        paramContext = a;
        boolean bool = paramIntent.getBooleanExtra("state", false);
        paramIntent = i;
        paramContext = i;
        if (bool) {}
        for (int i = 1;; i = 0)
        {
          paramIntent.sendMessage(paramContext.obtainMessage(10, i, 0));
          return;
        }
      } while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(str));
      paramIntent = (ConnectivityManager)bpo.a(paramContext, "connectivity");
      paramContext = a;
      paramIntent = paramIntent.getActiveNetworkInfo();
      i.sendMessage(i.obtainMessage(9, paramIntent));
    }
  }
}

/* Location:
 * Qualified Name:     bor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */