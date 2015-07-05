import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bko
  extends bgy
{
  @SerializedName("action")
  protected String action;
  @SerializedName("friend")
  protected String friend;
  @SerializedName("friend_id")
  protected String friendId;
  @SerializedName("hide")
  protected Boolean hide;
  @SerializedName("identity_cell_index")
  protected Integer identityCellIndex;
  @SerializedName("seen")
  protected Boolean seen;
  @SerializedName("seen_suggested_friend_list")
  protected List<String> seenSuggestedFriendList;
  
  public final void a(Boolean paramBoolean)
  {
    seen = paramBoolean;
  }
  
  public final void a(Integer paramInteger)
  {
    identityCellIndex = paramInteger;
  }
  
  public final void a(String paramString)
  {
    action = paramString;
  }
  
  public final void a(List<String> paramList)
  {
    seenSuggestedFriendList = paramList;
  }
  
  public final void b(Boolean paramBoolean)
  {
    hide = paramBoolean;
  }
  
  public final void b(String paramString)
  {
    friend = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bko)) {
      return false;
    }
    paramObject = (bko)paramObject;
    return new EqualsBuilder().append(action, action).append(seen, seen).append(hide, hide).append(friend, friend).append(friendId, friendId).append(identityCellIndex, identityCellIndex).append(seenSuggestedFriendList, seenSuggestedFriendList).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(action).append(seen).append(hide).append(friend).append(friendId).append(identityCellIndex).append(seenSuggestedFriendList).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */