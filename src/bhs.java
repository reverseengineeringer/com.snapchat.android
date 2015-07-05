import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhs
  extends bii
{
  @SerializedName("error_id")
  protected String errorId;
  @SerializedName("message")
  protected String message;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhs)) {
      return false;
    }
    paramObject = (bhs)paramObject;
    return new EqualsBuilder().append(message, message).append(errorId, errorId).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(message).append(errorId).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */