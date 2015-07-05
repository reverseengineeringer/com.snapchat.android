import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkt
{
  @SerializedName("allowed_to_use_cash")
  protected String allowedToUseCash;
  @SerializedName("is_two_fa_enabled")
  protected Boolean isTwoFaEnabled;
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("verification_needed")
  protected bkr verificationNeeded;
  
  public final bkt a(Boolean paramBoolean)
  {
    logged = paramBoolean;
    return this;
  }
  
  public final bkt a(String paramString)
  {
    message = paramString;
    return this;
  }
  
  public final Boolean a()
  {
    return logged;
  }
  
  public final String b()
  {
    return message;
  }
  
  public final Boolean c()
  {
    return isTwoFaEnabled;
  }
  
  public final String d()
  {
    return allowedToUseCash;
  }
  
  public final bkr e()
  {
    return verificationNeeded;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkt)) {
      return false;
    }
    paramObject = (bkt)paramObject;
    return new EqualsBuilder().append(logged, logged).append(message, message).append(isTwoFaEnabled, isTwoFaEnabled).append(allowedToUseCash, allowedToUseCash).append(verificationNeeded, verificationNeeded).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(logged).append(message).append(isTwoFaEnabled).append(allowedToUseCash).append(verificationNeeded).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */