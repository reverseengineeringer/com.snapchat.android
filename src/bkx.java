import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkx
{
  @SerializedName("results")
  protected List<bky> results;
  
  public final List<bky> a()
  {
    return results;
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
 * Qualified Name:     bkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */