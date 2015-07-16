import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkp
  extends bhy
{
  @SerializedName("story_ids")
  protected List<String> storyIds;
  
  public final bkp a(List<String> paramList)
  {
    storyIds = paramList;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkp)) {
      return false;
    }
    paramObject = (bkp)paramObject;
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
 * Qualified Name:     bkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */