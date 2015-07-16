import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.model.Snap;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatFeedItem.FeedIconPriority;
import com.snapchat.android.model.chat.ChatFeedItem.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import javax.inject.Inject;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class aka
  extends Snap
{
  static final long BIRTHDAY_PRIORITY_TIMESTAMP = 0L;
  static final int SECOND_MAX_VIDEO_DURATION = 10;
  private static final String TAG = "ReceivedSnap";
  public static final int TIME_TO_SHOW_AS_VIEWED = 5000;
  private final String mCacheKeyInstanceSuffix;
  @SerializedName("time")
  protected double mCanonicalDisplayTime;
  @SerializedName("caption_text_display")
  protected String mCaptionText;
  @Inject
  protected bhk mClock;
  @SerializedName("filter_id")
  protected String mFilterId;
  protected boolean mIsBeingViewed = false;
  protected boolean mIsLoading = false;
  protected boolean mIsSelectedForReplay = false;
  protected boolean mIsTimerRunning = false;
  public boolean mIsViewedFromStart = true;
  public Set<aka.a> mLoadEventListeners = new HashSet();
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
  
  public aka()
  {
    SnapchatApplication.b().c().a(this);
    mCacheKeyInstanceSuffix = UUID.randomUUID().toString();
  }
  
  public aka(String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt, boolean paramBoolean1, Snap.ClientSnapStatus paramClientSnapStatus, String paramString2, double paramDouble, String paramString3, boolean paramBoolean2, String paramString4)
  {
    super(paramString1, paramLong1, paramInt, paramClientSnapStatus);
    SnapchatApplication.b().c().a(this);
    mCacheKeyInstanceSuffix = UUID.randomUUID().toString();
    mSender = paramString2;
    mZipped = paramBoolean1;
    mCanonicalDisplayTime = paramDouble;
    mTimeLeft = paramDouble;
    mSentTimestamp = paramLong2;
    mViewedTimestamp = paramLong3;
    d(paramBoolean2);
    switch (paramClientSnapStatus)
    {
    }
    for (;;)
    {
      mCaptionText = paramString3;
      mFilterId = paramString4;
      return;
      if (M())
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
  
  private void ap()
  {
    axo.SNAP_RECEIVED_VIDEO_CACHE.c(i());
    axo.SNAP_RECEIVED_IMAGE_CACHE.c(i());
  }
  
  private boolean aq()
  {
    long l = akr.u();
    return (U() > l) && (U() < l + 86400000L);
  }
  
  private void d(@chd ChatConversation paramChatConversation)
  {
    if (paramChatConversation == null) {}
    zm localzm;
    do
    {
      return;
      localzm = zm.a();
      localObject = akr.l();
    } while (localObject == null);
    String str = avr.a(ae());
    Object localObject = (bkc)aty.a(bji.a.SNAP_STATE, (String)localObject, paramChatConversation.z(), mMessagingAuthToken);
    ((bkc)localObject).a(str);
    ((bkc)localObject).b(Boolean.valueOf(A()));
    ((bkc)localObject).c(Boolean.valueOf(v()));
    if (ao()) {}
    for (long l = 1L;; l = 0L)
    {
      ((bkc)localObject).b(Long.valueOf(l));
      ((bkc)localObject).a(Long.valueOf(paramChatConversation.b(System.currentTimeMillis())));
      localzm.a(paramChatConversation, (bil)localObject);
      return;
    }
  }
  
  public static boolean s()
  {
    return false;
  }
  
  public boolean A()
  {
    return (Snap.ClientSnapStatus.RECEIVED_AND_VIEWED.equals(mClientSnapStatus)) || (Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE.equals(mClientSnapStatus)) || (Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED.equals(mClientSnapStatus));
  }
  
  public final boolean B()
  {
    return mWasOpened;
  }
  
  public final void C()
  {
    mIsTimerRunning = true;
  }
  
  public final void D()
  {
    mIsTimerRunning = false;
  }
  
  public final boolean E()
  {
    return mIsTimerRunning;
  }
  
  public final long F()
  {
    return mViewedTimestamp;
  }
  
  public final double G()
  {
    return mCanonicalDisplayTime;
  }
  
  public final double H()
  {
    return mTimeLeft;
  }
  
  public final String I()
  {
    return mFilterId;
  }
  
  @chd
  public axw J()
  {
    String str = i();
    if ((str != null) && (axo.SNAP_RECEIVED_IMAGE_CACHE.d(str))) {
      return new axw(axo.SNAP_RECEIVED_IMAGE_CACHE, str, L());
    }
    return null;
  }
  
  @chd
  public axw K()
  {
    String str = i();
    if ((str != null) && (axo.SNAP_RECEIVED_VIDEO_CACHE.d(str))) {
      return new axw(axo.SNAP_RECEIVED_VIDEO_CACHE, str, L());
    }
    return null;
  }
  
  /* Error */
  public aza L()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 314	aka:mMediaKey	Ljava/lang/String;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 316	aka:mMediaIv	Ljava/lang/String;
    //   13: ifnonnull +31 -> 44
    //   16: new 318	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   19: dup
    //   20: invokespecial 319	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	()V
    //   23: astore_1
    //   24: aload_0
    //   25: aload_1
    //   26: invokevirtual 321	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:a	()Ljava/lang/String;
    //   29: putfield 314	aka:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 323	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:b	()Ljava/lang/String;
    //   37: putfield 316	aka:mMediaIv	Ljava/lang/String;
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: areturn
    //   44: new 318	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   47: dup
    //   48: aload_0
    //   49: getfield 314	aka:mMediaKey	Ljava/lang/String;
    //   52: aload_0
    //   53: getfield 316	aka:mMediaIv	Ljava/lang/String;
    //   56: invokespecial 326	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   59: astore_1
    //   60: goto -20 -> 40
    //   63: astore_1
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_1
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	aka
    //   23	37	1	localCbcEncryptionAlgorithm	com.snapchat.android.util.crypto.CbcEncryptionAlgorithm
    //   63	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	63	finally
    //   16	40	63	finally
    //   44	60	63	finally
  }
  
  public boolean M()
  {
    if ((axo.SNAP_RECEIVED_IMAGE_CACHE.d(i())) || (axo.SNAP_RECEIVED_VIDEO_CACHE.d(i()))) {}
    for (int i = 1; (i != 0) && (mMediaKey != null); i = 0) {
      return true;
    }
    return false;
  }
  
  public boolean N()
  {
    return false;
  }
  
  public final boolean O()
  {
    return false;
  }
  
  public final boolean P()
  {
    return false;
  }
  
  public final boolean Q()
  {
    return true;
  }
  
  public final boolean R()
  {
    return false;
  }
  
  public final boolean S()
  {
    if (X() == AdResolutionState.RESOLVING) {
      return true;
    }
    return mIsLoading;
  }
  
  public final String T()
  {
    return mCaptionText;
  }
  
  public long U()
  {
    return mSentTimestamp;
  }
  
  public final long V()
  {
    return mTimestamp;
  }
  
  public boolean W()
  {
    return false;
  }
  
  public AdResolutionState X()
  {
    return AdResolutionState.NOT_NEEDED;
  }
  
  public String Y()
  {
    return cl.a(getClass()).a("id", d()).a("sender", j()).a("cacheKey", i()).a("loaded", M()).a("loading", S()).a("unableToLoad", N()).toString();
  }
  
  public boolean Z()
  {
    return false;
  }
  
  protected int a(int paramInt)
  {
    return Math.min(paramInt, 10);
  }
  
  @awj
  @chd
  public final Bitmap a(Context paramContext)
  {
    axw localaxw = J();
    if (localaxw == null) {
      return null;
    }
    return mCache.a(paramContext, mKey, mAlgorithm);
  }
  
  public final ChatFeedItem.a a(@chc View paramView, @chd ChatConversation paramChatConversation)
  {
    boolean bool2 = true;
    if ((paramChatConversation != null) && (mHasUnviewedSnapsWithAudio)) {}
    for (boolean bool1 = true; (!mIsTimerRunning) && (mIsSelectedForReplay) && (!v()); bool1 = false)
    {
      paramView = new ChatFeedItem.a(ab());
      endResource = b(aq(), bool1);
      frivolousAnimationTime = mReplaySelectedTime;
      return paramView;
    }
    if ((aq()) && (!mIsTimerRunning)) {}
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
      if (!M()) {}
    }
    for (;;)
    {
      return SnapchatApplication.b().getResources().getString(i);
      if (S())
      {
        i = 2131493213;
      }
      else
      {
        i = 2131493524;
        continue;
        if (!mIsTimerRunning) {
          if (an()) {
            i = 2131493322;
          } else {
            i = 2131493146;
          }
        }
      }
    }
  }
  
  public final void a(long paramLong)
  {
    mTimeViewed = paramLong;
  }
  
  public final void a(aka.a parama)
  {
    synchronized (mLoadEventListeners)
    {
      mLoadEventListeners.remove(parama);
      return;
    }
  }
  
  public final void a(@chd ChatConversation paramChatConversation)
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
      ap();
      akp.g().a(this);
      if (paramChatConversation != null) {
        break;
      }
      x();
      return;
    }
    d(paramChatConversation);
  }
  
  public final void a(boolean paramBoolean)
  {
    mUpdatedOnServer = paramBoolean;
  }
  
  public String aa()
  {
    return "FEED";
  }
  
  public final int b(@chc ChatConversation paramChatConversation)
  {
    ChatFeedItem.FeedIconPriority localFeedIconPriority = ChatFeedItem.FeedIconPriority.MOST_RECENT;
    if ((mIsTimerRunning) && (mTimeLeft > 0.0D)) {
      paramChatConversation = ChatFeedItem.FeedIconPriority.CURRENTLY_TICKING;
    }
    for (;;)
    {
      return paramChatConversation.ordinal();
      if ((A()) && (System.currentTimeMillis() - mViewedTimestamp < 5000L))
      {
        if (paramChatConversation.c() != null)
        {
          paramChatConversation = ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT;
        }
        else
        {
          paramChatConversation = localFeedIconPriority;
          if (an()) {
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
    int i = b(paramChatConversation);
    if ((i == ChatFeedItem.FeedIconPriority.RECENTLY_OPENED_LAST_SNAP.ordinal()) || (i == ChatFeedItem.FeedIconPriority.UNOPENED_SNAP_AVAILABLE_NEXT.ordinal())) {
      return mViewedTimestamp;
    }
    return U();
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
    return (an()) || ((!mWasOpened) && (!M()) && (!S()));
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
    return (!A()) && (!mIsLoading);
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
    localArrayList.add(akr.l());
    return localArrayList;
  }
  
  public final void l()
  {
    mWasOpened = false;
    mIsLoading = false;
    if (A()) {
      return;
    }
    mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_UNLOADED;
    ap();
    synchronized (mLoadEventListeners)
    {
      Iterator localIterator = mLoadEventListeners.iterator();
      if (localIterator.hasNext()) {
        ((aka.a)localIterator.next()).a();
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
        ((aka.a)localIterator.next()).a(this);
      }
    }
  }
  
  public void o()
  {
    a(null);
  }
  
  public final boolean p()
  {
    return false;
  }
  
  public final boolean q()
  {
    return false;
  }
  
  public final boolean r()
  {
    return true;
  }
  
  public final void t()
  {
    mIsSelectedForReplay = true;
    mReplaySelectedTime = System.currentTimeMillis();
    mWasOpened = false;
    mIsViewedFromStart = true;
    if (M()) {
      n();
    }
    for (;;)
    {
      akp.g().a(this);
      return;
      l();
    }
  }
  
  public String toString()
  {
    return new ToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).append("id", d()).append("sender", j()).append("timestamp", U()).append("isVideoWithAudio", ah()).append("isBeingViewed", mIsBeingViewed).append("hasBeenViewed", A()).append("viewedTimestamp", mViewedTimestamp).append("clientSnapStatus", af()).append("isSentOnBirthday", aq()).toString();
  }
  
  public final boolean u()
  {
    return mIsSelectedForReplay;
  }
  
  public final boolean v()
  {
    return mClientSnapStatus == Snap.ClientSnapStatus.RECEIVED_AND_REPLAYED;
  }
  
  public final void w()
  {
    d(true);
    akp.g().a(this);
    x();
  }
  
  public final void x()
  {
    String str = akr.l();
    if ((str == null) || (j() == null)) {
      return;
    }
    d(zi.a(ayg.a(str, j())));
  }
  
  public final boolean y()
  {
    return mIsBeingViewed;
  }
  
  public final long z()
  {
    return mTimeViewed;
  }
  
  public void z_()
  {
    mViewedTimestamp = System.currentTimeMillis();
    mIsTimerRunning = false;
    mTimeLeft = 0.0D;
    c(false);
    mWasOpened = true;
    mIsLoading = false;
    mClientSnapStatus = Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
    akp.g().a(this);
    x();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(aka paramaka);
  }
}

/* Location:
 * Qualified Name:     aka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */