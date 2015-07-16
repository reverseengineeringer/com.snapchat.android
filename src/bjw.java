import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjw
{
  @SerializedName("hostname")
  protected String hostname;
  @SerializedName("port")
  protected Integer port;
  
  public final String a()
  {
    return hostname;
  }
  
  public final Integer b()
  {
    return port;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjw)) {
      return false;
    }
    paramObject = (bjw)paramObject;
    return new EqualsBuilder().append(hostname, hostname).append(port, port).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(hostname).append(port).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */