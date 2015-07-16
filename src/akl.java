import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

public class akl
  extends aka
{
  private static final String AUTH_STORY_DOWNLOAD_ENDPOINT = "/bq/auth_story_blob";
  private static final String AUTH_THUMBNAIL_DOWNLOAD_ENDPOINT = "/bq/auth_story_thumbnails";
  private static final String TAG = "StorySnap";
  private bhv mAdPlacementMetadata;
  public boolean mCanAdFollow;
  public String mClientId;
  public long mExpirationTimestamp;
  public boolean mFailed;
  public boolean mHasBeenViewed;
  private boolean mHasMatureContent;
  public boolean mIsShared;
  public StoryLoadingContext mLoadingContext = StoryLoadingContext.ALREADY_LOADED;
  public String mMediaId;
  private String mMediaUrl;
  public boolean mNeedsAuth;
  public String mStoryFilterId;
  public String mStoryId;
  private String mThumbnailIv;
  private String mThumbnailUrl;
  private long mTimeToExpiration;
  public String mUsername;
  public boolean mWas404ResponseReceived;
  
  public akl()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public akl(aji paramaji, String paramString1, String paramString2)
  {
    this();
    mStoryId = paramString1;
    mUsername = paramString2;
    mClientId = mClientId;
    mCaptionText = mCaptionText;
    mMediaType = paramaji.h();
    if (mMediaMailingMetadata.mPostStatus == MediaMailingMetadata.PostStatus.FAILED) {}
    for (boolean bool = true;; bool = false)
    {
      mFailed = bool;
      mZipped = mIsZipUpload;
      mTimestamp = mTime.getTime();
      mCanonicalDisplayTime = mTimerValueOrDuration;
      return;
    }
  }
  
  public akl(bkh parambkh)
  {
    this();
    mHasMatureContent = avb.a(parambkh.c());
    mUsername = parambkh.b();
    mId = parambkh.a();
    mClientId = parambkh.d();
    mMediaId = parambkh.f();
    mTimestamp = parambkh.e().longValue();
    mMediaType = parambkh.l().intValue();
    mMediaUrl = parambkh.h();
    mMediaIv = parambkh.i();
    mMediaKey = parambkh.g();
    mThumbnailIv = parambkh.j();
    mThumbnailUrl = parambkh.k();
    mCanonicalDisplayTime = parambkh.m().doubleValue();
    mCaptionText = parambkh.o();
    mZipped = parambkh.p().booleanValue();
    mFilterId = parambkh.q();
    mIsShared = avb.a(parambkh.s());
    mNeedsAuth = avb.a(parambkh.u());
    mCanAdFollow = avb.a(parambkh.v());
    mTimeToExpiration = parambkh.n().longValue();
    mAdPlacementMetadata = parambkh.t();
    mStoryFilterId = parambkh.r();
  }
  
  public akl(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, int paramInt1, String paramString4, String paramString5, Snap.ClientSnapStatus paramClientSnapStatus, String paramString6, int paramInt2, String paramString7, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString8, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, long paramLong3, String paramString9)
  {
    this();
    mId = paramString1;
    mClientId = paramString2;
    mMediaId = paramString3;
    mTimestamp = paramLong1;
    mViewedTimestamp = paramLong2;
    mMediaType = paramInt1;
    mMediaUrl = paramString4;
    mThumbnailUrl = paramString5;
    mClientSnapStatus = paramClientSnapStatus;
    mUsername = paramString6;
    mCanonicalDisplayTime = paramInt2;
    mCaptionText = paramString7;
    mHasBeenViewed = paramBoolean1;
    mWasOpened = paramBoolean1;
    mIsScreenshotted = paramBoolean2;
    mFailed = paramBoolean3;
    mZipped = paramBoolean4;
    mFilterId = paramString8;
    mWas404ResponseReceived = paramBoolean5;
    mIsShared = paramBoolean6;
    mNeedsAuth = paramBoolean7;
    mCanAdFollow = paramBoolean8;
    mExpirationTimestamp = paramLong3;
    mStoryFilterId = paramString9;
  }
  
  private akl(@chc String paramString1, @chc String paramString2, boolean paramBoolean)
  {
    this();
    mUsername = ((String)co.a(paramString1));
    mClientId = ((String)co.a(paramString2));
    mIsShared = paramBoolean;
  }
  
  public akl(@chc String paramString, boolean paramBoolean)
  {
    this(paramString, UUID.randomUUID().toString(), paramBoolean);
  }
  
  public static String as()
  {
    return bal.b("/bq/auth_story_thumbnails") + "/bq/auth_story_thumbnails";
  }
  
  public final boolean A()
  {
    return mHasBeenViewed;
  }
  
  @chd
  public final axw J()
  {
    if (!TextUtils.isEmpty(mClientId))
    {
      if (axo.MY_SNAP_IMAGE_CACHE.d(mClientId)) {
        return new axw(axo.MY_SNAP_IMAGE_CACHE, mClientId, null);
      }
      if (axo.MY_SNAP_IMAGE_CACHE.d(mClientId + "-unzippedbitmap")) {
        return new axw(axo.MY_SNAP_IMAGE_CACHE, mClientId + "-unzippedbitmap", null);
      }
    }
    String str = i();
    if ((str != null) && (axo.STORY_RECEIVED_IMAGE_CACHE.d(str))) {
      return new axw(axo.STORY_RECEIVED_IMAGE_CACHE, str, L());
    }
    return null;
  }
  
  @chd
  public final axw K()
  {
    if (axo.MY_SNAP_VIDEO_CACHE.d(mClientId)) {
      return new axw(axo.MY_SNAP_VIDEO_CACHE, mClientId, null);
    }
    String str = i();
    if ((str != null) && (axo.STORY_RECEIVED_VIDEO_CACHE.d(str))) {
      return new axw(axo.STORY_RECEIVED_VIDEO_CACHE, str, L());
    }
    return null;
  }
  
  /* Error */
  public final aza L()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 190	akl:mMediaIv	Ljava/lang/String;
    //   6: invokestatic 330	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +15 -> 24
    //   12: new 366	azi
    //   15: dup
    //   16: invokespecial 367	azi:<init>	()V
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: new 369	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   27: dup
    //   28: aload_0
    //   29: getfield 196	akl:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: getfield 190	akl:mMediaIv	Ljava/lang/String;
    //   36: invokespecial 372	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: astore_1
    //   40: goto -20 -> 20
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	akl
    //   19	21	1	localObject1	Object
    //   43	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	43	finally
    //   24	40	43	finally
  }
  
  public boolean M()
  {
    if (mMediaType == 0) {
      if (J() == null) {}
    }
    while (K() != null)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean N()
  {
    if (mWas404ResponseReceived) {}
    while ((ag()) && (axy.sExternalCacheDirectory == null)) {
      return true;
    }
    return super.N();
  }
  
  public final long U()
  {
    return mTimestamp;
  }
  
  public boolean W()
  {
    return false;
  }
  
  public boolean Z()
  {
    return false;
  }
  
  protected final int a(int paramInt)
  {
    return Math.min(paramInt, 10);
  }
  
  public final int a(ChatFeedItem paramChatFeedItem)
  {
    return Long.valueOf(mTimestamp).compareTo(Long.valueOf(paramChatFeedItem.U())) * -1;
  }
  
  public final void a(ays paramays)
  {
    try
    {
      mMediaKey = mKey;
      mMediaIv = mIv;
      mThumbnailIv = mThumbnailIv;
      return;
    }
    finally
    {
      paramays = finally;
      throw paramays;
    }
  }
  
  public final boolean aA()
  {
    return (!mFailed) && (mId == null);
  }
  
  public final void aB()
  {
    mWas404ResponseReceived = true;
    mHasBeenViewed = true;
  }
  
  public final boolean aC()
  {
    if (mId == null) {
      return false;
    }
    return mId.endsWith("BRAND_SNAP");
  }
  
  public final boolean aD()
  {
    return mAdPlacementMetadata != null;
  }
  
  public final String aa()
  {
    return "STORIES";
  }
  
  public String ap()
  {
    if (mNeedsAuth) {
      return bal.b("/bq/auth_story_blob") + "/bq/auth_story_blob";
    }
    bgr.a();
    bgr.d();
    return mMediaUrl;
  }
  
  public String aq()
  {
    return null;
  }
  
  public int ar()
  {
    return 0;
  }
  
  @chd
  public final String at()
  {
    if (mNeedsAuth) {
      return mId;
    }
    return mThumbnailUrl;
  }
  
  public final boolean au()
  {
    if (axo.MY_STORY_SNAP_THUMBNAIL_CACHE.d(mClientId)) {}
    String str;
    do
    {
      return true;
      str = at();
    } while ((!TextUtils.isEmpty(str)) && (axo.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.d(str)));
    return false;
  }
  
  /* Error */
  public final aza av()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 201	akl:mThumbnailIv	Ljava/lang/String;
    //   6: invokestatic 330	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +15 -> 24
    //   12: new 366	azi
    //   15: dup
    //   16: invokespecial 367	azi:<init>	()V
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: new 369	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   27: dup
    //   28: aload_0
    //   29: getfield 196	akl:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: getfield 201	akl:mThumbnailIv	Ljava/lang/String;
    //   36: invokespecial 372	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: astore_1
    //   40: goto -20 -> 20
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	akl
    //   19	21	1	localObject1	Object
    //   43	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	43	finally
    //   24	40	43	finally
  }
  
  public final ays aw()
  {
    return new ays(mMediaKey, mMediaIv, mThumbnailIv);
  }
  
  public final String ax()
  {
    if (mNeedsAuth) {
      return as();
    }
    bgr.a();
    bgr.d();
    return mThumbnailUrl;
  }
  
  public final boolean ay()
  {
    return System.currentTimeMillis() > mExpirationTimestamp;
  }
  
  public final void az()
  {
    mExpirationTimestamp = (System.currentTimeMillis() + mTimeToExpiration);
  }
  
  public final String b(Context paramContext)
  {
    long l = new Date().getTime();
    String str2 = DateUtils.getRelativeTimeSpanString(mTimestamp, Long.valueOf(l).longValue(), 60000L).toString();
    String str1;
    if (!str2.equals("0 minutes ago"))
    {
      str1 = str2;
      if (!str2.equals("in 0 minutes")) {}
    }
    else
    {
      str1 = paramContext.getString(2131493208);
    }
    return str1;
  }
  
  @chd
  public final String d()
  {
    return super.d();
  }
  
  public final void e(boolean paramBoolean)
  {
    int i = 1;
    mViewedTimestamp = new Date().getTime();
    mIsTimerRunning = false;
    c(false);
    mHasBeenViewed = true;
    mWasOpened = true;
    mClientSnapStatus = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;
    Map localMap;
    if (paramBoolean)
    {
      localMap = gmStoryViewRecordsSinceLastServerChange;
      if (!ao()) {
        break label89;
      }
    }
    for (;;)
    {
      localMap.put(super.d(), new akm(super.d(), F(), i));
      return;
      label89:
      i = 0;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof akl)) {
      return false;
    }
    paramObject = (akl)paramObject;
    return mClientId.equals(mClientId);
  }
  
  public final boolean f()
  {
    return !mIsLoading;
  }
  
  public int hashCode()
  {
    return mClientId.hashCode();
  }
  
  public String i()
  {
    return mId;
  }
  
  public final String j()
  {
    return mUsername;
  }
  
  public final void o()
  {
    avy.a(akp.g(), this, false);
  }
}

/* Location:
 * Qualified Name:     akl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */