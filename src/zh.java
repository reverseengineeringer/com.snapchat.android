import android.os.SystemClock;
import com.snapchat.android.Timber;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class zh
{
  public final List<ajr> a;
  public final StoryCollection b;
  public final StoryLoadingContext c;
  public final boolean d;
  final Set<ajr> e = new HashSet();
  long f;
  zh.b g;
  int h;
  private final bgk i;
  
  private zh(zh.a parama)
  {
    this(parama, new bgk());
  }
  
  private zh(zh.a parama, bgk parambgk)
  {
    i = parambgk;
    b = c;
    c = b;
    d = d;
    a = dk.a(a);
  }
  
  public final int a(@cgb zh.b paramb)
  {
    g = ((zh.b)ck.a(paramb));
    f = SystemClock.elapsedRealtime();
    paramb = a.iterator();
    while (paramb.hasNext())
    {
      ajr localajr1 = (ajr)paramb.next();
      zi local1 = new zi(localajr1)
      {
        protected final void a(ajr paramAnonymousajr)
        {
          zh localzh = zh.this;
          bgp.a();
          e.remove(paramAnonymousajr);
          if (e.size() == 0)
          {
            long l = SystemClock.elapsedRealtime() - f;
            Timber.c("StorySnapLoadBatch", "Batch load complete for %s, took %dms", new Object[] { localzh, Long.valueOf(l) });
            g.a(localzh, h, l);
            return;
          }
          Timber.c("StorySnapLoadBatch", "Batch load not complete for %s, waiting for %d more StorySnaps", new Object[] { localzh, Integer.valueOf(e.size()) });
        }
      };
      if ((b.R()) || (b.L()) || (b.M())) {
        Timber.e("StorySnapLoadTask", "Skipped attempt to load %s", new Object[] { b.aa() });
      }
      for (int j = 0;; j = 1)
      {
        if (j == 0) {
          break label183;
        }
        e.add(localajr1);
        break;
        if (b.i() != null) {
          break label185;
        }
        Timber.e("StorySnapLoadTask", "Skipped attempt to load %s", new Object[] { b.aa() });
        j = 0;
        label168:
        if (j == 0) {
          break label261;
        }
        b.m();
      }
      label183:
      continue;
      label185:
      als localals;
      ajr localajr2;
      String str;
      zi.a locala;
      als.a locala1;
      if (b.ai())
      {
        localals = c;
        localajr2 = b;
        str = b.ar();
        locala = local1.a();
        locala1 = d;
        localals.a(localajr2, str, locala, awq.STORY_RECEIVED_VIDEO_CACHE, "STORIES", DownloadPriority.MEDIUM_HIGH, DownloadPriority.BACKGROUND_HIGH, locala1);
      }
      for (;;)
      {
        j = 1;
        break label168;
        label261:
        break;
        localals = c;
        localajr2 = b;
        str = b.ar();
        locala = local1.a();
        locala1 = d;
        localals.a(localajr2, str, locala, awq.STORY_RECEIVED_IMAGE_CACHE, "STORIES", DownloadPriority.MEDIUM_HIGH, DownloadPriority.BACKGROUND_HIGH, locala1);
      }
    }
    Timber.c("StorySnapLoadBatch", "Batch %s loading %s", new Object[] { this, e });
    h = e.size();
    return h;
  }
  
  public String toString()
  {
    return ci.a(zh.class).a("collection", b).a("count", a.size()).a("context", c).a("toast", d).toString();
  }
  
  public static final class a
  {
    final List<ajr> a = new ArrayList();
    final StoryLoadingContext b;
    public StoryCollection c;
    public boolean d;
    
    public a(@cgb StoryLoadingContext paramStoryLoadingContext)
    {
      b = ((StoryLoadingContext)ck.a(paramStoryLoadingContext));
    }
    
    public final a a(@cgb ajr paramajr)
    {
      a.add(ck.a(paramajr));
      return this;
    }
    
    public final zh a()
    {
      return new zh(this, (byte)0);
    }
  }
  
  public static abstract interface b
  {
    @ccm
    public abstract void a(@cgb zh paramzh, int paramInt, long paramLong);
  }
}

/* Location:
 * Qualified Name:     zh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */