import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bic
{
  @SerializedName("expires")
  protected Long expires;
  @SerializedName("salt")
  protected String salt;
  @SerializedName("scope_id")
  protected String scopeId;
  @SerializedName("signature")
  protected String signature;
  @SerializedName("user_id")
  protected Long userId;
  
  public final String a()
  {
    return scopeId;
  }
  
  public final Long b()
  {
    return userId;
  }
  
  public final String c()
  {
    return salt;
  }
  
  public final Long d()
  {
    return expires;
  }
  
  public final String e()
  {
    return signature;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bic)) {
      return false;
    }
    paramObject = (bic)paramObject;
    return new EqualsBuilder().append(scopeId, scopeId).append(userId, userId).append(salt, salt).append(expires, expires).append(signature, signature).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(scopeId).append(userId).append(salt).append(expires).append(signature).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */