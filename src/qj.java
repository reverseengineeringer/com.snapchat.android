import com.google.gson.annotations.SerializedName;

public final class qj
  extends tx
  implements ui.b<qj.a>
{
  private static final String PATH = "/loq/device_id";
  private static final String TAG = "GetDeviceTokenTask";
  private final ayy mDeviceTokenManager;
  
  public qj()
  {
    this(ayy.a());
  }
  
  private qj(ayy paramayy)
  {
    mDeviceTokenManager = paramayy;
    registerCallback(qj.a.class, this);
  }
  
  protected final String getPath()
  {
    return "/loq/device_id";
  }
  
  public static class a
  {
    @SerializedName("dtoken1i")
    String mTokenId;
    @SerializedName("dtoken1v")
    String mTokenValue;
    
    public String toString()
    {
      return "GetDeviceTokenTask ResponsePayload {dtoken1i=" + mTokenId + ", dtoken1v=" + mTokenValue + "}";
    }
  }
}

/* Location:
 * Qualified Name:     qj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */