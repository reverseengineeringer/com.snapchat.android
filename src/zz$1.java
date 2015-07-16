import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

final class zz$1
  implements aae.b
{
  zz$1(zz paramzz) {}
  
  public final void a(aae paramaae, int paramInt, long paramLong)
  {
    int k = 1;
    Object localObject1 = a.iterator();
    int i = 0;
    int j = 0;
    Object localObject2;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = (akl)((Iterator)localObject1).next();
      ((akl)localObject2).Y();
      if (((akl)localObject2).N()) {
        i += 1;
      }
    }
    for (;;)
    {
      mLoadingContext = ((StoryLoadingContext)co.a(c));
      break;
      if (!((akl)localObject2).M())
      {
        j += 1;
        continue;
        if (i > 0) {
          zz.a(a).e();
        }
        if ((j > 0) && (d)) {
          zz.b(a).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493328));
        }
        EasyMetric localEasyMetric;
        if ((b != null) && (paramInt > 0))
        {
          if (j != 0) {
            break label313;
          }
          i = 1;
          localObject1 = zz.c(a);
          localObject2 = b;
          paramaae = c;
          if (paramaae != StoryLoadingContext.LOAD_FROM_VIEWING)
          {
            localEasyMetric = EasyMetric.EasyMetricFactory.a("STORY_STORY_LOADED");
            localEasyMetric.a("view_location", Integer.valueOf(aab.a((StoryCollection)localObject2)));
            localEasyMetric.a("source", paramaae.getMetricName());
            localEasyMetric.a("reachability", a.f());
            localEasyMetric.a("count", Integer.valueOf(paramInt));
            if (i == 0) {
              break label319;
            }
          }
        }
        label313:
        label319:
        for (paramInt = k;; paramInt = 0)
        {
          localEasyMetric.a("success", Integer.valueOf(paramInt));
          localEasyMetric.a(paramLong);
          localEasyMetric.a(false);
          zz.b(a).a(new bdf());
          zz.d(a);
          return;
          i = 0;
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     zz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */