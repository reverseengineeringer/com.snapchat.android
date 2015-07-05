import com.google.gson.annotations.SerializedName;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjr
{
  @SerializedName("ad_insertion_config")
  protected bjq adInsertionConfig;
  @SerializedName("ad_request_config")
  protected bjs adRequestConfig;
  @SerializedName("ad_unit_id")
  protected String adUnitId;
  @SerializedName("targeting_parameters")
  protected Map<String, String> targetingParameters;
  
  public final bjq a()
  {
    return adInsertionConfig;
  }
  
  public final bjs b()
  {
    return adRequestConfig;
  }
  
  public final String c()
  {
    return adUnitId;
  }
  
  public final Map<String, String> d()
  {
    return targetingParameters;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjr)) {
      return false;
    }
    paramObject = (bjr)paramObject;
    return new EqualsBuilder().append(adInsertionConfig, adInsertionConfig).append(adRequestConfig, adRequestConfig).append(adUnitId, adUnitId).append(targetingParameters, targetingParameters).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(adInsertionConfig).append(adRequestConfig).append(adUnitId).append(targetingParameters).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */