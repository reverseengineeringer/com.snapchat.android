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

final class bps$a
  extends Handler
{
  private final bps a;
  
  public bps$a(Looper paramLooper, bps parambps)
  {
    super(paramLooper);
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

/* Location:
 * Qualified Name:     bps.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */