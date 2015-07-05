import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjo
  extends bgy
{
  @SerializedName("story_ids")
  protected List<String> storyIds;
  
  public final bjo a(List<String> paramList)
  {
    storyIds = paramList;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjo)) {
      return false;
    }
    paramObject = (bjo)paramObject;
    return new EqualsBuilder().append(storyIds, storyIds).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(storyIds).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */