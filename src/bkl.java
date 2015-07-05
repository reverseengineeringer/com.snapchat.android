import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkl
{
  @SerializedName("logged")
  protected Boolean logged;
  @SerializedName("message")
  protected String message;
  @SerializedName("param")
  protected String param;
  @SerializedName("status")
  protected Integer status;
  
  public final bkl a(Boolean paramBoolean)
  {
    logged = paramBoolean;
    return this;
  }
  
  public final bkl a(String paramString)
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
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkl)) {
      return false;
    }
    paramObject = (bkl)paramObject;
    return new EqualsBuilder().append(logged, logged).append(status, status).append(message, message).append(param, param).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(logged).append(status).append(message).append(param).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */