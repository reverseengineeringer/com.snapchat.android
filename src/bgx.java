import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bgx
{
  @SerializedName("conversations_response")
  protected List<bhd> conversationsResponse;
  @SerializedName("conversations_response_info")
  protected bho conversationsResponseInfo;
  @SerializedName("discover")
  protected bhr discover;
  @SerializedName("friends_response")
  protected bhx friendsResponse;
  @SerializedName("identity_check_response")
  protected bki identityCheckResponse;
  @SerializedName("messaging_gateway_info")
  protected bil messagingGatewayInfo;
  @SerializedName("server_info")
  protected biw serverInfo;
  @SerializedName("stories_response")
  protected bjf storiesResponse;
  @SerializedName("updates_response")
  protected bjp updatesResponse;
  
  public final biw a()
  {
    return serverInfo;
  }
  
  public final bil b()
  {
    return messagingGatewayInfo;
  }
  
  public final boolean c()
  {
    return messagingGatewayInfo != null;
  }
  
  public final bjp d()
  {
    return updatesResponse;
  }
  
  public final boolean e()
  {
    return updatesResponse != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bgx)) {
      return false;
    }
    paramObject = (bgx)paramObject;
    return new EqualsBuilder().append(serverInfo, serverInfo).append(messagingGatewayInfo, messagingGatewayInfo).append(updatesResponse, updatesResponse).append(friendsResponse, friendsResponse).append(storiesResponse, storiesResponse).append(conversationsResponse, conversationsResponse).append(conversationsResponseInfo, conversationsResponseInfo).append(discover, discover).append(identityCheckResponse, identityCheckResponse).isEquals();
  }
  
  public final bhx f()
  {
    return friendsResponse;
  }
  
  public final bjf g()
  {
    return storiesResponse;
  }
  
  public final List<bhd> h()
  {
    return conversationsResponse;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(serverInfo).append(messagingGatewayInfo).append(updatesResponse).append(friendsResponse).append(storiesResponse).append(conversationsResponse).append(conversationsResponseInfo).append(discover).append(identityCheckResponse).toHashCode();
  }
  
  public final bho i()
  {
    return conversationsResponseInfo;
  }
  
  public final bhr j()
  {
    return discover;
  }
  
  public final bki k()
  {
    return identityCheckResponse;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */