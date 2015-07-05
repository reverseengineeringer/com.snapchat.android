import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjc
  extends bgy
{
  @SerializedName("image")
  protected String image;
  @SerializedName("type")
  protected String type;
  
  public final bjc a(String paramString)
  {
    image = paramString;
    return this;
  }
  
  public final bjc b(String paramString)
  {
    type = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjc)) {
      return false;
    }
    paramObject = (bjc)paramObject;
    return new EqualsBuilder().append(image, image).append(type, type).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(image).append(type).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */