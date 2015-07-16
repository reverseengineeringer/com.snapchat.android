import com.google.gson.annotations.SerializedName;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkg
{
  @SerializedName("friend_stories")
  protected List<biv> friendStories;
  @SerializedName("friend_stories_delta")
  protected Boolean friendStoriesDelta;
  @SerializedName("mature_content_text")
  protected Map<String, String> matureContentText;
  @SerializedName("my_group_stories")
  protected List<bjm> myGroupStories;
  @SerializedName("my_stories")
  protected List<bkj> myStories;
  @SerializedName("server_info")
  protected bjx serverInfo;
  
  public final List<bkj> a()
  {
    return myStories;
  }
  
  public final boolean b()
  {
    return myStories != null;
  }
  
  public final List<biv> c()
  {
    return friendStories;
  }
  
  public final List<bjm> d()
  {
    return myGroupStories;
  }
  
  public final boolean e()
  {
    return myGroupStories != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkg)) {
      return false;
    }
    paramObject = (bkg)paramObject;
    return new EqualsBuilder().append(myStories, myStories).append(friendStories, friendStories).append(myGroupStories, myGroupStories).append(matureContentText, matureContentText).append(friendStoriesDelta, friendStoriesDelta).append(serverInfo, serverInfo).isEquals();
  }
  
  public final Boolean f()
  {
    return friendStoriesDelta;
  }
  
  public final bjx g()
  {
    return serverInfo;
  }
  
  public final boolean h()
  {
    return serverInfo != null;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(myStories).append(friendStories).append(myGroupStories).append(matureContentText).append(friendStoriesDelta).append(serverInfo).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */