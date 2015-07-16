import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bli
{
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("object")
  protected biu object;
  
  public final biu a()
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
    if (!(paramObject instanceof bli)) {
      return false;
    }
    paramObject = (bli)paramObject;
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
 * Qualified Name:     bli
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */