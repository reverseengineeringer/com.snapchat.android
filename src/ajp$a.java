import com.snapchat.android.discover.util.network.DiscoverEndpointManager;
import javax.inject.Provider;

public final class ajp$a
{
  public static final String AD_RESPONSE_CONTENT_TYPE_PARAM = "type";
  public static final String AD_RESPONSE_DURATION_PARAM = "duration";
  public static final String AD_RESPONSE_IMAGE_MEDIA_TYPE = "image";
  public static final String AD_RESPONSE_MEDIA_ZIPPED_WITH_OVERLAY_PARAM = "media_zipped_with_overlay";
  private static final String ONLY_MEDIA_PARAM = "only_download_raw_media";
  private static final String ONLY_MEDIA_VALUE = "true";
  public final DiscoverEndpointManager mDiscoverConfiguration;
  public final Provider<String> mEndpointProvider;
  
  public ajp$a()
  {
    this(new bfq(), DiscoverEndpointManager.a());
  }
  
  private ajp$a(Provider<String> paramProvider, DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    mDiscoverConfiguration = paramDiscoverEndpointManager;
    mEndpointProvider = paramProvider;
  }
}

/* Location:
 * Qualified Name:     ajp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */