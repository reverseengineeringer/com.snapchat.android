import android.text.TextUtils;
import com.snapchat.android.ads.AdResolutionState;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import javax.inject.Provider;

public final class ajp
  extends ajr
{
  private static final String TAG = "StoryAdSnap";
  public final String mAdKey;
  public final int mAdPosition;
  public final AdResolutionState mAdResolutionState;
  private final String mCacheKey;
  private final String mMediaUrl;
  public final mo mResponse;
  
  public ajp(@cgb ajr paramajr, @cgb mo parammo, @cgb AdResolutionState paramAdResolutionState)
  {
    this(paramajr, parammo, paramAdResolutionState, null, null, null, 0, 0, false, 0);
  }
  
  public ajp(@cgb ajr paramajr, @cgb mo parammo, @cgb AdResolutionState paramAdResolutionState, @cgc String paramString1, @cgc String paramString2, @cgc String paramString3, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    super(mUsername, mIsShared);
    mResponse = parammo;
    mAdResolutionState = paramAdResolutionState;
    mMediaUrl = paramString1;
    mCacheKey = paramString2;
    mAdKey = paramString3;
    mAdPosition = paramInt1;
    e(paramInt2);
    b(paramBoolean);
    b(paramInt3);
  }
  
  public final boolean L()
  {
    if ((mAdResolutionState == AdResolutionState.UNRESOLVED) || (mAdResolutionState == AdResolutionState.AD_CONSUMED) || (mAdResolutionState == AdResolutionState.RESOLVING)) {
      return false;
    }
    return super.L();
  }
  
  public final boolean M()
  {
    if (mAdResolutionState.isError()) {
      return true;
    }
    return super.M();
  }
  
  public final boolean Y()
  {
    return true;
  }
  
  public final AdResolutionState Z()
  {
    return mAdResolutionState;
  }
  
  public final String aa()
  {
    return ci.a(getClass()).a("sender", mUsername).a("url", mMediaUrl).a("adKey", mAdKey).a("adPosition", mAdPosition).a("resolution", mAdResolutionState).a("cacheKey", i()).a("loaded", L()).a("loading", R()).a("unableToLoad", M()).toString();
  }
  
  public final boolean ab()
  {
    return true;
  }
  
  public final String ar()
  {
    return mMediaUrl;
  }
  
  @cgc
  public final String as()
  {
    return mAdKey;
  }
  
  public final int at()
  {
    return mAdPosition;
  }
  
  public final boolean e()
  {
    return true;
  }
  
  public final String i()
  {
    if (TextUtils.isEmpty(mCacheKey)) {
      return null;
    }
    return mCacheKey;
  }
  
  public final String toString()
  {
    return ci.a(this).a("sender", mUsername).a("url", mMediaUrl).a("adKey", mAdKey).a("adPosition", mAdPosition).a("resolution", mAdResolutionState).toString();
  }
  
  public static final class a
  {
    public static final String AD_RESPONSE_CONTENT_TYPE_PARAM = "type";
    public static final String AD_RESPONSE_DURATION_PARAM = "duration";
    public static final String AD_RESPONSE_IMAGE_MEDIA_TYPE = "image";
    public static final String AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM = "media_zipped_with_overlay";
    private static final String ONLY_MEDIA_PARAM = "only_download_raw_media";
    private static final String ONLY_MEDIA_VALUE = "true";
    public final DiscoverEndpointManager mDiscoverConfiguration;
    public final Provider<String> mEndpointProvider;
    
    public a()
    {
      this(new bfq(), DiscoverEndpointManager.a());
    }
    
    private a(Provider<String> paramProvider, DiscoverEndpointManager paramDiscoverEndpointManager)
    {
      mDiscoverConfiguration = paramDiscoverEndpointManager;
      mEndpointProvider = paramProvider;
    }
  }
}

/* Location:
 * Qualified Name:     ajp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */