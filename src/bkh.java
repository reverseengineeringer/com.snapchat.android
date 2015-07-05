import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkh
{
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("object")
  protected bhu object;
  
  public final bhu a()
  {
    return object;
  }
  
  public final String b()
  {
    return message;
  }
  
  public final Boolean c()
  {
    return logged;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkh)) {
      return false;
    }
    paramObject = (bkh)paramObject;
    return new EqualsBuilder().append(object, object).append(message, message).append(logged, logged).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(object).append(message).append(logged).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */