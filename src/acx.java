import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;
import com.snapchat.android.discover.util.network.DiscoverEndpointManager;

public final class acx
  extends tw
  implements ui.b<acx.b>
{
  private static final String TAG = "ValidateDSnapTask";
  private final acx.a mCallback;
  private final String mDSnapId;
  private final DiscoverEndpointManager mDiscoverEndpointManager;
  private final String mEditionId;
  private final String mId;
  private final String mPublisherInternationalName;
  
  public acx(String paramString1, @chc String paramString2, String paramString3, String paramString4, @chc acx.a parama)
  {
    this(paramString1, paramString2, paramString3, paramString4, parama, DiscoverEndpointManager.a());
  }
  
  private acx(String paramString1, @chc String paramString2, String paramString3, String paramString4, @chc acx.a parama, DiscoverEndpointManager paramDiscoverEndpointManager)
  {
    mId = paramString1;
    mDSnapId = paramString2;
    mEditionId = paramString3;
    mPublisherInternationalName = paramString4;
    mCallback = parama;
    mDiscoverEndpointManager = paramDiscoverEndpointManager;
    registerCallback(acx.b.class, this);
  }
  
  public final HttpMethod getMethod()
  {
    return HttpMethod.GET;
  }
  
  public final String getPath()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("dsnap_id", mDSnapId);
    String str = mDiscoverEndpointManager.b();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int i;
    int j;
    if (str != null)
    {
      i = str.indexOf("region=");
      localObject1 = localObject2;
      if (i > 0)
      {
        i += 7;
        j = str.indexOf('&', i);
        if (j <= 0) {
          break label104;
        }
      }
    }
    label104:
    for (localObject1 = str.substring(i, j);; localObject1 = str.substring(i))
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        localBundle.putString("region", (String)localObject1);
      }
      return auo.a("/discover/linkable_check", localBundle);
    }
  }
  
  public final Object getRequestPayload()
  {
    return null;
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, int paramInt, bku parambku, bkw parambkw);
  }
  
  public static class b
  {
    @SerializedName("ad_type")
    int mAdType;
    @SerializedName("chunk")
    bkw mArchivedChunkResponse;
    @SerializedName("channel_list")
    bku mChannelListResponse;
    @SerializedName("dsnap_id")
    String mDSnapId;
    @SerializedName("hash")
    String mHash;
    @SerializedName("linkable_state")
    DiscoverLinkStatusResult.LinkStatus mLinkableState;
    @SerializedName("publish_ts")
    long mPublishedTimestamp;
    @SerializedName("reason")
    String mReason;
  }
}

/* Location:
 * Qualified Name:     acx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */