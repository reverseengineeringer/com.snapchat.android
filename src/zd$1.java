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

final class zd$1
  implements zh.b
{
  zd$1(zd paramzd) {}
  
  public final void a(zh paramzh, int paramInt, long paramLong)
  {
    int k = 1;
    Timber.c("StoryLoader", "StorySnap batch load %s complete, %d snaps in %dms", new Object[] { paramzh, Integer.valueOf(paramInt), Long.valueOf(paramLong) });
    Object localObject1 = a.iterator();
    int i = 0;
    int j = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (ajr)((Iterator)localObject1).next();
      Timber.c("StoryLoader", "Batch %s item: %s", new Object[] { paramzh, ((ajr)localObject2).aa() });
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
          Timber.c("StoryLoader", "Sanitizing stories since %d StorySnaps were unable to load from batch %s", new Object[] { Integer.valueOf(i), paramzh });
          zd.a(a).e();
        }
        if ((j > 0) && (d))
        {
          Timber.c("StoryLoader", "Displaying connection toast since %d StorySnaps failed to load from batch %s", new Object[] { Integer.valueOf(i), paramzh });
          zd.b(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493328));
        }
        EasyMetric localEasyMetric;
        if ((b != null) && (paramInt > 0))
        {
          if (j != 0) {
            break label405;
          }
          i = 1;
          localObject1 = zd.c(a);
          localObject2 = b;
          paramzh = c;
          if (paramzh != StoryLoadingContext.LOAD_FROM_VIEWING)
          {
            localEasyMetric = EasyMetric.EasyMetricFactory.a("STORY_STORY_LOADED");
            localEasyMetric.a("view_location", Integer.valueOf(ze.a((StoryCollection)localObject2)));
            localEasyMetric.a("source", paramzh.getMetricName());
            localEasyMetric.a("reachability", a.f());
            localEasyMetric.a("count", Integer.valueOf(paramInt));
            if (i == 0) {
              break label411;
            }
          }
        }
        label405:
        label411:
        for (paramInt = k;; paramInt = 0)
        {
          localEasyMetric.a("success", Integer.valueOf(paramInt));
          localEasyMetric.a(paramLong);
          localEasyMetric.a(false);
          zd.b(a).a(new bcf());
          zd.d(a);
          return;
          i = 0;
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     zd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */