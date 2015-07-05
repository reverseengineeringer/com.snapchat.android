import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class big
  extends bgx
{
  @SerializedName("dtoken1i")
  protected String dtoken1i;
  @SerializedName("dtoken1v")
  protected String dtoken1v;
  @SerializedName("message")
  protected String message;
  @SerializedName("message_format")
  protected String messageFormat;
  @SerializedName("phone_number")
  protected String phoneNumber;
  @SerializedName("pre_auth_token")
  protected String preAuthToken;
  @SerializedName("recovery_code_used")
  protected Boolean recoveryCodeUsed;
  @SerializedName("status")
  protected Integer status;
  @SerializedName("two_fa_needed")
  protected Boolean twoFaNeeded;
  @SerializedName("username")
  protected String username;
  @SerializedName("verification_needed")
  protected bkr verificationNeeded;
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof big)) {
      return false;
    }
    paramObject = (big)paramObject;
    return new EqualsBuilder().append(message, message).append(status, status).append(dtoken1i, dtoken1i).append(dtoken1v, dtoken1v).append(twoFaNeeded, twoFaNeeded).append(username, username).append(messageFormat, messageFormat).append(phoneNumber, phoneNumber).append(preAuthToken, preAuthToken).append(recoveryCodeUsed, recoveryCodeUsed).append(verificationNeeded, verificationNeeded).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(message).append(status).append(dtoken1i).append(dtoken1v).append(twoFaNeeded).append(username).append(messageFormat).append(phoneNumber).append(preAuthToken).append(recoveryCodeUsed).append(verificationNeeded).toHashCode();
  }
  
  public final String l()
  {
    return message;
  }
  
  public final Integer m()
  {
    return status;
  }
  
  public final String n()
  {
    return dtoken1i;
  }
  
  public final String o()
  {
    return dtoken1v;
  }
  
  public final Boolean p()
  {
    return twoFaNeeded;
  }
  
  public final String q()
  {
    return username;
  }
  
  public final String r()
  {
    return messageFormat;
  }
  
  public final String s()
  {
    return phoneNumber;
  }
  
  public final String t()
  {
    return preAuthToken;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public final Boolean u()
  {
    return recoveryCodeUsed;
  }
  
  public final bkr v()
  {
    return verificationNeeded;
  }
  
  public final boolean w()
  {
    return verificationNeeded != null;
  }
}

/* Location:
 * Qualified Name:     big
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */