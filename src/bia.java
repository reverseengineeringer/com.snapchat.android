import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bia
  extends bil
{
  @SerializedName("count")
  protected Long count;
  @SerializedName("created_at")
  protected Long createdAt;
  
  public final Long a()
  {
    return createdAt;
  }
  
  public final void a(Long paramLong)
  {
    createdAt = paramLong;
  }
  
  public final Long b()
  {
    return count;
  }
  
  public final void b(Long paramLong)
  {
    count = paramLong;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bia)) {
      return false;
    }
    paramObject = (bia)paramObject;
    return new EqualsBuilder().append(createdAt, createdAt).append(count, count).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(createdAt).append(count).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */