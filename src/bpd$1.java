import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

final class bpd$1
  extends Handler
{
  bpd$1(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    int m;
    boj localboj;
    Object localObject2;
    switch (what)
    {
    default: 
      throw new AssertionError("Unknown handler message received: " + what);
    case 8: 
      paramMessage = (List)obj;
      m = paramMessage.size();
      i = 0;
    case 3: 
      while (i < m)
      {
        Object localObject3 = (bol)paramMessage.get(i);
        localObject1 = b;
        localboj = k;
        localObject2 = l;
        if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
        {
          j = 1;
          if ((localboj == null) && (j == 0)) {
            break label258;
          }
        }
        label258:
        for (int k = 1;; k = 0)
        {
          if (k == 0) {
            break label264;
          }
          Object localObject4 = g.d;
          localObject4 = p;
          localObject4 = m;
          localObject3 = o;
          if (localboj != null) {
            ((bpd)localObject1).a((Bitmap)localObject4, (bpd.d)localObject3, localboj);
          }
          if (j == 0) {
            break label264;
          }
          k = ((List)localObject2).size();
          j = 0;
          while (j < k)
          {
            ((bpd)localObject1).a((Bitmap)localObject4, (bpd.d)localObject3, (boj)((List)localObject2).get(j));
            j += 1;
          }
          j = 0;
          break;
        }
        label264:
        i += 1;
        continue;
        paramMessage = (boj)obj;
        if (a.o) {
          bpo.a("Main", "canceled", b.a(), "target got garbage collected");
        }
        bpd.a(a, paramMessage.c());
      }
      return;
    }
    Object localObject1 = (List)obj;
    int j = ((List)localObject1).size();
    int i = 0;
    label336:
    if (i < j)
    {
      localboj = (boj)((List)localObject1).get(i);
      localObject2 = a;
      paramMessage = null;
      if (boz.a(e)) {
        paramMessage = ((bpd)localObject2).a(i);
      }
      if (paramMessage == null) {
        break label448;
      }
      ((bpd)localObject2).a(paramMessage, bpd.d.a, localboj);
      if (o) {
        bpo.a("Main", "completed", b.a(), "from " + bpd.d.a);
      }
    }
    for (;;)
    {
      i += 1;
      break label336;
      break;
      label448:
      ((bpd)localObject2).a(localboj);
      if (o) {
        bpo.a("Main", "resumed", b.a());
      }
    }
  }
}

/* Location:
 * Qualified Name:     bpd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */