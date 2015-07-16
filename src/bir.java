import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bir
{
  @SerializedName("compatibility")
  protected String compatibility;
  @SerializedName("get_channels")
  protected String getChannels;
  @SerializedName("resource_parameter_name")
  protected String resourceParameterName;
  @SerializedName("resource_parameter_value")
  protected String resourceParameterValue;
  @SerializedName("video_catalog")
  protected String videoCatalog;
  
  public final String a()
  {
    return getChannels;
  }
  
  public final String b()
  {
    return videoCatalog;
  }
  
  public final String c()
  {
    return resourceParameterName;
  }
  
  public final String d()
  {
    return resourceParameterValue;
  }
  
  public final String e()
  {
    return compatibility;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bir)) {
      return false;
    }
    paramObject = (bir)paramObject;
    return new EqualsBuilder().append(getChannels, getChannels).append(videoCatalog, videoCatalog).append(resourceParameterName, resourceParameterName).append(resourceParameterValue, resourceParameterValue).append(compatibility, compatibility).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(getChannels).append(videoCatalog).append(resourceParameterName).append(resourceParameterValue).append(compatibility).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */