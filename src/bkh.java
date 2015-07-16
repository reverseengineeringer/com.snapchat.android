import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkh
{
  @SerializedName("ad_can_follow")
  protected Boolean adCanFollow;
  @SerializedName("ad_placement_metadata")
  protected bhv adPlacementMetadata;
  @SerializedName("caption")
  protected bhz caption;
  @SerializedName("caption_text_display")
  protected String captionTextDisplay;
  @SerializedName("client_id")
  protected String clientId;
  @SerializedName("filter_id")
  protected String filterId;
  @SerializedName("id")
  protected String id;
  @SerializedName("is_shared")
  protected Boolean isShared;
  @SerializedName("mature_content")
  protected Boolean matureContent;
  @SerializedName("media_id")
  protected String mediaId;
  @SerializedName("media_iv")
  protected String mediaIv;
  @SerializedName("media_key")
  protected String mediaKey;
  @SerializedName("media_type")
  protected Integer mediaType;
  @SerializedName("media_url")
  protected String mediaUrl;
  @SerializedName("needs_auth")
  protected Boolean needsAuth;
  @SerializedName("sponsored_story_metadata")
  protected bkf sponsoredStoryMetadata;
  @SerializedName("story_filter_id")
  protected String storyFilterId;
  @SerializedName("thumbnail_iv")
  protected String thumbnailIv;
  @SerializedName("thumbnail_url")
  protected String thumbnailUrl;
  @SerializedName("time")
  protected Double time;
  @SerializedName("time_left")
  protected Long timeLeft;
  @SerializedName("timestamp")
  protected Long timestamp;
  @SerializedName("username")
  protected String username;
  @SerializedName("zipped")
  protected Boolean zipped;
  
  public final String a()
  {
    return id;
  }
  
  public final String b()
  {
    return username;
  }
  
  public final Boolean c()
  {
    return matureContent;
  }
  
  public final String d()
  {
    return clientId;
  }
  
  public final Long e()
  {
    return timestamp;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkh)) {
      return false;
    }
    paramObject = (bkh)paramObject;
    return new EqualsBuilder().append(id, id).append(username, username).append(matureContent, matureContent).append(clientId, clientId).append(timestamp, timestamp).append(mediaId, mediaId).append(mediaKey, mediaKey).append(mediaUrl, mediaUrl).append(mediaIv, mediaIv).append(thumbnailIv, thumbnailIv).append(thumbnailUrl, thumbnailUrl).append(mediaType, mediaType).append(time, time).append(timeLeft, timeLeft).append(captionTextDisplay, captionTextDisplay).append(caption, caption).append(zipped, zipped).append(filterId, filterId).append(storyFilterId, storyFilterId).append(sponsoredStoryMetadata, sponsoredStoryMetadata).append(isShared, isShared).append(adPlacementMetadata, adPlacementMetadata).append(needsAuth, needsAuth).append(adCanFollow, adCanFollow).isEquals();
  }
  
  public final String f()
  {
    return mediaId;
  }
  
  public final String g()
  {
    return mediaKey;
  }
  
  public final String h()
  {
    return mediaUrl;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(username).append(matureContent).append(clientId).append(timestamp).append(mediaId).append(mediaKey).append(mediaUrl).append(mediaIv).append(thumbnailIv).append(thumbnailUrl).append(mediaType).append(time).append(timeLeft).append(captionTextDisplay).append(caption).append(zipped).append(filterId).append(storyFilterId).append(sponsoredStoryMetadata).append(isShared).append(adPlacementMetadata).append(needsAuth).append(adCanFollow).toHashCode();
  }
  
  public final String i()
  {
    return mediaIv;
  }
  
  public final String j()
  {
    return thumbnailIv;
  }
  
  public final String k()
  {
    return thumbnailUrl;
  }
  
  public final Integer l()
  {
    return mediaType;
  }
  
  public final Double m()
  {
    return time;
  }
  
  public final Long n()
  {
    return timeLeft;
  }
  
  public final String o()
  {
    return captionTextDisplay;
  }
  
  public final Boolean p()
  {
    return zipped;
  }
  
  public final String q()
  {
    return filterId;
  }
  
  public final String r()
  {
    return storyFilterId;
  }
  
  public final Boolean s()
  {
    return isShared;
  }
  
  public final bhv t()
  {
    return adPlacementMetadata;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public final Boolean u()
  {
    return needsAuth;
  }
  
  public final Boolean v()
  {
    return adCanFollow;
  }
}

/* Location:
 * Qualified Name:     bkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */