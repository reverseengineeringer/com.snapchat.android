import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class biq
  extends bii
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
    if (!(paramObject instanceof biq)) {
      return false;
    }
    paramObject = (biq)paramObject;
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
 * Qualified Name:     biq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */