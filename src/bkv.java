import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkv
{
  @SerializedName("dsnaps_data")
  protected List<bkw> dsnapsData;
  @SerializedName("edition_id")
  protected String editionId;
  @SerializedName("filled_icon")
  protected String filledIcon;
  @SerializedName("intro_movie")
  protected String introMovie;
  @SerializedName("intro_video_ad_metadata")
  protected bhv introVideoAdMetadata;
  @SerializedName("inverted_icon")
  protected String invertedIcon;
  @SerializedName("loading_icon")
  protected String loadingIcon;
  @SerializedName("name")
  protected String name;
  @SerializedName("position")
  protected Integer position;
  @SerializedName("primary_color")
  protected String primaryColor;
  @SerializedName("promoted_stories_page_position")
  protected Integer promotedStoriesPagePosition;
  @SerializedName("publisher_formal_name")
  protected String publisherFormalName;
  @SerializedName("publisher_name")
  protected String publisherName;
  @SerializedName("secondary_color")
  protected String secondaryColor;
  @SerializedName("stories_page_position")
  protected Integer storiesPagePosition;
  
  public final String a()
  {
    return name;
  }
  
  public final Integer b()
  {
    return storiesPagePosition;
  }
  
  public final Integer c()
  {
    return promotedStoriesPagePosition;
  }
  
  public final String d()
  {
    return publisherName;
  }
  
  public final String e()
  {
    return publisherFormalName;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkv)) {
      return false;
    }
    paramObject = (bkv)paramObject;
    return new EqualsBuilder().append(name, name).append(position, position).append(storiesPagePosition, storiesPagePosition).append(promotedStoriesPagePosition, promotedStoriesPagePosition).append(publisherName, publisherName).append(publisherFormalName, publisherFormalName).append(filledIcon, filledIcon).append(invertedIcon, invertedIcon).append(loadingIcon, loadingIcon).append(introMovie, introMovie).append(primaryColor, primaryColor).append(secondaryColor, secondaryColor).append(editionId, editionId).append(dsnapsData, dsnapsData).append(introVideoAdMetadata, introVideoAdMetadata).isEquals();
  }
  
  public final String f()
  {
    return filledIcon;
  }
  
  public final String g()
  {
    return invertedIcon;
  }
  
  public final String h()
  {
    return loadingIcon;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(name).append(position).append(storiesPagePosition).append(promotedStoriesPagePosition).append(publisherName).append(publisherFormalName).append(filledIcon).append(invertedIcon).append(loadingIcon).append(introMovie).append(primaryColor).append(secondaryColor).append(editionId).append(dsnapsData).append(introVideoAdMetadata).toHashCode();
  }
  
  public final String i()
  {
    return introMovie;
  }
  
  public final String j()
  {
    return primaryColor;
  }
  
  public final String k()
  {
    return secondaryColor;
  }
  
  public final String l()
  {
    return editionId;
  }
  
  public final List<bkw> m()
  {
    return dsnapsData;
  }
  
  public final bhv n()
  {
    return introVideoAdMetadata;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */