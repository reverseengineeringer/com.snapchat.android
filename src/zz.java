import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.util.eventbus.ShowDialogEvent;
import com.snapchat.android.util.eventbus.ShowDialogEvent.DialogType;
import com.squareup.otto.Bus;
import java.util.Iterator;
import java.util.List;

public final class zz
{
  private static final zz c = new zz();
  public final aaa a;
  protected final aae.b b = new aae.b()
  {
    public final void a(aae paramAnonymousaae, int paramAnonymousInt, long paramAnonymousLong)
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
            zz.a(zz.this).e();
          }
          if ((j > 0) && (d)) {
            zz.b(zz.this).a(new ShowDialogEvent(ShowDialogEvent.DialogType.TOAST, 2131493328));
          }
          EasyMetric localEasyMetric;
          if ((b != null) && (paramAnonymousInt > 0))
          {
            if (j != 0) {
              break label313;
            }
            i = 1;
            localObject1 = zz.c(zz.this);
            localObject2 = b;
            paramAnonymousaae = c;
            if (paramAnonymousaae != StoryLoadingContext.LOAD_FROM_VIEWING)
            {
              localEasyMetric = EasyMetric.EasyMetricFactory.a("STORY_STORY_LOADED");
              localEasyMetric.a("view_location", Integer.valueOf(aab.a((StoryCollection)localObject2)));
              localEasyMetric.a("source", paramAnonymousaae.getMetricName());
              localEasyMetric.a("reachability", a.f());
              localEasyMetric.a("count", Integer.valueOf(paramAnonymousInt));
              if (i == 0) {
                break label319;
              }
            }
          }
          label313:
          label319:
          for (paramAnonymousInt = k;; paramAnonymousInt = 0)
          {
            localEasyMetric.a("success", Integer.valueOf(paramAnonymousInt));
            localEasyMetric.a(paramAnonymousLong);
            localEasyMetric.a(false);
            zz.b(zz.this).a(new bdf());
            zz.d(zz.this);
            return;
            i = 0;
            break;
          }
        }
      }
    }
  };
  private final Bus d;
  private final akk e;
  private final aab f;
  
  private zz()
  {
    this(bbo.a(), akk.a(), new aab(), new aaa());
  }
  
  private zz(Bus paramBus, akk paramakk, aab paramaab, aaa paramaaa)
  {
    d = paramBus;
    e = paramakk;
    f = paramaab;
    a = paramaaa;
  }
  
  public static zz a()
  {
    return c;
  }
  
  private void f()
  {
    d.a(new bex());
  }
  
  @cdn
  public final int a(StoryCollection paramStoryCollection, int paramInt, aka paramaka, boolean paramBoolean, StoryLoadingContext paramStoryLoadingContext)
  {
    bhp.a();
    paramaka = paramStoryCollection.a(paramInt, (akl)paramaka);
    paramStoryLoadingContext = new aae.a(paramStoryLoadingContext);
    d = paramBoolean;
    c = paramStoryCollection;
    paramStoryCollection = paramaka.iterator();
    while (paramStoryCollection.hasNext()) {
      paramStoryLoadingContext.a((akl)paramStoryCollection.next());
    }
    paramInt = paramStoryLoadingContext.a().a(b);
    f();
    return paramInt;
  }
  
  @cdn
  public final boolean a(akl paramakl)
  {
    return b(paramakl);
  }
  
  @cdn
  public final boolean a(akl paramakl, StoryLoadingContext paramStoryLoadingContext)
  {
    boolean bool = false;
    bhp.a();
    paramakl = new aae.a(paramStoryLoadingContext).a(paramakl);
    d = false;
    if (paramakl.a().a(b) > 0) {
      bool = true;
    }
    f();
    return bool;
  }
  
  public final int b()
  {
    return a.a.a("STORY_LOADER_ANDROID", "NUM_TO_LOAD_BEFORE_ALLOWING_VIEWING", 5);
  }
  
  @cdn
  public final boolean b(akl paramakl)
  {
    return a(paramakl, StoryLoadingContext.AUTO_LOADED);
  }
  
  public final int c()
  {
    return a.a.a("STORY_LOADER_ANDROID", "NUM_TO_START_LOADING_AHEAD_ON_VIEW", 7);
  }
  
  public final int d()
  {
    return a.a.a("STORY_LOADER_ANDROID", "MAX_NUM_RECENT_UPDATES_TO_LOAD_ON_APP_OPEN", 3);
  }
  
  public final int e()
  {
    return a.a.a("STORY_LOADER_ANDROID", "MAX_NUM_SHARED_STORIES_TO_LOAD_ON_APP_OPEN", 2);
  }
}

/* Location:
 * Qualified Name:     zz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */