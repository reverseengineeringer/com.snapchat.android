import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkt
{
  @SerializedName("first_position")
  protected Integer firstPosition;
  @SerializedName("minimum_remaining")
  protected Integer minimumRemaining;
  @SerializedName("timeout")
  protected Integer timeout;
  
  public final Integer a()
  {
    return firstPosition;
  }
  
  public final Integer b()
  {
    return minimumRemaining;
  }
  
  public final Integer c()
  {
    return timeout;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkt)) {
      return false;
    }
    paramObject = (bkt)paramObject;
    return new EqualsBuilder().append(firstPosition, firstPosition).append(minimumRemaining, minimumRemaining).append(timeout, timeout).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(firstPosition).append(minimumRemaining).append(timeout).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */