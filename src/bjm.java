import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjm
{
  @SerializedName("unviewed")
  protected bjl unviewed;
  @SerializedName("viewed")
  protected bjl viewed;
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjm)) {
      return false;
    }
    paramObject = (bjm)paramObject;
    return new EqualsBuilder().append(unviewed, unviewed).append(viewed, viewed).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(unviewed).append(viewed).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */