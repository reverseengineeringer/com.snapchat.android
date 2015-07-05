import android.app.AlertDialog;
import android.content.Context;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.ui.SnapView;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class aup$c
  implements Runnable
{
  private final Context mActivityContext;
  private final ajr mClickedAndLoadedStorySnap;
  private List<StorySnapLogbook> mLogbooks;
  private final aio mSnapProvider;
  private StoryCollection mStoryCollection;
  
  public aup$c(StoryCollection paramStoryCollection, List<StorySnapLogbook> paramList, Context paramContext)
  {
    Context localContext;
    mActivityContext = localContext;
    mStoryCollection = paramList;
    mLogbooks = paramContext;
    if ((paramList instanceof ajg))
    {
      if (!paramList.n()) {
        break label92;
      }
      paramStoryCollection = paramList.A();
    }
    for (;;)
    {
      mClickedAndLoadedStorySnap = paramStoryCollection;
      if (mClickedAndLoadedStorySnap == null) {
        break;
      }
      mSnapProvider = za.a(mClickedAndLoadedStorySnap, paramList, mLogbooks);
      return;
      if ((paramList != null) && (paramList.n())) {
        paramStoryCollection = paramList.y();
      } else {
        label92:
        paramStoryCollection = null;
      }
    }
    mSnapProvider = null;
  }
  
  public aup$c(aup paramaup, StorySnapLogbook paramStorySnapLogbook, Context paramContext)
  {
    mActivityContext = paramContext;
    mLogbooks = new ArrayList(Collections.singletonList(paramStorySnapLogbook));
    if (mStorySnap.L()) {}
    for (paramaup = mStorySnap;; paramaup = null)
    {
      mClickedAndLoadedStorySnap = paramaup;
      mSnapProvider = za.a(mClickedAndLoadedStorySnap, null, mLogbooks);
      return;
    }
  }
  
  private void a()
  {
    Object localObject1 = mClickedAndLoadedStorySnap;
    if (mStoryCollection != null) {
      zd.a().a(mStoryCollection, 7, (aje)localObject1, false, StoryLoadingContext.LOAD_FROM_VIEWING);
    }
    localObject1 = this$0.mStoryLoadAnalyticsReporter;
    Object localObject2 = mStoryCollection;
    Object localObject3 = mClickedAndLoadedStorySnap.mLoadingContext;
    Object localObject4 = EasyMetric.EasyMetricFactory.a("STORY_STORY_VIEW_LOAD_TYPE");
    ((EasyMetric)localObject4).a("view_location", Integer.valueOf(ze.a((StoryCollection)localObject2)));
    ((EasyMetric)localObject4).a("source", ((StoryLoadingContext)localObject3).getMetricName());
    ((EasyMetric)localObject4).a("reachability", a.f());
    ((EasyMetric)localObject4).a(false);
    localObject2 = this$0;
    localObject1 = mClickedAndLoadedStorySnap;
    localObject3 = mStoryCollection;
    localObject4 = mSnapProvider;
    boolean bool = mStoryCollection instanceof ajg;
    List localList = mLogbooks;
    AnalyticsEvents.a((ajr)localObject1, bool, ajv.g());
    ban.a().a(new bdt(false));
    if (localList != null)
    {
      bool = true;
      mSnapView.a((aje)localObject1, (aio)localObject4, bool);
      if (localObject3 == null) {
        if (localList != null) {
          break label215;
        }
      }
    }
    label215:
    for (localObject1 = null;; localObject1 = (StorySnapLogbook)localList.get(0))
    {
      mSecondTapForFailedStory = false;
      mSnapView.a((StorySnapLogbook)localObject1);
      return;
      bool = false;
      break;
    }
  }
  
  public final void run()
  {
    this$0.mMediaViewAnalytics.c("view_media", "story");
    if ((mClickedAndLoadedStorySnap == null) || (mSnapProvider == null))
    {
      Timber.f("SnapListItemHandler", "Story snap or provider are null, not starting story!", new Object[0]);
      return;
    }
    Object localObject1 = mClickedAndLoadedStorySnap.mUsername;
    Object localObject3 = atm.b((String)localObject1, ajv.g());
    if ((mIsLocalStory) && (!this$0.mOurCampusStoryDialogLog.a((String)localObject1)))
    {
      ajr localajr = mClickedAndLoadedStorySnap;
      Object localObject2 = mCustomTitle;
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = atx.a(null, 2131493274, new Object[0]);
      }
      localObject3 = mCustomDescription;
      localObject2 = localObject3;
      if (localObject3 == null) {
        localObject2 = atx.a(null, 2131493273, new Object[0]);
      }
      localObject2 = new apz(mActivityContext, (String)localObject2)
      {
        protected final void a()
        {
          aup.c.a(aup.c.this);
        }
      };
      ((AlertDialog)localObject2).setTitle((CharSequence)localObject1);
      ((AlertDialog)localObject2).show();
      this$0.mOurCampusStoryDialogLog.b(mUsername);
      return;
    }
    a();
  }
}

/* Location:
 * Qualified Name:     aup.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */