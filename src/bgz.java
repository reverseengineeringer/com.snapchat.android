import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bgz
{
  @SerializedName("orientation")
  protected Long orientation = Long.valueOf(0L);
  @SerializedName("position")
  protected Double position;
  @SerializedName("text")
  protected String text;
  
  public final bgz a(Double paramDouble)
  {
    position = paramDouble;
    return this;
  }
  
  public final bgz a(Long paramLong)
  {
    orientation = paramLong;
    return this;
  }
  
  public final bgz a(String paramString)
  {
    text = paramString;
    return this;
  }
  
  public final String a()
  {
    return text;
  }
  
  public final Long b()
  {
    return orientation;
  }
  
  public final boolean c()
  {
    return orientation != null;
  }
  
  public final Double d()
  {
    return position;
  }
  
  public final boolean e()
  {
    return position != null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bgz)) {
      return false;
    }
    paramObject = (bgz)paramObject;
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
 * Qualified Name:     bgz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */