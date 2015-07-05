import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhe
{
  @SerializedName("messages")
  protected List<bhh> messages;
  @SerializedName("messaging_auth")
  protected bix messagingAuth;
  
  public final bhe a(List<bhh> paramList)
  {
    messages = paramList;
    return this;
  }
  
  public final bix a()
  {
    return messagingAuth;
  }
  
  public final List<bhh> b()
  {
    return messages;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhe)) {
      return false;
    }
    paramObject = (bhe)paramObject;
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
 * Qualified Name:     bhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */