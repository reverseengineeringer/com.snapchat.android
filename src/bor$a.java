import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class bor$a
  extends Handler
{
  private final bor a;
  
  public bor$a(Looper paramLooper, bor parambor)
  {
    super(paramLooper);
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

/* Location:
 * Qualified Name:     bor.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */