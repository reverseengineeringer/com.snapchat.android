import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjy
{
  @SerializedName("mac")
  protected String mac;
  @SerializedName("payload")
  protected String payload;
  
  public final String a()
  {
    return payload;
  }
  
  public final String b()
  {
    return mac;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjy)) {
      return false;
    }
    paramObject = (bjy)paramObject;
    return new EqualsBuilder().append(payload, payload).append(mac, mac).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(payload).append(mac).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */