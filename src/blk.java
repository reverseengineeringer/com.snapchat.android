import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class blk
{
  @SerializedName("message")
  protected String message;
  @SerializedName("success")
  protected Boolean success;
  
  public final blk a(Boolean paramBoolean)
  {
    success = paramBoolean;
    return this;
  }
  
  public final blk a(String paramString)
  {
    message = paramString;
    return this;
  }
  
  public final Boolean a()
  {
    return success;
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
    if (!(paramObject instanceof blk)) {
      return false;
    }
    paramObject = (blk)paramObject;
    return new EqualsBuilder().append(success, success).append(message, message).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(success).append(message).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     blk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */