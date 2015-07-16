import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public class bqe
{
  public static final Handler a = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      int m;
      bpk localbpk;
      Object localObject2;
      switch (what)
      {
      default: 
        throw new AssertionError("Unknown handler message received: " + what);
      case 8: 
        paramAnonymousMessage = (List)obj;
        m = paramAnonymousMessage.size();
        i = 0;
      case 3: 
        while (i < m)
        {
          Object localObject3 = (bpm)paramAnonymousMessage.get(i);
          localObject1 = b;
          localbpk = k;
          localObject2 = l;
          if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
          {
            j = 1;
            if ((localbpk == null) && (j == 0)) {
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
            if (localbpk != null) {
              ((bqe)localObject1).a((Bitmap)localObject4, (bqe.d)localObject3, localbpk);
            }
            if (j == 0) {
              break label264;
            }
            k = ((List)localObject2).size();
            j = 0;
            while (j < k)
            {
              ((bqe)localObject1).a((Bitmap)localObject4, (bqe.d)localObject3, (bpk)((List)localObject2).get(j));
              j += 1;
            }
            j = 0;
            break;
          }
          label264:
          i += 1;
          continue;
          paramAnonymousMessage = (bpk)obj;
          if (a.o) {
            bqp.a("Main", "canceled", b.a(), "target got garbage collected");
          }
          bqe.a(a, paramAnonymousMessage.c());
        }
        return;
      }
      Object localObject1 = (List)obj;
      int j = ((List)localObject1).size();
      int i = 0;
      label336:
      if (i < j)
      {
        localbpk = (bpk)((List)localObject1).get(i);
        localObject2 = a;
        paramAnonymousMessage = null;
        if (bqa.a(e)) {
          paramAnonymousMessage = ((bqe)localObject2).a(i);
        }
        if (paramAnonymousMessage == null) {
          break label448;
        }
        ((bqe)localObject2).a(paramAnonymousMessage, bqe.d.a, localbpk);
        if (o) {
          bqp.a("Main", "completed", b.a(), "from " + bqe.d.a);
        }
      }
      for (;;)
      {
        i += 1;
        break label336;
        break;
        label448:
        ((bqe)localObject2).a(localbpk);
        if (o) {
          bqp.a("Main", "resumed", b.a());
        }
      }
    }
  };
  public static volatile bqe b = null;
  final bqe.f c;
  public final bqe.b d;
  final List<bqj> e;
  final Context f;
  public final bps g;
  public final bpn h;
  public final bql i;
  final Map<Object, bpk> j;
  public final Map<ImageView, bpr> k;
  final ReferenceQueue<Object> l;
  final Bitmap.Config m;
  boolean n;
  volatile boolean o;
  public boolean p;
  private final bqe.c q;
  
  bqe(Context paramContext, bps parambps, bpn parambpn, bqe.c paramc, bqe.f paramf, List<bqj> paramList, bql parambql, Bitmap.Config paramConfig, boolean paramBoolean1, boolean paramBoolean2)
  {
    f = paramContext;
    g = parambps;
    h = parambpn;
    q = paramc;
    c = paramf;
    m = paramConfig;
    if (paramList != null) {}
    for (int i1 = paramList.size();; i1 = 0)
    {
      parambpn = new ArrayList(i1 + 7);
      parambpn.add(new bqk(paramContext));
      if (paramList != null) {
        parambpn.addAll(paramList);
      }
      parambpn.add(new bpp(paramContext));
      parambpn.add(new bpz(paramContext));
      parambpn.add(new bpq(paramContext));
      parambpn.add(new bpl(paramContext));
      parambpn.add(new bpv(paramContext));
      parambpn.add(new bqc(d, parambql));
      e = Collections.unmodifiableList(parambpn);
      i = parambql;
      j = new WeakHashMap();
      k = new WeakHashMap();
      n = paramBoolean1;
      o = paramBoolean2;
      l = new ReferenceQueue();
      d = new bqe.b(l, a);
      d.start();
      return;
    }
  }
  
  public static void a(bqe parambqe)
  {
    try
    {
      if (b != null) {
        throw new IllegalStateException("Singleton instance already exists.");
      }
    }
    finally {}
    b = parambqe;
  }
  
  final Bitmap a(String paramString)
  {
    paramString = h.a(paramString);
    if (paramString != null)
    {
      i.a();
      return paramString;
    }
    i.c.sendEmptyMessage(1);
    return paramString;
  }
  
  public final bqi a(Uri paramUri)
  {
    return new bqi(this, paramUri);
  }
  
  public final bqi a(File paramFile)
  {
    if (paramFile == null) {
      return new bqi(this, null);
    }
    return a(Uri.fromFile(paramFile));
  }
  
  final void a(Bitmap paramBitmap, bqe.d paramd, bpk parambpk)
  {
    if (l) {}
    do
    {
      do
      {
        return;
        if (!k) {
          j.remove(parambpk.c());
        }
        if (paramBitmap == null) {
          break;
        }
        if (paramd == null) {
          throw new AssertionError("LoadedFrom cannot be null.");
        }
        parambpk.a(paramBitmap, paramd);
      } while (!o);
      bqp.a("Main", "completed", b.a(), "from " + paramd);
      return;
      parambpk.a();
    } while (!o);
    bqp.a("Main", "errored", b.a());
  }
  
  final void a(bpk parambpk)
  {
    Object localObject = parambpk.c();
    if ((localObject != null) && (j.get(localObject) != parambpk))
    {
      a(localObject);
      j.put(localObject, parambpk);
    }
    b(parambpk);
  }
  
  final void a(Object paramObject)
  {
    bqp.a();
    bpk localbpk = (bpk)j.remove(paramObject);
    if (localbpk != null)
    {
      localbpk.b();
      bps localbps = g;
      i.sendMessage(i.obtainMessage(2, localbpk));
    }
    if ((paramObject instanceof ImageView))
    {
      paramObject = (ImageView)paramObject;
      paramObject = (bpr)k.remove(paramObject);
      if (paramObject != null) {
        ((bpr)paramObject).a();
      }
    }
  }
  
  final void b(bpk parambpk)
  {
    bps localbps = g;
    i.sendMessage(i.obtainMessage(1, parambpk));
  }
  
  public static final class a
  {
    public ExecutorService a;
    public bpn b;
    public bqe.f c;
    public List<bqj> d;
    private final Context e;
    private bpt f;
    private bqe.c g;
    private Bitmap.Config h;
    private boolean i;
    private boolean j;
    
    public a(Context paramContext)
    {
      if (paramContext == null) {
        throw new IllegalArgumentException("Context must not be null.");
      }
      e = paramContext.getApplicationContext();
    }
    
    public final bqe a()
    {
      Context localContext = e;
      if (f == null) {
        f = bqp.a(localContext);
      }
      if (b == null) {
        b = new bpx(localContext);
      }
      if (a == null) {
        a = new bqg();
      }
      if (c == null) {
        c = bqe.f.a;
      }
      bql localbql = new bql(b);
      return new bqe(localContext, new bps(localContext, a, bqe.a, f, b, localbql), b, g, c, d, localbql, h, i, j);
    }
  }
  
  public static final class b
    extends Thread
  {
    private final ReferenceQueue<Object> a;
    private final Handler b;
    
    b(ReferenceQueue<Object> paramReferenceQueue, Handler paramHandler)
    {
      a = paramReferenceQueue;
      b = paramHandler;
      setDaemon(true);
      setName("Picasso-refQueue");
    }
    
    public final void run()
    {
      Process.setThreadPriority(10);
      try
      {
        for (;;)
        {
          bpk.a locala = (bpk.a)a.remove(1000L);
          Message localMessage = b.obtainMessage();
          if (locala != null)
          {
            what = 3;
            obj = a;
            b.sendMessage(localMessage);
          }
          else
          {
            localMessage.recycle();
          }
        }
        return;
      }
      catch (Exception localException)
      {
        b.post(new Runnable()
        {
          public final void run()
          {
            throw new RuntimeException(localException);
          }
        });
        return;
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  public static abstract interface c {}
  
  public static enum d
  {
    final int d;
    
    private d(int paramInt)
    {
      d = paramInt;
    }
  }
  
  public static enum e {}
  
  public static abstract interface f
  {
    public static final f a = new f()
    {
      public final bqh a(bqh paramAnonymousbqh)
      {
        return paramAnonymousbqh;
      }
    };
    
    public abstract bqh a(bqh parambqh);
  }
}

/* Location:
 * Qualified Name:     bqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */