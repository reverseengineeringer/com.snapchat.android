import com.google.gson.annotations.SerializedName;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhv
{
  @SerializedName("ad_unit_id")
  protected String adUnitId;
  @SerializedName("targeting_parameters")
  protected Map<String, String> targetingParameters;
  
  public final String a()
  {
    return adUnitId;
  }
  
  public final Map<String, String> b()
  {
    return targetingParameters;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhv)) {
      return false;
    }
    paramObject = (bhv)paramObject;
    return new EqualsBuilder().append(adUnitId, adUnitId).append(targetingParameters, targetingParameters).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(adUnitId).append(targetingParameters).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */