import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bis
  extends bji
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
    if (!(paramObject instanceof bis)) {
      return false;
    }
    paramObject = (bis)paramObject;
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
 * Qualified Name:     bis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */