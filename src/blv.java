import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class blv
{
  @SerializedName("id")
  protected String id;
  @SerializedName("items")
  protected List<blx> items;
  @SerializedName("items_v2")
  protected List<blx> itemsV2;
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
  
  public final boolean b()
  {
    return properties != null;
  }
  
  public final List<blx> c()
  {
    return itemsV2;
  }
  
  public final boolean d()
  {
    return itemsV2 != null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blv)) {
      return false;
    }
    paramObject = (blv)paramObject;
    return new EqualsBuilder().append(id, id).append(name, name).append(type, type).append(properties, properties).append(items, items).append(itemsV2, itemsV2).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(name).append(type).append(properties).append(items).append(itemsV2).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     blv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */