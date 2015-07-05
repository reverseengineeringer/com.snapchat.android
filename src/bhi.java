import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhi
{
  @SerializedName("conversations_checksum")
  protected String conversationsChecksum;
  @SerializedName("friends_checksum")
  protected String friendsChecksum;
  @SerializedName("stories_checksum")
  protected String storiesChecksum;
  @SerializedName("updates_checksum")
  protected String updatesChecksum;
  
  public final bhi a(String paramString)
  {
    storiesChecksum = paramString;
    return this;
  }
  
  public final String a()
  {
    return storiesChecksum;
  }
  
  public final bhi b(String paramString)
  {
    updatesChecksum = paramString;
    return this;
  }
  
  public final String b()
  {
    return updatesChecksum;
  }
  
  public final bhi c(String paramString)
  {
    friendsChecksum = paramString;
    return this;
  }
  
  public final String c()
  {
    return friendsChecksum;
  }
  
  public final bhi d(String paramString)
  {
    conversationsChecksum = paramString;
    return this;
  }
  
  public final String d()
  {
    return conversationsChecksum;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhi)) {
      return false;
    }
    paramObject = (bhi)paramObject;
    return new EqualsBuilder().append(storiesChecksum, storiesChecksum).append(updatesChecksum, updatesChecksum).append(friendsChecksum, friendsChecksum).append(conversationsChecksum, conversationsChecksum).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(storiesChecksum).append(updatesChecksum).append(friendsChecksum).append(conversationsChecksum).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */