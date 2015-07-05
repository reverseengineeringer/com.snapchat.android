import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bju
{
  @SerializedName("dsnaps_data")
  protected List<bjv> dsnapsData;
  @SerializedName("edition_id")
  protected String editionId;
  @SerializedName("filled_icon")
  protected String filledIcon;
  @SerializedName("intro_movie")
  protected String introMovie;
  @SerializedName("intro_video_ad_metadata")
  protected bgv introVideoAdMetadata;
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
  
  public final String c()
  {
    return publisherName;
  }
  
  public final String d()
  {
    return publisherFormalName;
  }
  
  public final String e()
  {
    return filledIcon;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bju)) {
      return false;
    }
    paramObject = (bju)paramObject;
    return new EqualsBuilder().append(name, name).append(position, position).append(storiesPagePosition, storiesPagePosition).append(publisherName, publisherName).append(publisherFormalName, publisherFormalName).append(filledIcon, filledIcon).append(invertedIcon, invertedIcon).append(loadingIcon, loadingIcon).append(introMovie, introMovie).append(primaryColor, primaryColor).append(secondaryColor, secondaryColor).append(editionId, editionId).append(dsnapsData, dsnapsData).append(introVideoAdMetadata, introVideoAdMetadata).isEquals();
  }
  
  public final String f()
  {
    return invertedIcon;
  }
  
  public final String g()
  {
    return loadingIcon;
  }
  
  public final String h()
  {
    return introMovie;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(name).append(position).append(storiesPagePosition).append(publisherName).append(publisherFormalName).append(filledIcon).append(invertedIcon).append(loadingIcon).append(introMovie).append(primaryColor).append(secondaryColor).append(editionId).append(dsnapsData).append(introVideoAdMetadata).toHashCode();
  }
  
  public final String i()
  {
    return primaryColor;
  }
  
  public final String j()
  {
    return secondaryColor;
  }
  
  public final String k()
  {
    return editionId;
  }
  
  public final List<bjv> l()
  {
    return dsnapsData;
  }
  
  public final bgv m()
  {
    return introVideoAdMetadata;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */