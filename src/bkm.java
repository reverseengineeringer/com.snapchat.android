import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkm
{
  @SerializedName("needs_auth")
  protected Boolean needsAuth;
  @SerializedName("url")
  protected String url;
  
  public final String a()
  {
    return url;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkm)) {
      return false;
    }
    paramObject = (bkm)paramObject;
    return new EqualsBuilder().append(needsAuth, needsAuth).append(url, url).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(needsAuth).append(url).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */