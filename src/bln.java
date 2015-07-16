import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bln
{
  @SerializedName("error_message")
  protected String errorMessage;
  @SerializedName("requested_username")
  protected String requestedUsername;
  @SerializedName("suggestions")
  protected List<String> suggestions;
  
  public final String a()
  {
    return errorMessage;
  }
  
  public final String b()
  {
    return requestedUsername;
  }
  
  public final List<String> c()
  {
    return suggestions;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bln)) {
      return false;
    }
    paramObject = (bln)paramObject;
    return new EqualsBuilder().append(errorMessage, errorMessage).append(requestedUsername, requestedUsername).append(suggestions, suggestions).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(errorMessage).append(requestedUsername).append(suggestions).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */