import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjl
{
  @SerializedName("gateway_auth_token")
  protected bjy gatewayAuthToken;
  @SerializedName("gateway_server")
  protected String gatewayServer;
  
  public final bjy a()
  {
    return gatewayAuthToken;
  }
  
  public final void a(String paramString)
  {
    gatewayServer = paramString;
  }
  
  public final String b()
  {
    return gatewayServer;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjl)) {
      return false;
    }
    paramObject = (bjl)paramObject;
    return new EqualsBuilder().append(gatewayAuthToken, gatewayAuthToken).append(gatewayServer, gatewayServer).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(gatewayAuthToken).append(gatewayServer).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */