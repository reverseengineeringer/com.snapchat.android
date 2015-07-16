import android.os.SystemClock;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.networkmanager.DownloadPriority;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class aae
{
  public final List<akl> a;
  public final StoryCollection b;
  public final StoryLoadingContext c;
  public final boolean d;
  final Set<akl> e = new HashSet();
  long f;
  aae.b g;
  int h;
  private final bhk i;
  
  private aae(aae.a parama)
  {
    this(parama, new bhk());
  }
  
  private aae(aae.a parama, bhk parambhk)
  {
    i = parambhk;
    b = c;
    c = b;
    d = d;
    a = dt.a(a);
  }
  
  public final int a(@chc aae.b paramb)
  {
    g = ((aae.b)co.a(paramb));
    f = SystemClock.elapsedRealtime();
    paramb = a.iterator();
    while (paramb.hasNext())
    {
      akl localakl1 = (akl)paramb.next();
      aaf local1 = new aaf(localakl1)
      {
        protected final void a(akl paramAnonymousakl)
        {
          aae localaae = aae.this;
          bhp.a();
          e.remove(paramAnonymousakl);
          if (e.size() == 0)
          {
            long l = SystemClock.elapsedRealtime() - f;
            g.a(localaae, h, l);
            return;
          }
          e.size();
        }
      };
      if ((b.S()) || (b.M()) || (b.N())) {
        b.Y();
      }
      for (int j = 0;; j = 1)
      {
        if (j == 0) {
          break label157;
        }
        e.add(localakl1);
        break;
        if (b.i() != null) {
          break label159;
        }
        b.Y();
        j = 0;
        label142:
        if (j == 0) {
          break label235;
        }
        b.m();
      }
      label157:
      continue;
      label159:
      amp localamp;
      akl localakl2;
      String str;
      aaf.a locala;
      amp.a locala1;
      if (b.ag())
      {
        localamp = c;
        localakl2 = b;
        str = b.ap();
        locala = local1.a();
        locala1 = d;
        localamp.a(localakl2, str, locala, axo.STORY_RECEIVED_VIDEO_CACHE, "STORIES", DownloadPriority.MEDIUM_HIGH, DownloadPriority.BACKGROUND_HIGH, locala1);
      }
      for (;;)
      {
        j = 1;
        break label142;
        label235:
        break;
        localamp = c;
        localakl2 = b;
        str = b.ap();
        locala = local1.a();
        locala1 = d;
        localamp.a(localakl2, str, locala, axo.STORY_RECEIVED_IMAGE_CACHE, "STORIES", DownloadPriority.MEDIUM_HIGH, DownloadPriority.BACKGROUND_HIGH, locala1);
      }
    }
    paramb = e;
    h = e.size();
    return h;
  }
  
  public String toString()
  {
    return cl.a(aae.class).a("collection", b).a("count", a.size()).a("context", c).a("toast", d).toString();
  }
  
  public static final class a
  {
    final List<akl> a = new ArrayList();
    final StoryLoadingContext b;
    public StoryCollection c;
    public boolean d;
    
    public a(@chc StoryLoadingContext paramStoryLoadingContext)
    {
      b = ((StoryLoadingContext)co.a(paramStoryLoadingContext));
    }
    
    public final a a(@chc akl paramakl)
    {
      a.add(co.a(paramakl));
      return this;
    }
    
    public final aae a()
    {
      return new aae(this, (byte)0);
    }
  }
  
  public static abstract interface b
  {
    @cdn
    public abstract void a(@chc aae paramaae, int paramInt, long paramLong);
  }
}

/* Location:
 * Qualified Name:     aae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */