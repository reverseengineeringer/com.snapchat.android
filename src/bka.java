import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bka
  extends bgy
{
  @SerializedName("last_updated")
  protected Long lastUpdated = Long.valueOf(0L);
  
  public final bka a(Long paramLong)
  {
    lastUpdated = paramLong;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bka)) {
      return false;
    }
    paramObject = (bka)paramObject;
    return new EqualsBuilder().append(lastUpdated, lastUpdated).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(lastUpdated).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */