import android.content.Context;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.controller.stories.StoryLoadingContext;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.PostStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snap.ClientSnapStatus;
import com.snapchat.android.model.chat.ChatFeedItem;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

public class ajr
  extends aje
{
  private static final String AUTH_STORY_DOWNLOAD_ENDPOINT = "/bq/auth_story_blob";
  private static final String AUTH_THUMBNAIL_DOWNLOAD_ENDPOINT = "/bq/auth_story_thumbnails";
  private static final String TAG = "StorySnap";
  private bgv mAdPlacementMetadata;
  private String mCacheKeyOverride;
  public boolean mCanAdFollow;
  public bgz mCaptionParameters;
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
  public bje mSponsoredStoryMetadata;
  public String mStoryFilterId;
  public String mStoryId;
  private String mThumbnailIv;
  private String mThumbnailUrl;
  private long mTimeToExpiration;
  public String mUsername;
  public boolean mWas404ResponseReceived;
  
  public ajr()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public ajr(aim paramaim, String paramString1, String paramString2)
  {
    this();
    mStoryId = paramString1;
    mUsername = paramString2;
    mClientId = mClientId;
    mCaptionText = mCaptionText;
    mMediaType = paramaim.h();
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
  
  public ajr(bjg parambjg)
  {
    this();
    mHasMatureContent = aud.a(parambjg.c());
    mUsername = parambjg.b();
    mId = parambjg.a();
    mClientId = parambjg.d();
    mMediaId = parambjg.f();
    mTimestamp = parambjg.e().longValue();
    mMediaType = parambjg.l().intValue();
    mMediaUrl = parambjg.h();
    mMediaIv = parambjg.i();
    mMediaKey = parambjg.g();
    mThumbnailIv = parambjg.j();
    mThumbnailUrl = parambjg.k();
    mCanonicalDisplayTime = parambjg.m().doubleValue();
    mCaptionParameters = parambjg.p();
    if (mCaptionParameters != null)
    {
      if (mCaptionParameters.c()) {
        mCaptionOrientation = mCaptionParameters.b().longValue();
      }
      if (mCaptionParameters.e()) {
        mCaptionPosition = mCaptionParameters.d().doubleValue();
      }
    }
    mCaptionText = parambjg.o();
    mZipped = parambjg.q().booleanValue();
    mFilterId = parambjg.r();
    mIsShared = aud.a(parambjg.u());
    mNeedsAuth = aud.a(parambjg.w());
    mCanAdFollow = aud.a(parambjg.x());
    mTimeToExpiration = parambjg.n().longValue();
    mAdPlacementMetadata = parambjg.v();
    mSponsoredStoryMetadata = parambjg.t();
    mStoryFilterId = parambjg.s();
  }
  
  public ajr(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, int paramInt1, String paramString4, String paramString5, Snap.ClientSnapStatus paramClientSnapStatus, String paramString6, int paramInt2, String paramString7, long paramLong3, double paramDouble, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString8, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, boolean paramBoolean8, long paramLong4, String paramString9)
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
    mCaptionParameters = new bgz().a(Long.valueOf(paramLong3)).a(Double.valueOf(paramDouble)).a(paramString7);
    mCaptionOrientation = paramLong3;
    mCaptionPosition = paramDouble;
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
    mExpirationTimestamp = paramLong4;
    mStoryFilterId = paramString9;
  }
  
  private ajr(@cgb String paramString1, @cgb String paramString2, boolean paramBoolean)
  {
    this();
    mUsername = ((String)ck.a(paramString1));
    mClientId = ((String)ck.a(paramString2));
    mIsShared = paramBoolean;
  }
  
  public ajr(@cgb String paramString, boolean paramBoolean)
  {
    this(paramString, UUID.randomUUID().toString(), paramBoolean);
  }
  
  public static String au()
  {
    return azm.b("/bq/auth_story_thumbnails") + "/bq/auth_story_thumbnails";
  }
  
  @cgc
  public final awy I()
  {
    if (!TextUtils.isEmpty(mClientId))
    {
      if (awq.MY_SNAP_IMAGE_CACHE.d(mClientId)) {
        return new awy(awq.MY_SNAP_IMAGE_CACHE, mClientId, null);
      }
      if (awq.MY_SNAP_IMAGE_CACHE.d(mClientId + "-unzippedbitmap")) {
        return new awy(awq.MY_SNAP_IMAGE_CACHE, mClientId + "-unzippedbitmap", null);
      }
    }
    String str = i();
    if ((str != null) && (awq.STORY_RECEIVED_IMAGE_CACHE.d(str))) {
      return new awy(awq.STORY_RECEIVED_IMAGE_CACHE, str, K());
    }
    return null;
  }
  
  @cgc
  public final awy J()
  {
    if (awq.MY_SNAP_VIDEO_CACHE.d(mClientId)) {
      return new awy(awq.MY_SNAP_VIDEO_CACHE, mClientId, null);
    }
    String str = i();
    if ((str != null) && (awq.STORY_RECEIVED_VIDEO_CACHE.d(str))) {
      return new awy(awq.STORY_RECEIVED_VIDEO_CACHE, str, K());
    }
    return null;
  }
  
  /* Error */
  public final ayc K()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 195	ajr:mMediaIv	Ljava/lang/String;
    //   6: invokestatic 379	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +15 -> 24
    //   12: new 414	ayk
    //   15: dup
    //   16: invokespecial 415	ayk:<init>	()V
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: new 417	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   27: dup
    //   28: aload_0
    //   29: getfield 201	ajr:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: getfield 195	ajr:mMediaIv	Ljava/lang/String;
    //   36: invokespecial 420	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: astore_1
    //   40: goto -20 -> 20
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	ajr
    //   19	21	1	localObject1	Object
    //   43	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	43	finally
    //   24	40	43	finally
  }
  
  public boolean L()
  {
    if (mMediaType == 0) {
      if (I() == null) {}
    }
    while (J() != null)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean M()
  {
    if (mWas404ResponseReceived) {}
    while ((ai()) && (axa.sExternalCacheDirectory == null)) {
      return true;
    }
    return super.M();
  }
  
  public final long U()
  {
    if (mCaptionParameters == null) {
      return mCaptionOrientation;
    }
    return mCaptionParameters.b().longValue();
  }
  
  public final double V()
  {
    if (mCaptionParameters == null) {
      return mCaptionPosition;
    }
    return mCaptionParameters.d().doubleValue();
  }
  
  public final long W()
  {
    return mTimestamp;
  }
  
  public boolean Y()
  {
    return false;
  }
  
  protected final int a(int paramInt)
  {
    if (aw()) {
      return paramInt;
    }
    return Math.min(paramInt, 10);
  }
  
  public final int a(ChatFeedItem paramChatFeedItem)
  {
    return Long.valueOf(mTimestamp).compareTo(Long.valueOf(paramChatFeedItem.W())) * -1;
  }
  
  public final void a(axu paramaxu)
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
      paramaxu = finally;
      throw paramaxu;
    }
  }
  
  /* Error */
  public final ayc aA()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 206	ajr:mThumbnailIv	Ljava/lang/String;
    //   6: invokestatic 379	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   9: ifeq +15 -> 24
    //   12: new 414	ayk
    //   15: dup
    //   16: invokespecial 415	ayk:<init>	()V
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: new 417	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm
    //   27: dup
    //   28: aload_0
    //   29: getfield 201	ajr:mMediaKey	Ljava/lang/String;
    //   32: aload_0
    //   33: getfield 206	ajr:mThumbnailIv	Ljava/lang/String;
    //   36: invokespecial 420	com/snapchat/android/util/crypto/CbcEncryptionAlgorithm:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: astore_1
    //   40: goto -20 -> 20
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	ajr
    //   19	21	1	localObject1	Object
    //   43	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	43	finally
    //   24	40	43	finally
  }
  
  public final axu aB()
  {
    return new axu(mMediaKey, mMediaIv, mThumbnailIv);
  }
  
  public final String aC()
  {
    if (mNeedsAuth) {
      return au();
    }
    bfr.a();
    bfr.d();
    return mThumbnailUrl;
  }
  
  public final boolean aD()
  {
    return System.currentTimeMillis() > mExpirationTimestamp;
  }
  
  public final void aE()
  {
    mExpirationTimestamp = (System.currentTimeMillis() + mTimeToExpiration);
  }
  
  public final boolean aF()
  {
    return (!mFailed) && (mId == null);
  }
  
  public final void aG()
  {
    mWas404ResponseReceived = true;
    mHasBeenViewed = true;
  }
  
  public final boolean aH()
  {
    if (mId == null)
    {
      Timber.f("StorySnap", "Attempting to check if snap is a brand snap when id is null", new Object[0]);
      return false;
    }
    return mId.endsWith("BRAND_SNAP");
  }
  
  public final boolean aI()
  {
    return mAdPlacementMetadata != null;
  }
  
  public boolean ab()
  {
    return false;
  }
  
  public final String ac()
  {
    return "STORIES";
  }
  
  public String ar()
  {
    if (mNeedsAuth) {
      return azm.b("/bq/auth_story_blob") + "/bq/auth_story_blob";
    }
    bfr.a();
    bfr.d();
    return mMediaUrl;
  }
  
  public String as()
  {
    return null;
  }
  
  public int at()
  {
    return 0;
  }
  
  @cgc
  public final String av()
  {
    if (mNeedsAuth) {
      return mId;
    }
    return mThumbnailUrl;
  }
  
  public final boolean aw()
  {
    return mSponsoredStoryMetadata != null;
  }
  
  @cgc
  public final String ax()
  {
    if (mSponsoredStoryMetadata != null)
    {
      if (((D()) || (A())) && (!TextUtils.isEmpty(mSponsoredStoryMetadata.b()))) {
        return mSponsoredStoryMetadata.b();
      }
      return mSponsoredStoryMetadata.a();
    }
    return null;
  }
  
  public final void ay()
  {
    mHasBeenViewed = false;
    mWasOpened = false;
    mClientSnapStatus = Snap.ClientSnapStatus.UNVIEWED_AND_LOADED;
  }
  
  public final boolean az()
  {
    if (awq.MY_STORY_SNAP_THUMBNAIL_CACHE.d(mClientId)) {}
    String str;
    do
    {
      return true;
      str = av();
    } while ((!TextUtils.isEmpty(str)) && (awq.STORY_SNAP_RECEIVED_THUMBNAIL_CACHE.d(str)));
    return false;
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
  
  @cgc
  public final String d()
  {
    return super.d();
  }
  
  public final void e(boolean paramBoolean)
  {
    mViewedTimestamp = new Date().getTime();
    mIsTimerRunning = false;
    c(false);
    mHasBeenViewed = true;
    mWasOpened = true;
    Object localObject;
    if (aw())
    {
      localObject = Snap.ClientSnapStatus.VIEWED_AND_REPLAY_AVAILABLE;
      mClientSnapStatus = ((Snap.ClientSnapStatus)localObject);
      if (paramBoolean)
      {
        localObject = gmStoryViewRecordsSinceLastServerChange;
        if (!aq()) {
          break label105;
        }
      }
    }
    label105:
    for (int i = 1;; i = 0)
    {
      ((Map)localObject).put(super.d(), new ajs(super.d(), E(), i));
      return;
      localObject = Snap.ClientSnapStatus.RECEIVED_AND_VIEWED;
      break;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ajr)) {
      return false;
    }
    paramObject = (ajr)paramObject;
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
    if (!TextUtils.isEmpty(mCacheKeyOverride)) {
      return mCacheKeyOverride;
    }
    return mId;
  }
  
  public final String j()
  {
    return mUsername;
  }
  
  public final void o()
  {
    ava.a(ajv.g(), this, false);
  }
  
  public final boolean z()
  {
    return mHasBeenViewed;
  }
}

/* Location:
 * Qualified Name:     ajr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */