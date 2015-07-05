import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhv
{
  @SerializedName("ad_placement_metadata")
  protected bjr adPlacementMetadata;
  @SerializedName("mature_content")
  protected Boolean matureContent;
  @SerializedName("stories")
  protected List<bhw> stories;
  @SerializedName("thumbnails")
  protected bjm thumbnails;
  @SerializedName("username")
  protected String username;
  
  public final String a()
  {
    return username;
  }
  
  public final List<bhw> b()
  {
    return stories;
  }
  
  public final boolean c()
  {
    return stories != null;
  }
  
  public final bjr d()
  {
    return adPlacementMetadata;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhv)) {
      return false;
    }
    paramObject = (bhv)paramObject;
    return new EqualsBuilder().append(username, username).append(stories, stories).append(matureContent, matureContent).append(adPlacementMetadata, adPlacementMetadata).append(thumbnails, thumbnails).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(username).append(stories).append(matureContent).append(adPlacementMetadata).append(thumbnails).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */