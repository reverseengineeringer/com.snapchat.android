import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bin
{
  @SerializedName("display_name")
  protected String displayName;
  @SerializedName("friend_name")
  protected String friendName;
  @SerializedName("geofence")
  protected bhz geofence;
  @SerializedName("is_whitelisted")
  protected Boolean isWhitelisted;
  @SerializedName("local_story")
  protected Boolean localStory;
  @SerializedName("my_stories_display_name")
  protected String myStoriesDisplayName;
  @SerializedName("story_id")
  protected String storyId;
  @SerializedName("time_left")
  protected Long timeLeft = Long.valueOf(0L);
  @SerializedName("venue")
  protected String venue;
  
  public final String a()
  {
    return storyId;
  }
  
  public final String b()
  {
    return displayName;
  }
  
  public final bhz c()
  {
    return geofence;
  }
  
  public final String d()
  {
    return myStoriesDisplayName;
  }
  
  public final String e()
  {
    return venue;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bin)) {
      return false;
    }
    paramObject = (bin)paramObject;
    return new EqualsBuilder().append(storyId, storyId).append(displayName, displayName).append(geofence, geofence).append(myStoriesDisplayName, myStoriesDisplayName).append(venue, venue).append(friendName, friendName).append(localStory, localStory).append(isWhitelisted, isWhitelisted).append(timeLeft, timeLeft).isEquals();
  }
  
  public final String f()
  {
    return friendName;
  }
  
  public final Boolean g()
  {
    return localStory;
  }
  
  public final Boolean h()
  {
    return isWhitelisted;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(storyId).append(displayName).append(geofence).append(myStoriesDisplayName).append(venue).append(friendName).append(localStory).append(isWhitelisted).append(timeLeft).toHashCode();
  }
  
  public final Long i()
  {
    return timeLeft;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */