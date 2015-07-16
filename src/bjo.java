import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjo
{
  @SerializedName("story")
  protected bkh story;
  @SerializedName("story_extras")
  protected bki storyExtras;
  
  public final bkh a()
  {
    return story;
  }
  
  public final bki b()
  {
    return storyExtras;
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
    return new EqualsBuilder().append(story, story).append(storyExtras, storyExtras).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(story).append(storyExtras).toHashCode();
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