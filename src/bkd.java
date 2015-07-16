import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkd
  extends bhy
{
  @SerializedName("image")
  protected String image;
  @SerializedName("type")
  protected String type;
  
  public final bkd a(String paramString)
  {
    image = paramString;
    return this;
  }
  
  public final bkd b(String paramString)
  {
    type = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkd)) {
      return false;
    }
    paramObject = (bkd)paramObject;
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
 * Qualified Name:     bkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */