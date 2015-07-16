import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bld
  extends bhy
{
  @SerializedName("size")
  protected String size;
  @SerializedName("username_image")
  protected String usernameImage;
  
  public final bld a(String paramString)
  {
    size = paramString;
    return this;
  }
  
  public final bld b(String paramString)
  {
    usernameImage = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bld)) {
      return false;
    }
    paramObject = (bld)paramObject;
    return new EqualsBuilder().append(size, size).append(usernameImage, usernameImage).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(size).append(usernameImage).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */