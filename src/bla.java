import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bla
{
  @SerializedName("renditions")
  protected List<bkz> renditions;
  @SerializedName("type")
  protected String type;
  @SerializedName("url")
  protected String url;
  
  public final String a()
  {
    return type;
  }
  
  public final String b()
  {
    return url;
  }
  
  public final List<bkz> c()
  {
    return renditions;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bla)) {
      return false;
    }
    paramObject = (bla)paramObject;
    return new EqualsBuilder().append(type, type).append(url, url).append(renditions, renditions).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(type).append(url).append(renditions).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */