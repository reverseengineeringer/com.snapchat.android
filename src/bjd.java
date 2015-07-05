import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjd
{
  @SerializedName("action")
  protected String action;
  @SerializedName("fallback_message")
  protected String fallbackMessage;
  @SerializedName("friend_action_status")
  protected String friendActionStatus;
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("object")
  protected bhu object;
  @SerializedName("username")
  protected String username;
  
  public final String a()
  {
    return action;
  }
  
  public final String b()
  {
    return message;
  }
  
  public final String c()
  {
    return fallbackMessage;
  }
  
  public final bhu d()
  {
    return object;
  }
  
  public final String e()
  {
    return friendActionStatus;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjd)) {
      return false;
    }
    paramObject = (bjd)paramObject;
    return new EqualsBuilder().append(action, action).append(message, message).append(fallbackMessage, fallbackMessage).append(username, username).append(object, object).append(friendActionStatus, friendActionStatus).append(logged, logged).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(action).append(message).append(fallbackMessage).append(username).append(object).append(friendActionStatus).append(logged).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */