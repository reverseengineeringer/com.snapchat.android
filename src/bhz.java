import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhz
{
  @SerializedName("orientation")
  protected Long orientation = Long.valueOf(0L);
  @SerializedName("position")
  protected Double position;
  @SerializedName("text")
  protected String text;
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhz)) {
      return false;
    }
    paramObject = (bhz)paramObject;
    return new EqualsBuilder().append(text, text).append(orientation, orientation).append(position, position).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(text).append(orientation).append(position).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */