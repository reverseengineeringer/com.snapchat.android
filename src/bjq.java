import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjq
  extends bji
{
  @SerializedName("ping_id")
  protected String pingId;
  
  public final String a()
  {
    return pingId;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjq)) {
      return false;
    }
    paramObject = (bjq)paramObject;
    return new EqualsBuilder().append(pingId, pingId).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(pingId).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */