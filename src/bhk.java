import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhk
  extends bii
{
  @SerializedName("alternative_server")
  protected biv alternativeServer;
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
  
  public final biv c()
  {
    return alternativeServer;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhk)) {
      return false;
    }
    paramObject = (bhk)paramObject;
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
 * Qualified Name:     bhk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */