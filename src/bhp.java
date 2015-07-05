import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhp
{
  @SerializedName("lat")
  protected Double lat;
  @SerializedName("long")
  protected Double longValue;
  
  public final Double a()
  {
    return lat;
  }
  
  public final Double b()
  {
    return longValue;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhp)) {
      return false;
    }
    paramObject = (bhp)paramObject;
    return new EqualsBuilder().append(lat, lat).append(longValue, longValue).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(lat).append(longValue).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */