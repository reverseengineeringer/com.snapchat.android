import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bik
  extends bji
{
  @SerializedName("alternative_server")
  protected bjw alternativeServer;
  @SerializedName("failure_reason")
  protected String failureReason;
  @SerializedName("success")
  protected Boolean success;
  
  public final Boolean a()
  {
    return success;
  }
  
  public final String b()
  {
    return failureReason;
  }
  
  public final bjw c()
  {
    return alternativeServer;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bik)) {
      return false;
    }
    paramObject = (bik)paramObject;
    return new EqualsBuilder().append(success, success).append(failureReason, failureReason).append(alternativeServer, alternativeServer).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(success).append(failureReason).append(alternativeServer).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */