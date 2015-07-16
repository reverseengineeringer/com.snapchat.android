import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bku
{
  @SerializedName("channels")
  protected List<bkv> channels;
  @SerializedName("generation_ts")
  protected Long generationTs;
  
  public final List<bkv> a()
  {
    return channels;
  }
  
  public final Long b()
  {
    return generationTs;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bku)) {
      return false;
    }
    paramObject = (bku)paramObject;
    return new EqualsBuilder().append(channels, channels).append(generationTs, generationTs).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(channels).append(generationTs).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */