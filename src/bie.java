import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bie
{
  @SerializedName("messages")
  protected List<bih> messages;
  @SerializedName("messaging_auth")
  protected bjy messagingAuth;
  
  public final bie a(List<bih> paramList)
  {
    messages = paramList;
    return this;
  }
  
  public final bjy a()
  {
    return messagingAuth;
  }
  
  public final List<bih> b()
  {
    return messages;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bie)) {
      return false;
    }
    paramObject = (bie)paramObject;
    return new EqualsBuilder().append(messagingAuth, messagingAuth).append(messages, messages).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(messagingAuth).append(messages).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */