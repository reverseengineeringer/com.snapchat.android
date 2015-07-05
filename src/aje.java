import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import javax.inject.Inject;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class aje
  extends Snap
{
  public static final int ALLOWED_TIME_TO_REPLAY = 5000;
  static final long BIRTHDAY_PRIORITY_TIMESTAMP = 0L;
  static final int SECOND_MAX_VIDEO_DURATION = 10;
  private static final String TAG = "ReceivedSnap";
  private final String mCacheKeyInstanceSuffix;
  @SerializedName("time")
  protected double mCanonicalDisplayTime;
  protected long mCaptionOrientation;
  protected double mCaptionPosition;
  @SerializedName("caption_text_display")
  protected String mCaptionText;
  @Inject
  protected bgk mClock;
  @SerializedName("filter_id")
  protected String mFilterId;
  protected boolean mIsBeingViewed = false;
  protected boolean mIsLoading = false;
  protected boolean mIsSelectedForReplay = false;
  protected boolean mIsTimerRunning = false;
  public boolean mIsViewedFromStart = true;
  public Set<aje.a> mLoadEventListeners = new HashSet();
  @SerializedName("media_iv")
  protected String mMediaIv;
  @SerializedName("media_key")
  protected String mMediaKey;
  protected long mReplaySelectedTime = Long.MIN_VALUE;
  public String mSender;
  protected double mTimeLeft;
  protected long mTimeViewed;
  protected boolean mUpdatedOnServer;
  protected long mViewedTimestamp;
  protected boolean mWasOpened = true;
  @SerializedName("zipped")
  protected boolean mZipped;
  
  public aje()
  {
    SnapchatApplication.b().c().a(this);
    mCacheKeyInstanceSuffix = UUID.randomUUID().toString();
  }
  
  public aje(String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, boolean paramBoolean1, Snap.ClientSnapStatus paramClientSnapStatus, String paramString2, double paramDouble1, String paramString3, boolean paramBoolean2, long paramLong4, double paramDouble2, String paramString4)
  {
    super(paramString1, paramLong1, paramInt, paramClientSnapStatus);
    SnapchatApplication.b().c().a(this);
    mCacheKeyInstanceSuffix = UUID.randomUUID().toString();
    mSender = paramString2;
    mZipped = paramBoolean1;
    mCanonicalDisplayTime = paramDouble1;
    mTimeLeft = paramDouble1;
    mSentTimestamp = paramLong2;
    mViewedTimestamp = paramLong3;
    d(paramBoolean2);
    switch (paramClientSnapStatus)
    {
    }
    for (;;)
    {
      mCaptionText = paramString3;
      mCaptionOrientation = paramLong4;
      mCaptionPosition = paramDouble2;
      mFilterId = paramString4;
      return;
      if (L())
      {
        n();
      }
      else
      {
        l();
        continue;
        o();
      }
    }
  }
  
  private void ar()
  {
    awq.SNAP_RECEIVED_VIDEO_CACHE.c(i());
    awq.SNAP_RECEIVED_IMAGE_CACHE.c(i());
  }
  
  private boolean as()
  {
    long l = ajx.u();
    return (W() > l) && (W() < l + 86400000L);
  }
  
  public static boolean r()
  {
    return false;
  }
  
  public final boolean A()
  {
    return mWasOpened;
  }
  
  public void A_()
  {
    mViewedTimestamp = System.currentTimeMillis();
    mIsTimerRunning = false;
    mTimeLeft = 0.0D;
    c(false);
    mWasOpened = true;
    mIsLoading = false;
    mClientSnapStatus = Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
    ajv.g().a(this);
    w();
  }
  
  public final void B()
  {
    mIsTimerRunning = true;
  }
  
  public final void C()
  {
    mIsTimerRunning = false;
  }
  
  public final boolean D()
  {
    return mIsTimerRunning;
  }
  
  public final long E()
  {
    return mViewedTimestamp;
  }
  
  public final double F()
  {
    return mCanonicalDisplayTime;
  }
  
  public final double G()
  {
    return mTimeLeft;
  }
  
  public final String H()
  {
    return mFilterId;
  }
  
  @cgc
  public awy I()
  {
    String str = i();
    if ((str != null) && (awq.SNAP_RECEIVED_IMAGE_CACHE.d(str))) {
      return new awy(awq.SNAP_RECEIVED_IMAGE_CACHE, str, K());
    }
    return null;
  }
  
  @cgc
  public awy J()
  {
    String str = i();
    if ((str != null) && (awq.SNAP_RECEIVED_VIDEO_CACHE.d(str))) {
      return new awy(awq.SNAP_RECEIVED_VIDEO_CACHE, str, K());
    }
    return null;
  }
  
  /* Error */
  public ayc K()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 247	aje:mMediaKey	Ljava/lang/String;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 249	aje:mMediaIv	Ljava/lang/String;
    //   13: ifnonnull +31 -> 44
    //   16: new 251	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   19: dup
    //   20: invokespecial 252	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	()V
    //   23: astore_1
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 254	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	()Ljava/lang/String;
    //   29: putfield 247	aje:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 256	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:b	()Ljava/lang/String;
    //   37: putfield 249	aje:mMediaIv	Ljava/lang/String;
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: areturn
    //   44: new 251	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   47: dup
    //   48: aload_0
    //   49: getfield 247	aje:mMediaKey	Ljava/lang/String;
    //   52: aload_0
    //   53: getfield 249	aje:mMediaIv	Ljava/lang/String;
    //   56: invokespecial 259	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: astore_1
    //   60: goto -20 -> 40
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	aje
    //   23	37	1	localCbcEncryptionAlgorithm	com.snapchat.android.util.crypto.CbcEncryptionAlgorithm
    //   63	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	63	finally
    //   16	40	63	finally
    //   44	60	63	finally
  }
  
  public boolean L()
  {
    if ((awq.SNAP_RECEIVED_IMAGE_CACHE.d(i())) || (awq.SNAP_RECEIVED_VIDEO_CACHE.d(i()))) {}
    for (int i = 1; (i != 0) && (mMediaKey != null); i = 0) {
      return true;
    }
    return false;
  }
  
  public boolean M()
  {
    return false;
  }
  
  public final boolean N()
  {
    return false;
  }
  
  public final boolean O()
  {
    return false;
  }
  
  public final boolean P()
  {
    return true;
  }
  
  public final boolean Q()
  {
    return false;
  }
  
  public final boolean R()
  {
    if (Z() == AdResolutionState.RESOLVING) {
      return true;
    }
    return mIsLoading;
  }
  
  public final boolean S()
  {
    return mCaptionText != null;
  }
  
  public final String T()
  {
    return mCaptionText;
  }
  
  public long U()
  {
    return mCaptionOrientation;
  }
  
  public double V()
  {
    return mCaptionPosition;
  }
  
  public long W()
  {
    return mSentTimestamp;
  }
  
  public final long X()
  {
    return mTimestamp;
  }
  
  public boolean Y()
  {
    return false;
  }
  
  public AdResolutionState Z()
  {
    return AdResolutionState.NOT_NEEDED;
  }
  
  protected int a(int paramInt)
  {
    return Math.min(paramInt, 10);
  }
  
  public final int a(@cgb ChatConversation paramChatConversation)
  {
    ChatFeedItem.FeedIconPriority localFeedIconPriority = ChatFeedItem.FeedIconPriority.MOST_RECENT;
    if ((mIsTimerRunning) && (mTimeLeft > 0.0D)) {
      paramChatConversation = ChatFeedItem.FeedIconPriority.CURRENTLY_TICKING;
    }
    for (;;)
    {
      return paramChatConversation.ordinal();
      if ((z()) && (System.currentTimeMillis() - mViewedTimestamp < 5000L))
      {
        if (paramChatConversation.c() != null)
        {
          paramChatConversation = ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT;
        }
        else
        {
          paramChatConversation = localFeedIconPriority;
          if (ap()) {
            paramChatConversation = ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP;
          }
        }
      }
      else
      {
        paramChatConversation = localFeedIconPriority;
        if (!mWasOpened) {
          paramChatConversation = ChatFeedItem.FeedIconPriority.NEW;
        }
      }
    }
  }
  
  @avl
  @cgc
  public final Bitmap a(Context paramContext)
  {
    awy localawy = I();
    if (localawy == null) {
      return null;
    }
    return mCache.a(paramContext, mKey, mAlgorithm);
  }
  
  public final ChatFeedItem.a a(@cgb View paramView, @cgc ChatConversation paramChatConversation)
  {
    boolean bool2 = true;
    if (System.currentTimeMillis() - mViewedTimestamp < 5000L)
    {
      long l1 = System.currentTimeMillis();
      long l2 = mViewedTimestamp;
      paramView.postDelayed(new Runnable()
      {
        public final void run()
        {
          ban.a().a(new bbk());
        }
      }, 5000L - (l1 - l2));
    }
    if ((paramChatConversation != null) && (mHasUnviewedSnapsWithAudio)) {}
    for (boolean bool1 = true; (!mIsTimerRunning) && (mIsSelectedForReplay) && (!u()); bool1 = false)
    {
      paramView = new ChatFeedItem.a(ad());
      endResource = b(as(), bool1);
      frivolousAnimationTime = mReplaySelectedTime;
      return paramView;
    }
    if ((as()) && (!mIsTimerRunning)) {}
    for (;;)
    {
      return new ChatFeedItem.a(a(bool2, bool1));
      bool2 = false;
    }
  }
  
  public String a()
  {
    int i = 2131493528;
    if (!mWasOpened) {
      if (!L()) {}
    }
    for (;;)
    {
      return SnapchatApplication.b().getResources().getString(i);
      if (R())
      {
        i = 2131493213;
      }
      else
      {
        i = 2131493524;
        continue;
        if (!mIsTimerRunning) {
          if (ap()) {
            i = 2131493322;
          } else {
            i = 2131493147;
          }
        }
      }
    }
  }
  
  public final void a(long paramLong)
  {
    mTimeViewed = paramLong;
  }
  
  public final void a(aje.a parama)
  {
    synchronized (mLoadEventListeners)
    {
      mLoadEventListeners.remove(parama);
      return;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    mUpdatedOnServer = paramBoolean;
  }
  
  public String aa()
  {
    return ci.a(getClass()).a("id", d()).a("sender", j()).a("cacheKey", i()).a("loaded", L()).a("loading", R()).a("unableToLoad", M()).toString();
  }
  
  public boolean ab()
  {
    return false;
  }
  
  public String ac()
  {
    return "FEED";
  }
  
  public final long b(ChatConversation paramChatConversation)
  {
    if ((a(paramChatConversation) == ChatFeedItem.FeedIconPriority.NEW.ordinal()) && (as())) {
      return 0L;
    }
    return c(paramChatConversation);
  }
  
  public final void b(int paramInt)
  {
    mCanonicalDisplayTime = a(paramInt);
  }
  
  public final void b(boolean paramBoolean)
  {
    mZipped = paramBoolean;
  }
  
  public final long c(ChatConversation paramChatConversation)
  {
    int i = a(paramChatConversation);
    if ((i == ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP.ordinal()) || (i == ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal())) {
      return mViewedTimestamp;
    }
    return W();
  }
  
  public final void c(int paramInt)
  {
    mTimeLeft = a(paramInt);
  }
  
  public final void c(boolean paramBoolean)
  {
    if ((mWasOpened) && (paramBoolean)) {
      mIsViewedFromStart = false;
    }
    if (paramBoolean)
    {
      mWasOpened = true;
      mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_STARTED_VIEWING;
    }
    mIsBeingViewed = paramBoolean;
  }
  
  public boolean c()
  {
    return (ap()) || ((!mWasOpened) && (!L()) && (!R()));
  }
  
  public final void d(int paramInt)
  {
    mTimeLeft = paramInt;
  }
  
  public boolean e()
  {
    return false;
  }
  
  public boolean f()
  {
    return (!z()) && (!mIsLoading);
  }
  
  public final boolean g()
  {
    return mUpdatedOnServer;
  }
  
  public final boolean h()
  {
    return mZipped;
  }
  
  public String i()
  {
    return mId + mCacheKeyInstanceSuffix;
  }
  
  public String j()
  {
    return mSender;
  }
  
  public final List<String> k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ajx.l());
    return localArrayList;
  }
  
  public final void l()
  {
    mWasOpened = false;
    mIsLoading = false;
    if (z())
    {
      Timber.c("ReceivedSnap", "Call to markUnviewedAndUnloaded on an already viewed snap", new Object[0]);
      return;
    }
    mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED;
    ar();
    synchronized (mLoadEventListeners)
    {
      Iterator localIterator = mLoadEventListeners.iterator();
      if (localIterator.hasNext()) {
        ((aje.a)localIterator.next()).a();
      }
    }
  }
  
  public final void m()
  {
    mIsLoading = true;
    mClientSnapStatus = Snap.ClientSnapStatus.LOADING;
  }
  
  public final void n()
  {
    mWasOpened = false;
    mIsLoading = false;
    mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_LOADED;
    synchronized (mLoadEventListeners)
    {
      Iterator localIterator = mLoadEventListeners.iterator();
      if (localIterator.hasNext()) {
        ((aje.a)localIterator.next()).a(this);
      }
    }
  }
  
  public void o()
  {
    mViewedTimestamp = System.currentTimeMillis();
    mIsTimerRunning = false;
    mTimeLeft = 0.0D;
    c(false);
    mWasOpened = true;
    mIsLoading = false;
    if (mIsSelectedForReplay) {}
    for (mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;; mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED)
    {
      ar();
      ajv.g().a(this);
      w();
      return;
    }
  }
  
  public final void p() {}
  
  public final boolean q()
  {
    return false;
  }
  
  public final void s()
  {
    mIsSelectedForReplay = true;
    mReplaySelectedTime = System.currentTimeMillis();
    mWasOpened = false;
    mIsViewedFromStart = true;
    if (L()) {
      n();
    }
    for (;;)
    {
      ajv.g().a(this);
      return;
      l();
    }
  }
  
  public final boolean t()
  {
    return mIsSelectedForReplay;
  }
  
  public String toString()
  {
    return new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).append("id", d()).append("sender", j()).toString();
  }
  
  public final boolean u()
  {
    return mClientSnapStatus == Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
  }
  
  public final void v()
  {
    d(true);
    ajv.g().a(this);
    w();
  }
  
  public final void w()
  {
    Object localObject1 = ajx.l();
    if ((localObject1 == null) || (j() == null)) {}
    yq localyq;
    do
    {
      do
      {
        return;
        localObject1 = ym.a(axi.a((String)localObject1, j()));
      } while (localObject1 == null);
      localyq = yq.a();
      localObject2 = ajx.l();
    } while (localObject2 == null);
    String str = aut.a(ag());
    Object localObject2 = (bjb)asz.a(bii.a.SNAP_STATE, (String)localObject2, ((ChatConversation)localObject1).y(), mMessagingAuthToken);
    ((bjb)localObject2).a(str);
    ((bjb)localObject2).b(Boolean.valueOf(z()));
    ((bjb)localObject2).c(Boolean.valueOf(u()));
    if (aq()) {}
    for (long l = 1L;; l = 0L)
    {
      ((bjb)localObject2).b(Long.valueOf(l));
      ((bjb)localObject2).a(Long.valueOf(((ChatConversation)localObject1).b(System.currentTimeMillis())));
      localyq.a((ChatConversation)localObject1, (bhl)localObject2);
      return;
    }
  }
  
  public final boolean x()
  {
    return mIsBeingViewed;
  }
  
  public final long y()
  {
    return mTimeViewed;
  }
  
  public boolean z()
  {
    return (Snap.ClientSnapStatus.RECEIVED_AND_VIEWED.equals(mClientSnapStatus)) || (Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE.equals(mClientSnapStatus)) || (Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED.equals(mClientSnapStatus));
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(aje paramaje);
  }
}

/* Location:
 * Qualified Name:     aje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */