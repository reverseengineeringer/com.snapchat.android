import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Mediabryo;

@uo
public final class acw$a
{
  @SerializedName("data")
  ty data;
  @SerializedName("media_id")
  vc mMediaId;
  @SerializedName("req_token")
  vc mRequestToken;
  @SerializedName("timestamp")
  vc mTimestamp;
  @SerializedName("type")
  vc mType;
  @SerializedName("username")
  vc mUsername;
  
  public acw$a(acw paramacw, String paramString)
  {
    mTimestamp = new vc(paramString);
    mRequestToken = new vc(pj.a(paramString));
    mUsername = new vc(akr.l());
    mMediaId = new vc(amClientId);
    mType = new vc(Integer.toString(4));
    data = new ty(acw.b(paramacw));
  }
}

/* Location:
 * Qualified Name:     acw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */