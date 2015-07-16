import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjc
{
  @SerializedName("chat_token")
  protected String chatToken;
  @SerializedName("expires")
  protected Long expires;
  @SerializedName("mac")
  protected String mac;
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
  
  public final void a(String paramString)
  {
    scopeId = paramString;
  }
  
  public final Long b()
  {
    return userId;
  }
  
  public final void b(String paramString)
  {
    chatToken = paramString;
  }
  
  public final String c()
  {
    return salt;
  }
  
  public final void c(String paramString)
  {
    mac = paramString;
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
    if (!(paramObject instanceof bjc)) {
      return false;
    }
    paramObject = (bjc)paramObject;
    return new EqualsBuilder().append(scopeId, scopeId).append(userId, userId).append(salt, salt).append(expires, expires).append(signature, signature).append(chatToken, chatToken).append(mac, mac).isEquals();
  }
  
  public final String f()
  {
    return chatToken;
  }
  
  public final String g()
  {
    return mac;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(scopeId).append(userId).append(salt).append(expires).append(signature).append(chatToken).append(mac).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */