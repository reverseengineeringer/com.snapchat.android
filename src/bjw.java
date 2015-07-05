import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjw
{
  @SerializedName("results")
  protected List<bjx> results;
  
  public final List<bjx> a()
  {
    return results;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjw)) {
      return false;
    }
    paramObject = (bjw)paramObject;
    return new EqualsBuilder().append(results, results).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(results).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */