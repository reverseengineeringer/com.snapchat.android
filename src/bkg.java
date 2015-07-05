import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkg
  extends bgy
{
  @SerializedName("action")
  protected String action;
  @SerializedName("added_by")
  protected String addedBy;
  @SerializedName("block_reason_id")
  protected Integer blockReasonId;
  @SerializedName("display")
  protected String display;
  @SerializedName("friend")
  protected String friend;
  @SerializedName("friend_id")
  protected String friendId;
  @SerializedName("identity_cell_index")
  protected Integer identityCellIndex;
  @SerializedName("identity_profile_page")
  protected String identityProfilePage;
  
  public final void a(Integer paramInteger)
  {
    identityCellIndex = paramInteger;
  }
  
  public final void a(String paramString)
  {
    action = paramString;
  }
  
  public final void b(Integer paramInteger)
  {
    blockReasonId = paramInteger;
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
    if (!(paramObject instanceof bkg)) {
      return false;
    }
    paramObject = (bkg)paramObject;
    return new EqualsBuilder().append(action, action).append(friend, friend).append(friendId, friendId).append(addedBy, addedBy).append(identityProfilePage, identityProfilePage).append(identityCellIndex, identityCellIndex).append(display, display).append(blockReasonId, blockReasonId).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(action).append(friend).append(friendId).append(addedBy).append(identityProfilePage).append(identityCellIndex).append(display).append(blockReasonId).toHashCode();
  }
  
  public final void i(String paramString)
  {
    friendId = paramString;
  }
  
  public final void j(String paramString)
  {
    addedBy = paramString;
  }
  
  public final void k(String paramString)
  {
    identityProfilePage = paramString;
  }
  
  public final void l(String paramString)
  {
    display = paramString;
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