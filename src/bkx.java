import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkx
{
  @SerializedName("sections")
  protected List<bky> sections;
  
  public final List<bky> a()
  {
    return sections;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkx)) {
      return false;
    }
    paramObject = (bkx)paramObject;
    return new EqualsBuilder().append(sections, sections).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(sections).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */