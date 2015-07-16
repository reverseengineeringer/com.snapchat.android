import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bly
{
  @SerializedName("sections")
  protected List<blz> sections;
  
  public final List<blz> a()
  {
    return sections;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bly)) {
      return false;
    }
    paramObject = (bly)paramObject;
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
 * Qualified Name:     bly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */