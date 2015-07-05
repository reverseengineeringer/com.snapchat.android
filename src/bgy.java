import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bgy
{
  @SerializedName("req_token")
  protected String reqToken;
  @SerializedName("timestamp")
  protected String timestamp;
  @SerializedName("username")
  protected String username;
  
  public final String a()
  {
    return timestamp;
  }
  
  public final String b()
  {
    return reqToken;
  }
  
  public final String c()
  {
    return username;
  }
  
  public final void c(String paramString)
  {
    timestamp = paramString;
  }
  
  public final bgy d(String paramString)
  {
    timestamp = paramString;
    return this;
  }
  
  public final void e(String paramString)
  {
    reqToken = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bgy)) {
      return false;
    }
    paramObject = (bgy)paramObject;
    return new EqualsBuilder().append(timestamp, timestamp).append(reqToken, reqToken).append(username, username).isEquals();
  }
  
  public final bgy f(String paramString)
  {
    reqToken = paramString;
    return this;
  }
  
  public final void g(String paramString)
  {
    username = paramString;
  }
  
  public final bgy h(String paramString)
  {
    username = paramString;
    return this;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(timestamp).append(reqToken).append(username).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bgy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */