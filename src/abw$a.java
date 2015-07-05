import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Mediabryo;

@ty
public final class abw$a
{
  @SerializedName("data")
  ti data;
  @SerializedName("media_id")
  ul mMediaId;
  @SerializedName("req_token")
  ul mRequestToken;
  @SerializedName("timestamp")
  ul mTimestamp;
  @SerializedName("type")
  ul mType;
  @SerializedName("username")
  ul mUsername;
  
  public abw$a(abw paramabw, String paramString)
  {
    mTimestamp = new ul(paramString);
    mRequestToken = new ul(os.a(paramString));
    mUsername = new ul(ajx.l());
    mMediaId = new ul(amClientId);
    mType = new ul(Integer.toString(4));
    data = new ti(abw.b(paramabw));
  }
}

/* Location:
 * Qualified Name:     abw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */