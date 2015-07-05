import com.google.gson.annotations.SerializedName;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhu
{
  @SerializedName("add_source")
  protected String addSource;
  @SerializedName("add_source_type")
  protected String addSourceType;
  @SerializedName("auto_added")
  protected Boolean autoAdded;
  @SerializedName("can_see_custom_stories")
  protected Boolean canSeeCustomStories;
  @SerializedName("direction")
  protected String direction;
  @SerializedName("display")
  protected String display;
  @SerializedName("dont_decay_thumbnail")
  protected Boolean dontDecayThumbnail;
  @SerializedName("expiration")
  protected Long expiration = Long.valueOf(0L);
  @SerializedName("friendmoji_dict")
  protected Map<String, Object> friendmojiDict;
  @SerializedName("friendmoji_string")
  protected String friendmojiString;
  @SerializedName("friendmoji_symbols")
  protected List<String> friendmojiSymbols;
  @SerializedName("has_custom_description")
  protected Boolean hasCustomDescription;
  @SerializedName("hidden_link")
  protected Boolean hiddenLink;
  @SerializedName("ignored_link")
  protected Boolean ignoredLink;
  @SerializedName("is_shared_story")
  protected Boolean isSharedStory;
  @SerializedName("local_story")
  protected Boolean localStory;
  @SerializedName("name")
  protected String name;
  @SerializedName("needs_love")
  protected Boolean needsLove;
  @SerializedName("new_link")
  protected Boolean newLink;
  @SerializedName("pending_snaps_count")
  protected Integer pendingSnapsCount;
  @SerializedName("shared_story_id")
  protected String sharedStoryId;
  @SerializedName("ts")
  protected Long ts = Long.valueOf(0L);
  @SerializedName("type")
  protected Integer type;
  @SerializedName("user_id")
  protected String userId;
  @SerializedName("venue")
  protected String venue;
  
  public final String a()
  {
    return name;
  }
  
  public final String b()
  {
    return userId;
  }
  
  public final bhu.a c()
  {
    return bhu.a.a(type);
  }
  
  public final String d()
  {
    return display;
  }
  
  public final Long e()
  {
    return ts;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhu)) {
      return false;
    }
    paramObject = (bhu)paramObject;
    return new EqualsBuilder().append(name, name).append(userId, userId).append(type, type).append(display, display).append(ts, ts).append(direction, direction).append(canSeeCustomStories, canSeeCustomStories).append(pendingSnapsCount, pendingSnapsCount).append(expiration, expiration).append(isSharedStory, isSharedStory).append(hasCustomDescription, hasCustomDescription).append(sharedStoryId, sharedStoryId).append(localStory, localStory).append(ignoredLink, ignoredLink).append(hiddenLink, hiddenLink).append(addSource, addSource).append(addSourceType, addSourceType).append(friendmojiString, friendmojiString).append(needsLove, needsLove).append(autoAdded, autoAdded).append(newLink, newLink).append(dontDecayThumbnail, dontDecayThumbnail).append(venue, venue).append(friendmojiSymbols, friendmojiSymbols).append(friendmojiDict, friendmojiDict).isEquals();
  }
  
  public final String f()
  {
    return direction;
  }
  
  public final Boolean g()
  {
    return canSeeCustomStories;
  }
  
  public final Integer h()
  {
    return pendingSnapsCount;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(name).append(userId).append(type).append(display).append(ts).append(direction).append(canSeeCustomStories).append(pendingSnapsCount).append(expiration).append(isSharedStory).append(hasCustomDescription).append(sharedStoryId).append(localStory).append(ignoredLink).append(hiddenLink).append(addSource).append(addSourceType).append(friendmojiString).append(needsLove).append(autoAdded).append(newLink).append(dontDecayThumbnail).append(venue).append(friendmojiSymbols).append(friendmojiDict).toHashCode();
  }
  
  public final Boolean i()
  {
    return isSharedStory;
  }
  
  public final Boolean j()
  {
    return hasCustomDescription;
  }
  
  public final String k()
  {
    return sharedStoryId;
  }
  
  public final Boolean l()
  {
    return localStory;
  }
  
  public final Boolean m()
  {
    return ignoredLink;
  }
  
  public final Boolean n()
  {
    return hiddenLink;
  }
  
  public final String o()
  {
    return addSource;
  }
  
  public final String p()
  {
    return addSourceType;
  }
  
  public final String q()
  {
    return friendmojiString;
  }
  
  public final Boolean r()
  {
    return needsLove;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
  
  public static enum a
  {
    private static final HashMap<Integer, a> VALUE_TO_ENUM;
    private final int intValue;
    
    static
    {
      int i = 0;
      FRIEND = new a("FRIEND", 0, 0);
      PENDING = new a("PENDING", 1, 1);
      BLOCKED = new a("BLOCKED", 2, 2);
      DELETED = new a("DELETED", 3, 3);
      INVITE_PLACEHOLDER = new a("INVITE_PLACEHOLDER", 4, 4);
      LOCKED_PLACEHOLDER = new a("LOCKED_PLACEHOLDER", 5, 5);
      FOLLOWING = new a("FOLLOWING", 6, 6);
      UNRECOGNIZED_VALUE = new a("UNRECOGNIZED_VALUE", 7, 55537);
      $VALUES = new a[] { FRIEND, PENDING, BLOCKED, DELETED, INVITE_PLACEHOLDER, LOCKED_PLACEHOLDER, FOLLOWING, UNRECOGNIZED_VALUE };
      VALUE_TO_ENUM = new HashMap();
      a[] arrayOfa = values();
      int j = arrayOfa.length;
      while (i < j)
      {
        a locala = arrayOfa[i];
        VALUE_TO_ENUM.put(Integer.valueOf(intValue), locala);
        i += 1;
      }
    }
    
    private a(int paramInt)
    {
      intValue = paramInt;
    }
    
    public static a a(Integer paramInteger)
    {
      a locala = (a)VALUE_TO_ENUM.get(paramInteger);
      paramInteger = locala;
      if (locala == null) {
        paramInteger = UNRECOGNIZED_VALUE;
      }
      return paramInteger;
    }
  }
}

/* Location:
 * Qualified Name:     bhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */