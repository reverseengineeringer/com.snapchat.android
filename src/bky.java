import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bky
{
  @SerializedName("channels")
  protected List<bku> channels;
  @SerializedName("id")
  protected String id;
  @SerializedName("name")
  protected String name;
  @SerializedName("properties")
  protected Map<String, String> properties;
  @SerializedName("type")
  protected String type;
  
  public final String a()
  {
    return type;
  }
  
  public final Map<String, String> b()
  {
    return properties;
  }
  
  public final List<bku> c()
  {
    return channels;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bky)) {
      return false;
    }
    paramObject = (bky)paramObject;
    return new EqualsBuilder().append(id, id).append(name, name).append(type, type).append(properties, properties).append(channels, channels).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(name).append(type).append(properties).append(channels).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */