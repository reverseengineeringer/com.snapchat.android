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

public class bpd
{
  public static final Handler a = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      int m;
      boj localboj;
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
          Object localObject3 = (bol)paramAnonymousMessage.get(i);
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
          paramAnonymousMessage = (boj)obj;
          if (a.o) {
            bpo.a("Main", "canceled", b.a(), "target got garbage collected");
          }
          bpd.a(a, paramAnonymousMessage.c());
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
        paramAnonymousMessage = null;
        if (boz.a(e)) {
          paramAnonymousMessage = ((bpd)localObject2).a(i);
        }
        if (paramAnonymousMessage == null) {
          break label448;
        }
        ((bpd)localObject2).a(paramAnonymousMessage, bpd.d.a, localboj);
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
  };
  public static volatile bpd b = null;
  final bpd.f c;
  public final bpd.b d;
  final List<bpi> e;
  final Context f;
  public final bor g;
  public final bom h;
  public final bpk i;
  final Map<Object, boj> j;
  public final Map<ImageView, boq> k;
  final ReferenceQueue<Object> l;
  final Bitmap.Config m;
  boolean n;
  volatile boolean o;
  public boolean p;
  private final bpd.c q;
  
  bpd(Context paramContext, bor parambor, bom parambom, bpd.c paramc, bpd.f paramf, List<bpi> paramList, bpk parambpk, Bitmap.Config paramConfig, boolean paramBoolean1, boolean paramBoolean2)
  {
    f = paramContext;
    g = parambor;
    h = parambom;
    q = paramc;
    c = paramf;
    m = paramConfig;
    if (paramList != null) {}
    for (int i1 = paramList.size();; i1 = 0)
    {
      parambom = new ArrayList(i1 + 7);
      parambom.add(new bpj(paramContext));
      if (paramList != null) {
        parambom.addAll(paramList);
      }
      parambom.add(new boo(paramContext));
      parambom.add(new boy(paramContext));
      parambom.add(new bop(paramContext));
      parambom.add(new bok(paramContext));
      parambom.add(new bou(paramContext));
      parambom.add(new bpb(d, parambpk));
      e = Collections.unmodifiableList(parambom);
      i = parambpk;
      j = new WeakHashMap();
      k = new WeakHashMap();
      n = paramBoolean1;
      o = paramBoolean2;
      l = new ReferenceQueue();
      d = new bpd.b(l, a);
      d.start();
      return;
    }
  }
  
  public static void a(bpd parambpd)
  {
    try
    {
      if (b != null) {
        throw new IllegalStateException("Singleton instance already exists.");
      }
    }
    finally {}
    b = parambpd;
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
  
  public final bph a(Uri paramUri)
  {
    return new bph(this, paramUri);
  }
  
  public final bph a(File paramFile)
  {
    if (paramFile == null) {
      return new bph(this, null);
    }
    return a(Uri.fromFile(paramFile));
  }
  
  final void a(Bitmap paramBitmap, bpd.d paramd, boj paramboj)
  {
    if (l) {}
    do
    {
      do
      {
        return;
        if (!k) {
          j.remove(paramboj.c());
        }
        if (paramBitmap == null) {
          break;
        }
        if (paramd == null) {
          throw new AssertionError("LoadedFrom cannot be null.");
        }
        paramboj.a(paramBitmap, paramd);
      } while (!o);
      bpo.a("Main", "completed", b.a(), "from " + paramd);
      return;
      paramboj.a();
    } while (!o);
    bpo.a("Main", "errored", b.a());
  }
  
  final void a(boj paramboj)
  {
    Object localObject = paramboj.c();
    if ((localObject != null) && (j.get(localObject) != paramboj))
    {
      a(localObject);
      j.put(localObject, paramboj);
    }
    b(paramboj);
  }
  
  final void a(Object paramObject)
  {
    bpo.a();
    boj localboj = (boj)j.remove(paramObject);
    if (localboj != null)
    {
      localboj.b();
      bor localbor = g;
      i.sendMessage(i.obtainMessage(2, localboj));
    }
    if ((paramObject instanceof ImageView))
    {
      paramObject = (ImageView)paramObject;
      paramObject = (boq)k.remove(paramObject);
      if (paramObject != null) {
        ((boq)paramObject).a();
      }
    }
  }
  
  final void b(boj paramboj)
  {
    bor localbor = g;
    i.sendMessage(i.obtainMessage(1, paramboj));
  }
  
  public static final class a
  {
    public ExecutorService a;
    public bom b;
    public bpd.f c;
    public List<bpi> d;
    private final Context e;
    private bos f;
    private bpd.c g;
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
    
    public final bpd a()
    {
      Context localContext = e;
      if (f == null) {
        f = bpo.a(localContext);
      }
      if (b == null) {
        b = new bow(localContext);
      }
      if (a == null) {
        a = new bpf();
      }
      if (c == null) {
        c = bpd.f.a;
      }
      bpk localbpk = new bpk(b);
      return new bpd(localContext, new bor(localContext, a, bpd.a, f, b, localbpk), b, g, c, d, localbpk, h, i, j);
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
          boj.a locala = (boj.a)a.remove(1000L);
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
      public final bpg a(bpg paramAnonymousbpg)
      {
        return paramAnonymousbpg;
      }
    };
    
    public abstract bpg a(bpg parambpg);
  }
}

/* Location:
 * Qualified Name:     bpd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */