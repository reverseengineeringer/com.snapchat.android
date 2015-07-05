import com.google.gson.annotations.SerializedName;

public final class ps
  extends th
  implements ts.b<ps.a>
{
  private static final String PATH = "/loq/device_id";
  private static final String TAG = "GetDeviceTokenTask";
  private final aya mDeviceTokenManager;
  
  public ps()
  {
    this(aya.a());
  }
  
  private ps(aya paramaya)
  {
    mDeviceTokenManager = paramaya;
    a(ps.a.class, this);
  }
  
  protected final String d()
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
 * Qualified Name:     ps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */