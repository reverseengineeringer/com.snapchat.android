import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkq
{
  @SerializedName("id")
  protected String id;
  @SerializedName("last_login")
  protected Long lastLogin = Long.valueOf(0L);
  @SerializedName("name")
  protected String name;
  
  public final String a()
  {
    return id;
  }
  
  public final String b()
  {
    return name;
  }
  
  public final Long c()
  {
    return lastLogin;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkq)) {
      return false;
    }
    paramObject = (bkq)paramObject;
    return new EqualsBuilder().append(id, id).append(name, name).append(lastLogin, lastLogin).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(name).append(lastLogin).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */