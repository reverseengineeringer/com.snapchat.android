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
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public final class bps
{
  public final bps.b a = new bps.b();
  final Context b;
  public final ExecutorService c;
  public final bpt d;
  final Map<String, bpm> e;
  final Map<Object, bpk> f;
  final Map<Object, bpk> g;
  final Set<Object> h;
  final Handler i;
  final Handler j;
  final bpn k;
  final bql l;
  final List<bpm> m;
  final bps.c n;
  final boolean o;
  boolean p;
  
  bps(Context paramContext, ExecutorService paramExecutorService, Handler paramHandler, bpt parambpt, bpn parambpn, bql parambql)
  {
    a.start();
    bqp.a(a.getLooper());
    b = paramContext;
    c = paramExecutorService;
    e = new LinkedHashMap();
    f = new WeakHashMap();
    g = new WeakHashMap();
    h = new HashSet();
    i = new bps.a(a.getLooper(), this);
    d = parambpt;
    j = paramHandler;
    k = parambpn;
    l = parambql;
    m = new ArrayList(4);
    p = bqp.d(b);
    o = bqp.b(paramContext, "android.permission.ACCESS_NETWORK_STATE");
    n = new bps.c(this);
    paramContext = n;
    paramExecutorService = new IntentFilter();
    paramExecutorService.addAction("android.intent.action.AIRPLANE_MODE");
    if (a.o) {
      paramExecutorService.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    }
    a.b.registerReceiver(paramContext, paramExecutorService);
  }
  
  private void a(bpk parambpk)
  {
    Object localObject = parambpk.c();
    if (localObject != null)
    {
      k = true;
      f.put(localObject, parambpk);
    }
  }
  
  static void a(List<bpm> paramList)
  {
    if (paramList.isEmpty()) {}
    while (!get0b.o) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      bpm localbpm = (bpm)paramList.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(bqp.a(localbpm));
    }
    bqp.a("Dispatcher", "delivered", localStringBuilder.toString());
  }
  
  private void e(bpm parambpm)
  {
    bpk localbpk = k;
    if (localbpk != null) {
      a(localbpk);
    }
    parambpm = l;
    if (parambpm != null)
    {
      int i2 = parambpm.size();
      int i1 = 0;
      while (i1 < i2)
      {
        a((bpk)parambpm.get(i1));
        i1 += 1;
      }
    }
  }
  
  final void a(NetworkInfo paramNetworkInfo)
  {
    Object localObject;
    if ((c instanceof bqg))
    {
      localObject = (bqg)c;
      if ((paramNetworkInfo != null) && (paramNetworkInfo.isConnectedOrConnecting())) {
        break label131;
      }
      ((bqg)localObject).a(3);
    }
    while ((paramNetworkInfo != null) && (paramNetworkInfo.isConnected()) && (!f.isEmpty()))
    {
      paramNetworkInfo = f.values().iterator();
      while (paramNetworkInfo.hasNext())
      {
        localObject = (bpk)paramNetworkInfo.next();
        paramNetworkInfo.remove();
        if (a.o) {
          bqp.a("Dispatcher", "replaying", b.a());
        }
        a((bpk)localObject, false);
      }
      label131:
      switch (paramNetworkInfo.getType())
      {
      default: 
        ((bqg)localObject).a(3);
        break;
      case 1: 
      case 6: 
      case 9: 
        ((bqg)localObject).a(4);
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
          ((bqg)localObject).a(3);
          break;
        case 13: 
        case 14: 
        case 15: 
          ((bqg)localObject).a(3);
          break;
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        case 12: 
          ((bqg)localObject).a(2);
          break;
        case 1: 
        case 2: 
          ((bqg)localObject).a(1);
        }
        break;
      }
    }
  }
  
  final void a(bpk parambpk, boolean paramBoolean)
  {
    if (h.contains(j))
    {
      g.put(parambpk.c(), parambpk);
      if (a.o) {
        bqp.a("Dispatcher", "paused", b.a(), "because tag '" + j + "' is paused");
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
          bqh localbqh;
          do
          {
            return;
            localbpm = (bpm)e.get(i);
            if (localbpm == null) {
              break label288;
            }
            paramBoolean = b.o;
            localbqh = b;
            if (k != null) {
              break;
            }
            k = parambpk;
          } while (!paramBoolean);
          if ((l == null) || (l.isEmpty()))
          {
            bqp.a("Hunter", "joined", localbqh.a(), "to empty hunter");
            return;
          }
          bqp.a("Hunter", "joined", localbqh.a(), bqp.a(localbpm, "to "));
          return;
          if (l == null) {
            l = new ArrayList(3);
          }
          l.add(parambpk);
          if (paramBoolean) {
            bqp.a("Hunter", "joined", localbqh.a(), bqp.a(localbpm, "to "));
          }
          i1 = b.r;
        } while (i1 - 1 <= s - 1);
        s = i1;
        return;
        if (!c.isShutdown()) {
          break;
        }
      } while (!a.o);
      bqp.a("Dispatcher", "ignored", b.a(), "because shut down");
      return;
      bpm localbpm = bpm.a(a, this, k, l, parambpk);
      n = c.submit(localbpm);
      e.put(i, localbpm);
      if (paramBoolean) {
        f.remove(parambpk.c());
      }
    } while (!a.o);
    bqp.a("Dispatcher", "enqueued", b.a());
  }
  
  final void a(bpm parambpm)
  {
    i.sendMessageDelayed(i.obtainMessage(5, parambpm), 500L);
  }
  
  final void a(bpm parambpm, boolean paramBoolean)
  {
    String str2;
    StringBuilder localStringBuilder;
    if (b.o)
    {
      str2 = bqp.a(parambpm);
      localStringBuilder = new StringBuilder("for error");
      if (!paramBoolean) {
        break label75;
      }
    }
    label75:
    for (String str1 = " (will replay)";; str1 = "")
    {
      bqp.a("Dispatcher", "batched", str2, str1);
      e.remove(f);
      d(parambpm);
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
        bpk localbpk = (bpk)localIterator.next();
        if (j.equals(paramObject))
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new ArrayList();
          }
          ((List)localObject2).add(localbpk);
          localIterator.remove();
          localObject1 = localObject2;
        }
      }
    } while (localObject1 == null);
    j.sendMessage(j.obtainMessage(13, localObject1));
  }
  
  final void b(bpm parambpm)
  {
    i.sendMessage(i.obtainMessage(6, parambpm));
  }
  
  final void c(bpm parambpm)
  {
    boolean bool2 = true;
    if (parambpm.b()) {
      return;
    }
    if (c.isShutdown())
    {
      a(parambpm, false);
      return;
    }
    if (o) {}
    for (NetworkInfo localNetworkInfo = ((ConnectivityManager)bqp.a(b, "connectivity")).getActiveNetworkInfo();; localNetworkInfo = null)
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
        a(parambpm, bool1);
        if (!bool1) {
          break;
        }
        e(parambpm);
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
          bqp.a("Dispatcher", "retrying", bqp.a(parambpm));
        }
        if ((p instanceof bqc.a)) {
          i |= ad;
        }
        n = c.submit(parambpm);
        return;
      }
      a(parambpm, bool3);
      if (!bool3) {
        break;
      }
      e(parambpm);
      return;
    }
  }
  
  final void d(bpm parambpm)
  {
    if (parambpm.b()) {}
    do
    {
      return;
      m.add(parambpm);
    } while (i.hasMessages(7));
    i.sendEmptyMessageDelayed(7, 200L);
  }
  
  static final class a
    extends Handler
  {
    private final bps a;
    
    public a(Looper paramLooper, bps parambps)
    {
      super();
      a = parambps;
    }
    
    public final void handleMessage(final Message paramMessage)
    {
      switch (what)
      {
      case 3: 
      case 8: 
      default: 
        bqe.a.post(new Runnable()
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
            paramMessage = (bpk)obj;
            a.a(paramMessage, true);
            return;
            paramMessage = (bpk)obj;
            localObject1 = a;
            Object localObject2 = i;
            bpm localbpm = (bpm)e.get(localObject2);
            if (localbpm != null)
            {
              localbpm.a(paramMessage);
              if (localbpm.a())
              {
                e.remove(localObject2);
                if (a.o) {
                  bqp.a("Dispatcher", "canceled", b.a());
                }
              }
            }
            if (h.contains(j))
            {
              g.remove(paramMessage.c());
              if (a.o) {
                bqp.a("Dispatcher", "canceled", b.a(), "because paused request got canceled");
              }
            }
            paramMessage = (bpk)f.remove(paramMessage.c());
            if ((paramMessage != null) && (a.o))
            {
              bqp.a("Dispatcher", "canceled", b.a(), "from replaying");
              return;
              paramMessage = obj;
              localObject1 = a;
              if (h.add(paramMessage))
              {
                localObject2 = e.values().iterator();
                while (((Iterator)localObject2).hasNext())
                {
                  localbpm = (bpm)((Iterator)localObject2).next();
                  bool = b.o;
                  bpk localbpk = k;
                  List localList = l;
                  if ((localList != null) && (!localList.isEmpty())) {}
                  for (int i = 1; (localbpk != null) || (i != 0); i = 0)
                  {
                    if ((localbpk != null) && (j.equals(paramMessage)))
                    {
                      localbpm.a(localbpk);
                      g.put(localbpk.c(), localbpk);
                      if (bool) {
                        bqp.a("Dispatcher", "paused", b.a(), "because tag '" + paramMessage + "' was paused");
                      }
                    }
                    if (i == 0) {
                      break label618;
                    }
                    i = localList.size() - 1;
                    while (i >= 0)
                    {
                      localbpk = (bpk)localList.get(i);
                      if (j.equals(paramMessage))
                      {
                        localbpm.a(localbpk);
                        g.put(localbpk.c(), localbpk);
                        if (bool) {
                          bqp.a("Dispatcher", "paused", b.a(), "because tag '" + paramMessage + "' was paused");
                        }
                      }
                      i -= 1;
                    }
                  }
                  continue;
                  if (localbpm.a())
                  {
                    ((Iterator)localObject2).remove();
                    if (bool) {
                      bqp.a("Dispatcher", "canceled", bqp.a(localbpm), "all actions paused");
                    }
                  }
                }
              }
            }
          }
          paramMessage = obj;
          a.a(paramMessage);
          return;
          paramMessage = (bpm)obj;
          localObject1 = a;
          if (bqa.b(h)) {
            k.a(f, m);
          }
          e.remove(f);
          ((bps)localObject1).d(paramMessage);
        } while (!b.o);
        bqp.a("Dispatcher", "batched", bqp.a(paramMessage), "for completion");
        return;
      case 5: 
        paramMessage = (bpm)obj;
        a.c(paramMessage);
        return;
      case 6: 
        paramMessage = (bpm)obj;
        a.a(paramMessage, false);
        return;
      case 7: 
        paramMessage = a;
        localObject1 = new ArrayList(m);
        m.clear();
        j.sendMessage(j.obtainMessage(8, localObject1));
        bps.a((List)localObject1);
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
    final bps a;
    
    c(bps parambps)
    {
      a = parambps;
    }
    
    public final void onReceive(Context paramContext, Intent paramIntent)
    {
      kkxxkk.b041E041EОО041EО(paramContext);
      xkkkxk.b041E041EООО041E(paramContext);
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
      paramIntent = (ConnectivityManager)bqp.a(paramContext, "connectivity");
      paramContext = a;
      paramIntent = paramIntent.getActiveNetworkInfo();
      i.sendMessage(i.obtainMessage(9, paramIntent));
    }
  }
}

/* Location:
 * Qualified Name:     bps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */