import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkk
{
  @SerializedName("display_name")
  protected String displayName;
  @SerializedName("distance")
  protected Double distance;
  @SerializedName("user_id")
  protected String userId;
  @SerializedName("username")
  protected String username;
  
  public final String a()
  {
    return userId;
  }
  
  public final String b()
  {
    return username;
  }
  
  public final String c()
  {
    return displayName;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkk)) {
      return false;
    }
    paramObject = (bkk)paramObject;
    return new EqualsBuilder().append(userId, userId).append(username, username).append(displayName, displayName).append(distance, distance).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(userId).append(username).append(displayName).append(distance).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */