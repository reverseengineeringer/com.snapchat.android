import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bim
{
  @SerializedName("display_name")
  protected String displayName;
  @SerializedName("group_id")
  protected String groupId;
  @SerializedName("has_custom_description")
  protected Boolean hasCustomDescription;
  @SerializedName("stories")
  protected List<bio> stories;
  
  public final String a()
  {
    return groupId;
  }
  
  public final String b()
  {
    return displayName;
  }
  
  public final List<bio> c()
  {
    return stories;
  }
  
  public final Boolean d()
  {
    return hasCustomDescription;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bim)) {
      return false;
    }
    paramObject = (bim)paramObject;
    return new EqualsBuilder().append(groupId, groupId).append(displayName, displayName).append(stories, stories).append(hasCustomDescription, hasCustomDescription).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(groupId).append(displayName).append(stories).append(hasCustomDescription).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */