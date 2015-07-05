import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class biz
  extends bjp
{
  @SerializedName("default_username")
  protected String defaultUsername;
  @SerializedName("default_username_status")
  protected Boolean defaultUsernameStatus;
  @SerializedName("dtoken1i")
  protected String dtoken1i;
  @SerializedName("dtoken1v")
  protected String dtoken1v;
  @SerializedName("message")
  protected String message;
  @SerializedName("status")
  protected Integer status;
  @SerializedName("username_suggestions")
  protected List<String> usernameSuggestions;
  
  public final String d()
  {
    return message;
  }
  
  public final Integer e()
  {
    return status;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof biz)) {
      return false;
    }
    paramObject = (biz)paramObject;
    return new EqualsBuilder().append(message, message).append(status, status).append(dtoken1i, dtoken1i).append(dtoken1v, dtoken1v).append(defaultUsername, defaultUsername).append(defaultUsernameStatus, defaultUsernameStatus).append(usernameSuggestions, usernameSuggestions).isEquals();
  }
  
  public final String f()
  {
    return dtoken1i;
  }
  
  public final boolean g()
  {
    return dtoken1i != null;
  }
  
  public final String h()
  {
    return dtoken1v;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(message).append(status).append(dtoken1i).append(dtoken1v).append(defaultUsername).append(defaultUsernameStatus).append(usernameSuggestions).toHashCode();
  }
  
  public final boolean i()
  {
    return dtoken1v != null;
  }
  
  public final String j()
  {
    return defaultUsername;
  }
  
  public final Boolean k()
  {
    return defaultUsernameStatus;
  }
  
  public final List<String> l()
  {
    return usernameSuggestions;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     biz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */