import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class biv
{
  @SerializedName("ad_placement_metadata")
  protected bks adPlacementMetadata;
  @SerializedName("mature_content")
  protected Boolean matureContent;
  @SerializedName("stories")
  protected List<biw> stories;
  @SerializedName("thumbnails")
  protected bkn thumbnails;
  @SerializedName("username")
  protected String username;
  
  public final String a()
  {
    return username;
  }
  
  public final List<biw> b()
  {
    return stories;
  }
  
  public final boolean c()
  {
    return stories != null;
  }
  
  public final bks d()
  {
    return adPlacementMetadata;
  }
  
  public final bkn e()
  {
    return thumbnails;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof biv)) {
      return false;
    }
    paramObject = (biv)paramObject;
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
 * Qualified Name:     biv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */