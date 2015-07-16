import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bko
{
  @SerializedName("attribute")
  protected big attribute;
  @SerializedName("end")
  protected Integer end;
  @SerializedName("start")
  protected Integer start;
  
  public final Integer a()
  {
    return start;
  }
  
  public final Integer b()
  {
    return end;
  }
  
  public final big c()
  {
    return attribute;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bko)) {
      return false;
    }
    paramObject = (bko)paramObject;
    return new EqualsBuilder().append(start, start).append(end, end).append(attribute, attribute).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(start).append(end).append(attribute).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */