import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkb
  extends bgy
{
  @SerializedName("added_friends")
  protected List<String> addedFriends;
  @SerializedName("size")
  protected String size;
  
  public final bkb a(String paramString)
  {
    size = paramString;
    return this;
  }
  
  public final bkb a(List<String> paramList)
  {
    addedFriends = paramList;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkb)) {
      return false;
    }
    paramObject = (bkb)paramObject;
    return new EqualsBuilder().append(size, size).append(addedFriends, addedFriends).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(size).append(addedFriends).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */