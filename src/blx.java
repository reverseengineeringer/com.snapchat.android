import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class blx
{
  @SerializedName("id")
  protected String id;
  @SerializedName("name")
  protected String name;
  @SerializedName("properties")
  protected blw properties;
  @SerializedName("type")
  protected String type;
  
  public final String a()
  {
    return type;
  }
  
  public final blw b()
  {
    return properties;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blx)) {
      return false;
    }
    paramObject = (blx)paramObject;
    return new EqualsBuilder().append(id, id).append(name, name).append(type, type).append(properties, properties).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(name).append(type).append(properties).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     blx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */