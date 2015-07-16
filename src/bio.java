import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bio
{
  @SerializedName("is_delta")
  protected Boolean isDelta;
  
  public final Boolean a()
  {
    return isDelta;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bio)) {
      return false;
    }
    paramObject = (bio)paramObject;
    return new EqualsBuilder().append(isDelta, isDelta).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(isDelta).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bio
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */