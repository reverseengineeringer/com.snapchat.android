import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.gesturedetectors.TapToViewTouchListener;
import com.snapchat.android.ui.gesturedetectors.TapToViewTouchListener.a;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;

public final class avn
  implements TapToViewTouchListener.a
{
  private static final String TAG = "SnapListItemHandler";
  private static avn sInstance;
  private final zw mChronologicalProviderFactory;
  public final afh mEditionViewerLauncher;
  private final zj mFeedIconManager;
  public final Set<arn> mListeners = new HashSet();
  public boolean mLongPressStarted;
  nx mMediaViewAnalytics;
  public final nz mMessagingAnalytics;
  private avn.a mOpenBroadcastSnapUrlRunnable;
  public Handler mOpenSnapHandler;
  private avn.b mOpenSnapRunnable;
  @Inject
  protected aaq mOurCampusStoryDialogLog;
  public avn.d mReplaySnapRunnable;
  boolean mSecondTapForFailedStory = false;
  private final zm mSendingMailman;
  public SnapView mSnapView;
  public SnapViewEventAnalytics mSnapViewEventAnalytics;
  final aab mStoryLoadAnalyticsReporter;
  public final TapToViewTouchListener mTapToViewTouchListener;
  public VerticalSwipeLayout mVerticalSwipeMyStory;
  
  private avn(zm paramzm, zj paramzj, SnapViewEventAnalytics paramSnapViewEventAnalytics, nx paramnx, Handler paramHandler, nz paramnz, aab paramaab, zw paramzw, afh paramafh)
  {
    SnapchatApplication.b().c().a(this);
    bbo.a().c(this);
    mSendingMailman = paramzm;
    mFeedIconManager = paramzj;
    mSnapViewEventAnalytics = paramSnapViewEventAnalytics;
    mMediaViewAnalytics = paramnx;
    mOpenSnapHandler = paramHandler;
    mChronologicalProviderFactory = paramzw;
    mEditionViewerLauncher = paramafh;
    mMessagingAnalytics = paramnz;
    mStoryLoadAnalyticsReporter = paramaab;
    mTapToViewTouchListener = new TapToViewTouchListener(SnapchatApplication.b(), this);
  }
  
  public static avn d()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new avn(zm.a(), zj.a(), SnapViewEventAnalytics.a(), nx.a(), new Handler(), nz.a(), new aab(), new zw(), afh.a());
      }
      avn localavn = sInstance;
      return localavn;
    }
    finally {}
  }
  
  public static void e()
  {
    try
    {
      sInstance = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a()
  {
    Object localObject;
    int i;
    asg localasg;
    if (mSnapView.e)
    {
      localObject = mSnapView.getSnap();
      if ((!(localObject instanceof akl)) || (!mFailed)) {
        break label117;
      }
      i = 1;
      if ((i != 0) && (!mSecondTapForFailedStory)) {
        break label159;
      }
      localObject = mSnapView;
      if (f != null)
      {
        localasg = b;
        if (b <= 1) {
          break label122;
        }
        i = 1;
      }
    }
    for (;;)
    {
      if ((i != 0) && (e)) {
        f.i();
      }
      if (((SnapView)localObject).b()) {
        a.a(new bfi());
      }
      return;
      label117:
      i = 0;
      break;
      label122:
      if (c) {
        i = 1;
      } else if (SystemClock.elapsedRealtime() >= a + 200L) {
        i = 1;
      } else {
        i = 0;
      }
    }
    label159:
    mSecondTapForFailedStory = true;
  }
  
  public final void a(float paramFloat)
  {
    mSnapView.a(paramFloat);
  }
  
  public final void a(SnapViewEventAnalytics.EndReason paramEndReason)
  {
    mSnapView.a(paramEndReason);
  }
  
  public final boolean a(aka paramaka, ajk paramajk, String paramString)
  {
    if (((paramaka instanceof ajj)) && (paramaka.A()) && (paramaka.f()))
    {
      paramaka = mActionUrl;
      if (!TextUtils.isEmpty(paramaka))
      {
        mOpenBroadcastSnapUrlRunnable = new avn.a(paramaka);
        mOpenSnapHandler.postDelayed(mOpenBroadcastSnapUrlRunnable, 191L);
        mLongPressStarted = true;
      }
    }
    for (;;)
    {
      return false;
      if (paramaka.M())
      {
        paramString = mListeners.iterator();
        while (paramString.hasNext()) {
          ((arn)paramString.next()).a(paramaka);
        }
        bbo.a().a(new bet(false));
        mOpenSnapRunnable = new avn.b(paramaka, paramajk);
        mOpenSnapHandler.post(mOpenSnapRunnable);
        mLongPressStarted = true;
        return true;
      }
      if (!paramaka.S())
      {
        mMediaViewAnalytics.a(paramString, "tap_to_load");
        EasyMetric.EasyMetricFactory.a("SNAP_TAP_TO_LOAD").a("context", paramString).a(false);
        new pg(paramaka).a();
      }
    }
  }
  
  public final void b()
  {
    if (mSnapView.b())
    {
      a(SnapViewEventAnalytics.EndReason.SWIPED_DOWN);
      bbo.a().a(new bey());
    }
  }
  
  public final void c()
  {
    mSnapView.c();
  }
  
  @awj
  public final void f()
  {
    mOpenSnapHandler.removeCallbacks(mOpenSnapRunnable);
    mOpenSnapHandler.removeCallbacks(mReplaySnapRunnable);
    mOpenSnapHandler.removeCallbacks(mOpenBroadcastSnapUrlRunnable);
    mLongPressStarted = false;
  }
  
  public final boolean g()
  {
    return (mSnapView != null) && (mSnapView.d());
  }
  
  @bpi
  public final void onHideSnapStoryEvent(bcy parambcy) {}
  
  public final class a
    implements Runnable
  {
    private String iUrl;
    
    public a(String paramString)
    {
      iUrl = paramString;
    }
    
    public final void run()
    {
      AnalyticsEvents.d(iUrl);
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(iUrl));
      localIntent.setFlags(268435456);
      SnapchatApplication.b().startActivity(localIntent);
    }
  }
  
  final class b
    implements Runnable
  {
    ajk iSnapProvider;
    aka iSnapToOpen;
    
    public b(aka paramaka, ajk paramajk)
    {
      iSnapToOpen = paramaka;
      iSnapProvider = paramajk;
    }
    
    public final void run()
    {
      mMediaViewAnalytics.c("view_media", "feed");
      aka localaka = iSnapToOpen;
      Iterator localIterator1 = akx.c().f().iterator();
      while (localIterator1.hasNext())
      {
        ChatConversation localChatConversation = (ChatConversation)localIterator1.next();
        synchronized (localChatConversation.o())
        {
          Iterator localIterator2 = ???.iterator();
          while (localIterator2.hasNext())
          {
            Object localObject2 = (ChatFeedItem)localIterator2.next();
            if ((localObject2 instanceof aka))
            {
              localObject2 = (aka)localObject2;
              if ((!TextUtils.equals(((aka)localObject2).j(), localaka.j())) && (((aka)localObject2).an()) && (((aka)localObject2).A())) {
                ((aka)localObject2).a(localChatConversation);
              }
            }
          }
        }
      }
      bbo.a().a(new bem(true));
      mSnapView.a(iSnapToOpen, iSnapProvider);
    }
  }
  
  public final class c
    implements Runnable
  {
    private final Context mActivityContext;
    private final akl mClickedAndLoadedStorySnap;
    private List<StorySnapLogbook> mLogbooks;
    private final ajk mSnapProvider;
    private StoryCollection mStoryCollection;
    
    public c(List<StorySnapLogbook> paramList, Context paramContext)
    {
      Context localContext;
      mActivityContext = localContext;
      mStoryCollection = paramList;
      mLogbooks = paramContext;
      if ((paramList instanceof akc))
      {
        if (!paramList.h()) {
          break label92;
        }
        this$1 = paramList.x();
      }
      for (;;)
      {
        mClickedAndLoadedStorySnap = avn.this;
        if (mClickedAndLoadedStorySnap == null) {
          break;
        }
        mSnapProvider = zw.a(mClickedAndLoadedStorySnap, paramList, mLogbooks);
        return;
        if ((paramList != null) && (paramList.h())) {
          this$1 = paramList.v();
        } else {
          label92:
          this$1 = null;
        }
      }
      mSnapProvider = null;
    }
    
    public c(StorySnapLogbook paramStorySnapLogbook, Context paramContext)
    {
      mActivityContext = paramContext;
      mLogbooks = new ArrayList(Collections.singletonList(paramStorySnapLogbook));
      if (mStorySnap.M()) {}
      for (this$1 = mStorySnap;; this$1 = null)
      {
        mClickedAndLoadedStorySnap = avn.this;
        mSnapProvider = zw.a(mClickedAndLoadedStorySnap, null, mLogbooks);
        return;
      }
    }
    
    private void a()
    {
      Object localObject1 = mClickedAndLoadedStorySnap;
      if (mStoryCollection != null)
      {
        localObject2 = zz.a();
        ((zz)localObject2).a(mStoryCollection, ((zz)localObject2).c(), (aka)localObject1, false, StoryLoadingContext.LOAD_FROM_VIEWING);
      }
      localObject1 = mStoryLoadAnalyticsReporter;
      Object localObject2 = mStoryCollection;
      Object localObject3 = mClickedAndLoadedStorySnap.mLoadingContext;
      Object localObject4 = EasyMetric.EasyMetricFactory.a("STORY_STORY_VIEW_LOAD_TYPE");
      ((EasyMetric)localObject4).a("view_location", Integer.valueOf(aab.a((StoryCollection)localObject2)));
      ((EasyMetric)localObject4).a("source", ((StoryLoadingContext)localObject3).getMetricName());
      ((EasyMetric)localObject4).a("reachability", a.f());
      ((EasyMetric)localObject4).a(false);
      localObject2 = avn.this;
      localObject1 = mClickedAndLoadedStorySnap;
      localObject3 = mStoryCollection;
      localObject4 = mSnapProvider;
      boolean bool = mStoryCollection instanceof akc;
      List localList = mLogbooks;
      AnalyticsEvents.a((akl)localObject1, bool, akp.g());
      bbo.a().a(new bet(false));
      if (localList != null)
      {
        bool = true;
        mSnapView.a((aka)localObject1, (ajk)localObject4, bool);
        if (localObject3 == null) {
          if (localList != null) {
            break label220;
          }
        }
      }
      label220:
      for (localObject1 = null;; localObject1 = (StorySnapLogbook)localList.get(0))
      {
        mSecondTapForFailedStory = false;
        mSnapView.a((StorySnapLogbook)localObject1, true);
        return;
        bool = false;
        break;
      }
    }
    
    public final void run()
    {
      mMediaViewAnalytics.c("view_media", "story");
      if ((mClickedAndLoadedStorySnap == null) || (mSnapProvider == null)) {
        return;
      }
      Object localObject1 = mClickedAndLoadedStorySnap.mUsername;
      Object localObject3 = auk.b((String)localObject1, akp.g());
      if ((mIsLocalStory) && (!mOurCampusStoryDialogLog.a((String)localObject1)))
      {
        akl localakl = mClickedAndLoadedStorySnap;
        Object localObject2 = mCustomTitle;
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = auv.a(null, 2131493274, new Object[0]);
        }
        localObject3 = mCustomDescription;
        localObject2 = localObject3;
        if (localObject3 == null) {
          localObject2 = auv.a(null, 2131493273, new Object[0]);
        }
        localObject2 = new aqy(mActivityContext, (String)localObject2)
        {
          protected final void a()
          {
            avn.c.a(avn.c.this);
          }
        };
        ((AlertDialog)localObject2).setTitle((CharSequence)localObject1);
        ((AlertDialog)localObject2).show();
        mOurCampusStoryDialogLog.b(mUsername);
        return;
      }
      a();
    }
  }
  
  public final class d
    implements Runnable
  {
    private Context iActivityContext;
    private ajk iProvider;
    private aka iSnapToReplay;
    
    public d(aka paramaka, ajk paramajk, Context paramContext)
    {
      iSnapToReplay = paramaka;
      iActivityContext = paramContext;
      iProvider = paramajk;
    }
    
    public final void run()
    {
      if (akp.g().t())
      {
        AlertDialogUtils.a(iActivityContext, iSnapToReplay, iProvider);
        AnalyticsEvents.b(iSnapToReplay);
      }
    }
  }
}

/* Location:
 * Qualified Name:     avn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */