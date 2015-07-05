import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkp
{
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("suggested_friend_results")
  protected List<bkn> suggestedFriendResults;
  
  public final List<bkn> a()
  {
    return suggestedFriendResults;
  }
  
  public final boolean b()
  {
    return suggestedFriendResults != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkp)) {
      return false;
    }
    paramObject = (bkp)paramObject;
    return new EqualsBuilder().append(suggestedFriendResults, suggestedFriendResults).append(message, message).append(logged, logged).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(suggestedFriendResults).append(message).append(logged).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */