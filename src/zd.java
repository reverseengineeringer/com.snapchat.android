import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

public final class zd
{
  private static final zd b = new zd();
  protected final zh.b a = new zh.b()
  {
    public final void a(zh paramAnonymouszh, int paramAnonymousInt, long paramAnonymousLong)
    {
      int k = 1;
      Timber.c("StoryLoader", "StorySnap batch load %s complete, %d snaps in %dms", new Object[] { paramAnonymouszh, Integer.valueOf(paramAnonymousInt), Long.valueOf(paramAnonymousLong) });
      Object localObject1 = a.iterator();
      int i = 0;
      int j = 0;
      Object localObject2;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ajr)((Iterator)localObject1).next();
        Timber.c("StoryLoader", "Batch %s item: %s", new Object[] { paramAnonymouszh, ((ajr)localObject2).aa() });
        if (((ajr)localObject2).M()) {
          i += 1;
        }
      }
      for (;;)
      {
        mLoadingContext = ((StoryLoadingContext)ck.a(c));
        break;
        if (!((ajr)localObject2).L())
        {
          j += 1;
          continue;
          if (i > 0)
          {
            Timber.c("StoryLoader", "Sanitizing stories since %d StorySnaps were unable to load from batch %s", new Object[] { Integer.valueOf(i), paramAnonymouszh });
            zd.a(zd.this).e();
          }
          if ((j > 0) && (d))
          {
            Timber.c("StoryLoader", "Displaying connection toast since %d StorySnaps failed to load from batch %s", new Object[] { Integer.valueOf(i), paramAnonymouszh });
            zd.b(zd.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493328));
          }
          EasyMetric localEasyMetric;
          if ((b != null) && (paramAnonymousInt > 0))
          {
            if (j != 0) {
              break label405;
            }
            i = 1;
            localObject1 = zd.c(zd.this);
            localObject2 = b;
            paramAnonymouszh = c;
            if (paramAnonymouszh != StoryLoadingContext.LOAD_FROM_VIEWING)
            {
              localEasyMetric = EasyMetric.EasyMetricFactory.a("STORY_STORY_LOADED");
              localEasyMetric.a("view_location", Integer.valueOf(ze.a((StoryCollection)localObject2)));
              localEasyMetric.a("source", paramAnonymouszh.getMetricName());
              localEasyMetric.a("reachability", a.f());
              localEasyMetric.a("count", Integer.valueOf(paramAnonymousInt));
              if (i == 0) {
                break label411;
              }
            }
          }
          label405:
          label411:
          for (paramAnonymousInt = k;; paramAnonymousInt = 0)
          {
            localEasyMetric.a("success", Integer.valueOf(paramAnonymousInt));
            localEasyMetric.a(paramAnonymousLong);
            localEasyMetric.a(false);
            zd.b(zd.this).a(new bcf());
            zd.d(zd.this);
            return;
            i = 0;
            break;
          }
        }
      }
    }
  };
  private final Bus c;
  private final ajq d;
  private final ze e;
  
  private zd()
  {
    this(ban.a(), ajq.a(), new ze());
  }
  
  private zd(Bus paramBus, ajq paramajq, ze paramze)
  {
    c = paramBus;
    d = paramajq;
    e = paramze;
  }
  
  public static zd a()
  {
    return b;
  }
  
  private void b()
  {
    c.a(new bdy());
  }
  
  @ccm
  public final int a(StoryCollection paramStoryCollection)
  {
    return a(paramStoryCollection, 3, null, false, StoryLoadingContext.AUTO_LOADED);
  }
  
  @ccm
  public final int a(StoryCollection paramStoryCollection, int paramInt, aje paramaje, boolean paramBoolean, StoryLoadingContext paramStoryLoadingContext)
  {
    bgp.a();
    paramaje = paramStoryCollection.a(paramInt, (ajr)paramaje);
    paramStoryLoadingContext = new zh.a(paramStoryLoadingContext);
    d = paramBoolean;
    c = paramStoryCollection;
    paramStoryCollection = paramaje.iterator();
    while (paramStoryCollection.hasNext()) {
      paramStoryLoadingContext.a((ajr)paramStoryCollection.next());
    }
    paramInt = paramStoryLoadingContext.a().a(a);
    b();
    return paramInt;
  }
  
  @ccm
  public final boolean a(ajr paramajr)
  {
    return b(paramajr);
  }
  
  @ccm
  public final boolean a(ajr paramajr, StoryLoadingContext paramStoryLoadingContext)
  {
    boolean bool = false;
    bgp.a();
    paramajr = new zh.a(paramStoryLoadingContext).a(paramajr);
    d = false;
    if (paramajr.a().a(a) > 0) {
      bool = true;
    }
    b();
    return bool;
  }
  
  @ccm
  public final boolean b(ajr paramajr)
  {
    return a(paramajr, StoryLoadingContext.AUTO_LOADED);
  }
}

/* Location:
 * Qualified Name:     zd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */