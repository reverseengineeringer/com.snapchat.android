import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class blg
{
  @SerializedName("nearby_snapchatters")
  protected List<bll> nearbySnapchatters;
  @SerializedName("polling_interval_millis")
  protected Long pollingIntervalMillis = Long.valueOf(1000L);
  
  public final Long a()
  {
    return pollingIntervalMillis;
  }
  
  public final List<bll> b()
  {
    return nearbySnapchatters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blg)) {
      return false;
    }
    paramObject = (blg)paramObject;
    return new EqualsBuilder().append(pollingIntervalMillis, pollingIntervalMillis).append(nearbySnapchatters, nearbySnapchatters).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(pollingIntervalMillis).append(nearbySnapchatters).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     blg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */