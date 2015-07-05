import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.SnapViewEventAnalytics;
import com.snapchat.android.analytics.SnapViewEventAnalytics.EndReason;
import com.snapchat.android.analytics.SnapViewEventAnalytics.SnapViewEventSourceType;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.EasyMetric.EasyMetricFactory;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.StoryCollection;
import com.snapchat.android.model.StorySnapLogbook;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem;
import com.snapchat.android.ui.SnapView;
import com.snapchat.android.ui.VerticalSwipeLayout;
import com.snapchat.android.ui.snapview.SnapViewSessionStopReason;
import com.snapchat.android.util.AlertDialogUtils;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;

public final class aup
  implements aqf.a, yu
{
  private static final String TAG = "SnapListItemHandler";
  private static aup sInstance;
  private final za mChronologicalProviderFactory;
  public final aeh mEditionViewerLauncher;
  public final yn mFeedIconManager;
  public boolean mLongPressStarted;
  ng mMediaViewAnalytics;
  public final ni mMessagingAnalytics;
  private aup.a mOpenBroadcastSnapUrlRunnable;
  private Handler mOpenSnapHandler;
  private aup.b mOpenSnapRunnable;
  @Inject
  protected zq mOurCampusStoryDialogLog;
  private aup.d mReplaySnapRunnable;
  boolean mSecondTapForFailedStory = false;
  private final yq mSendingMailman;
  public SnapView mSnapView;
  public SnapViewEventAnalytics mSnapViewEventAnalytics;
  final ze mStoryLoadAnalyticsReporter;
  public final aqf mTapToViewTouchListener;
  public VerticalSwipeLayout mVerticalSwipeMyStory;
  
  private aup(yq paramyq, yn paramyn, SnapViewEventAnalytics paramSnapViewEventAnalytics, ng paramng, Handler paramHandler, ni paramni, ze paramze, za paramza, aeh paramaeh)
  {
    SnapchatApplication.b().c().a(this);
    ban.a().c(this);
    mSendingMailman = paramyq;
    mFeedIconManager = paramyn;
    mSnapViewEventAnalytics = paramSnapViewEventAnalytics;
    mMediaViewAnalytics = paramng;
    mOpenSnapHandler = paramHandler;
    mChronologicalProviderFactory = paramza;
    mEditionViewerLauncher = paramaeh;
    mMessagingAnalytics = paramni;
    mStoryLoadAnalyticsReporter = paramze;
    mTapToViewTouchListener = new aqf(SnapchatApplication.b(), this);
  }
  
  public static aup d()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new aup(yq.a(), yn.a(), SnapViewEventAnalytics.a(), ng.a(), new Handler(), ni.a(), new ze(), new za(), aeh.a());
      }
      aup localaup = sInstance;
      return localaup;
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
    arh localarh;
    if (mSnapView.e)
    {
      localObject = mSnapView.getSnap();
      if ((!(localObject instanceof ajr)) || (!mFailed)) {
        break label117;
      }
      i = 1;
      if ((i != 0) && (!mSecondTapForFailedStory)) {
        break label159;
      }
      localObject = mSnapView;
      if (f != null)
      {
        localarh = b;
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
      if (((SnapView)localObject).c()) {
        a.a(new bej());
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
  
  public final void a(ain paramain)
  {
    paramain = mActionUrl;
    if (TextUtils.isEmpty(paramain)) {
      return;
    }
    mOpenBroadcastSnapUrlRunnable = new aup.a(paramain);
    mOpenSnapHandler.postDelayed(mOpenBroadcastSnapUrlRunnable, 191L);
    mLongPressStarted = true;
  }
  
  public final void a(@cgb aio paramaio) {}
  
  public final void a(@cgb aje paramaje) {}
  
  public final void a(@cgb aje paramaje, @cgb aio paramaio) {}
  
  public final void a(aje paramaje, aio paramaio, String paramString)
  {
    if (((paramaje instanceof ain)) && (paramaje.z()) && (paramaje.f())) {
      a((ain)paramaje);
    }
    do
    {
      return;
      if (paramaje.L())
      {
        Timber.b("SnapListItemHandler", "Snap is loaded", new Object[0]);
        ban.a().a(new bdt(false));
        mOpenSnapRunnable = new aup.b(paramaje, paramaio);
        mOpenSnapHandler.post(mOpenSnapRunnable);
        mLongPressStarted = true;
        return;
      }
    } while (paramaje.R());
    Timber.b("SnapListItemHandler", "Snap is not loaded. Calling LoadSnapMediaTask", new Object[0]);
    mMediaViewAnalytics.a(paramString, "tap_to_load");
    EasyMetric.EasyMetricFactory.a("SNAP_TAP_TO_LOAD").a("context", paramString).a(false);
    new op(paramaje).a();
  }
  
  public final void a(@cgb aje paramaje, @cgb SnapViewSessionStopReason paramSnapViewSessionStopReason, int paramInt) {}
  
  public final void a(Context paramContext, Snap paramSnap, aio paramaio)
  {
    if (paramSnap.ap())
    {
      mReplaySnapRunnable = new aup.d((aje)paramSnap, paramaio, paramContext);
      mOpenSnapHandler.postDelayed(mReplaySnapRunnable, 191L);
      mLongPressStarted = true;
    }
  }
  
  public final void a(SnapViewEventAnalytics.EndReason paramEndReason)
  {
    mSnapView.a(paramEndReason);
  }
  
  public final void a(ChatConversation paramChatConversation)
  {
    aje localaje = paramChatConversation.j();
    if (localaje != null)
    {
      mSnapViewEventAnalytics.a(SnapViewEventAnalytics.SnapViewEventSourceType.FEED);
      a(localaje, paramChatConversation, "feed");
    }
  }
  
  public final void b()
  {
    if (mSnapView.c())
    {
      a(SnapViewEventAnalytics.EndReason.SWIPED_DOWN);
      ban.a().a(new bdz());
    }
  }
  
  public final void c()
  {
    mSnapView.d();
  }
  
  @avl
  public final void f()
  {
    mOpenSnapHandler.removeCallbacks(mOpenSnapRunnable);
    mOpenSnapHandler.removeCallbacks(mReplaySnapRunnable);
    mOpenSnapHandler.removeCallbacks(mOpenBroadcastSnapUrlRunnable);
    mLongPressStarted = false;
  }
  
  public final boolean g()
  {
    return (mSnapView != null) && (mSnapView.e());
  }
  
  @boh
  public final void onHideSnapStoryEvent(bby parambby) {}
  
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
    aio iSnapProvider;
    aje iSnapToOpen;
    
    public b(aje paramaje, aio paramaio)
    {
      iSnapToOpen = paramaje;
      iSnapProvider = paramaio;
    }
    
    public final void run()
    {
      mMediaViewAnalytics.c("view_media", "feed");
      if (iSnapToOpen.z()) {
        return;
      }
      aje localaje = iSnapToOpen;
      Iterator localIterator1 = akc.b().e().iterator();
      while (localIterator1.hasNext()) {
        synchronized (((ChatConversation)localIterator1.next()).o())
        {
          Iterator localIterator2 = ???.iterator();
          while (localIterator2.hasNext())
          {
            Object localObject2 = (ChatFeedItem)localIterator2.next();
            if ((localObject2 instanceof aje))
            {
              localObject2 = (aje)localObject2;
              if ((!TextUtils.equals(((aje)localObject2).j(), localaje.j())) && (((aje)localObject2).ap()) && (((aje)localObject2).z())) {
                ((aje)localObject2).o();
              }
            }
          }
        }
      }
      ban.a().a(new bdm(true));
      mSnapView.a(iSnapToOpen, iSnapProvider);
    }
  }
  
  public final class c
    implements Runnable
  {
    private final Context mActivityContext;
    private final ajr mClickedAndLoadedStorySnap;
    private List<StorySnapLogbook> mLogbooks;
    private final aio mSnapProvider;
    private StoryCollection mStoryCollection;
    
    public c(List<StorySnapLogbook> paramList, Context paramContext)
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
        this$1 = paramList.A();
      }
      for (;;)
      {
        mClickedAndLoadedStorySnap = aup.this;
        if (mClickedAndLoadedStorySnap == null) {
          break;
        }
        mSnapProvider = za.a(mClickedAndLoadedStorySnap, paramList, mLogbooks);
        return;
        if ((paramList != null) && (paramList.n())) {
          this$1 = paramList.y();
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
      if (mStorySnap.L()) {}
      for (this$1 = mStorySnap;; this$1 = null)
      {
        mClickedAndLoadedStorySnap = aup.this;
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
      localObject1 = mStoryLoadAnalyticsReporter;
      Object localObject2 = mStoryCollection;
      Object localObject3 = mClickedAndLoadedStorySnap.mLoadingContext;
      Object localObject4 = EasyMetric.EasyMetricFactory.a("STORY_STORY_VIEW_LOAD_TYPE");
      ((EasyMetric)localObject4).a("view_location", Integer.valueOf(ze.a((StoryCollection)localObject2)));
      ((EasyMetric)localObject4).a("source", ((StoryLoadingContext)localObject3).getMetricName());
      ((EasyMetric)localObject4).a("reachability", a.f());
      ((EasyMetric)localObject4).a(false);
      localObject2 = aup.this;
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
      mMediaViewAnalytics.c("view_media", "story");
      if ((mClickedAndLoadedStorySnap == null) || (mSnapProvider == null))
      {
        Timber.f("SnapListItemHandler", "Story snap or provider are null, not starting story!", new Object[0]);
        return;
      }
      Object localObject1 = mClickedAndLoadedStorySnap.mUsername;
      Object localObject3 = atm.b((String)localObject1, ajv.g());
      if ((mIsLocalStory) && (!mOurCampusStoryDialogLog.a((String)localObject1)))
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
    private aio iProvider;
    private aje iSnapToReplay;
    
    public d(aje paramaje, aio paramaio, Context paramContext)
    {
      iSnapToReplay = paramaje;
      iActivityContext = paramContext;
      iProvider = paramaio;
    }
    
    public final void run()
    {
      if (ajv.g().t())
      {
        AlertDialogUtils.a(iActivityContext, iSnapToReplay, iProvider);
        AnalyticsEvents.b(iSnapToReplay);
      }
    }
  }
}

/* Location:
 * Qualified Name:     aup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */