import android.app.ActivityManager;
import android.content.ContentResolver;
import android.os.Handler;
import android.os.HandlerThread;
import android.support.v4.app.FragmentActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class agi
{
  private static final agi c = new agi();
  public arq a = null;
  public bqe b = null;
  
  public static agi a()
  {
    return c;
  }
  
  public final void a(FragmentActivity paramFragmentActivity)
  {
    Object localObject = paramFragmentActivity.getContentResolver();
    a = new arq((ContentResolver)localObject);
    int j = ((ActivityManager)paramFragmentActivity.getSystemService("activity")).getMemoryClass();
    int i = 1048576 * j / 8;
    paramFragmentActivity = new bqe.a(paramFragmentActivity);
    bpx localbpx = new bpx(i);
    if (b != null) {
      throw new IllegalStateException("Memory cache already set.");
    }
    b = localbpx;
    localObject = new aro((ContentResolver)localObject);
    if (d == null) {
      d = new ArrayList();
    }
    if (d.contains(localObject)) {
      throw new IllegalStateException("RequestHandler already registered.");
    }
    d.add(localObject);
    localObject = avf.THUMBNAIL_EXECUTOR;
    if (localObject == null) {
      throw new IllegalArgumentException("Executor service must not be null.");
    }
    if (a != null) {
      throw new IllegalStateException("Executor service already set.");
    }
    a = ((ExecutorService)localObject);
    b = paramFragmentActivity.a();
    i = 0;
    if (i < Math.min(a.a.length, j * 2.5D))
    {
      paramFragmentActivity = a.a(i);
      if (c != null) {
        b.a(c).a();
      }
      for (;;)
      {
        i += 1;
        break;
        b.a(b).a();
      }
    }
  }
  
  public final void b()
  {
    if (b != null)
    {
      bqe localbqe = b;
      if (localbqe == bqe.b) {
        throw new UnsupportedOperationException("Default singleton instance cannot be shutdown.");
      }
      if (!p)
      {
        h.c();
        d.interrupt();
        i.a.quit();
        Object localObject = g;
        if ((c instanceof bqg)) {
          c.shutdown();
        }
        d.a();
        a.quit();
        bqe.a.post(new bps.1((bps)localObject));
        localObject = k.values().iterator();
        while (((Iterator)localObject).hasNext()) {
          ((bpr)((Iterator)localObject).next()).a();
        }
        k.clear();
        p = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     agi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */