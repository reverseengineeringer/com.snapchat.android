import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhx
{
  @SerializedName("conversations_response")
  protected List<bid> conversationsResponse;
  @SerializedName("conversations_response_info")
  protected bio conversationsResponseInfo;
  @SerializedName("discover")
  protected bir discover;
  @SerializedName("friends_response")
  protected bix friendsResponse;
  @SerializedName("identity_check_response")
  protected blj identityCheckResponse;
  @SerializedName("messaging_gateway_info")
  protected bjl messagingGatewayInfo;
  @SerializedName("server_info")
  protected bjx serverInfo;
  @SerializedName("stories_response")
  protected bkg storiesResponse;
  @SerializedName("updates_response")
  protected bkq updatesResponse;
  
  public final bjx a()
  {
    return serverInfo;
  }
  
  public final bjl b()
  {
    return messagingGatewayInfo;
  }
  
  public final boolean c()
  {
    return messagingGatewayInfo != null;
  }
  
  public final bkq d()
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
    if (!(paramObject instanceof bhx)) {
      return false;
    }
    paramObject = (bhx)paramObject;
    return new EqualsBuilder().append(serverInfo, serverInfo).append(messagingGatewayInfo, messagingGatewayInfo).append(updatesResponse, updatesResponse).append(friendsResponse, friendsResponse).append(storiesResponse, storiesResponse).append(conversationsResponse, conversationsResponse).append(conversationsResponseInfo, conversationsResponseInfo).append(discover, discover).append(identityCheckResponse, identityCheckResponse).isEquals();
  }
  
  public final bix f()
  {
    return friendsResponse;
  }
  
  public final bkg g()
  {
    return storiesResponse;
  }
  
  public final List<bid> h()
  {
    return conversationsResponse;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(serverInfo).append(messagingGatewayInfo).append(updatesResponse).append(friendsResponse).append(storiesResponse).append(conversationsResponse).append(conversationsResponseInfo).append(discover).append(identityCheckResponse).toHashCode();
  }
  
  public final bio i()
  {
    return conversationsResponseInfo;
  }
  
  public final bir j()
  {
    return discover;
  }
  
  public final blj k()
  {
    return identityCheckResponse;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */