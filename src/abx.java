import android.os.Bundle;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.framework.HttpMethod;
import com.snapchat.android.discover.model.server.DiscoverLinkStatusResult.LinkStatus;

public final class abx
  extends tg
  implements ts.b<abx.b>
{
  private static final String TAG = "ValidateDSnapTask";
  private final abx.a mCallback;
  private final String mDSnapId;
  private final String mEditionId;
  private final String mId;
  private final String mPublisherInternationalName;
  
  public abx(String paramString1, @cgb String paramString2, String paramString3, String paramString4, @cgb abx.a parama)
  {
    mId = paramString1;
    mDSnapId = paramString2;
    mEditionId = paramString3;
    mPublisherInternationalName = paramString4;
    mCallback = parama;
    a(abx.b.class, this);
  }
  
  public final Object b()
  {
    return null;
  }
  
  public final HttpMethod c()
  {
    return HttpMethod.GET;
  }
  
  public final String d()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("dsnap_id", mDSnapId);
    return atq.a("/discover/linkable_check", localBundle);
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong, DiscoverLinkStatusResult.LinkStatus paramLinkStatus, int paramInt, bjt parambjt, bjv parambjv);
  }
  
  public static class b
  {
    @SerializedName("ad_type")
    int mAdType;
    @SerializedName("chunk")
    bjv mArchivedChunkResponse;
    @SerializedName("channel_list")
    bjt mChannelListResponse;
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
 * Qualified Name:     abx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */