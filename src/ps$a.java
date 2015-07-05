import com.google.gson.annotations.SerializedName;

public class ps$a
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

/* Location:
 * Qualified Name:     ps.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */