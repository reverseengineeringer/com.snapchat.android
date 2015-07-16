import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bij
  extends bji
{
  @SerializedName("app_version")
  protected String appVersion;
  @SerializedName("auth")
  protected bjy auth;
  @SerializedName("platform")
  protected String platform;
  @SerializedName("username")
  protected String username;
  @SerializedName("version")
  protected String version;
  
  public final bij a(bjy parambjy)
  {
    auth = parambjy;
    return this;
  }
  
  public final bij a(String paramString)
  {
    username = paramString;
    return this;
  }
  
  public final bij b(String paramString)
  {
    platform = paramString;
    return this;
  }
  
  public final bij c(String paramString)
  {
    version = paramString;
    return this;
  }
  
  public final bij d(String paramString)
  {
    appVersion = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bij)) {
      return false;
    }
    paramObject = (bij)paramObject;
    return new EqualsBuilder().append(username, username).append(platform, platform).append(version, version).append(appVersion, appVersion).append(auth, auth).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(username).append(platform).append(version).append(appVersion).append(auth).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */