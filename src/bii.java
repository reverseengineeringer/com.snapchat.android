import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bii
{
  @SerializedName("conversations_checksum")
  protected String conversationsChecksum;
  @SerializedName("friends_checksum")
  protected String friendsChecksum;
  @SerializedName("stories_checksum")
  protected String storiesChecksum;
  @SerializedName("updates_checksum")
  protected String updatesChecksum;
  
  public final bii a(String paramString)
  {
    storiesChecksum = paramString;
    return this;
  }
  
  public final String a()
  {
    return storiesChecksum;
  }
  
  public final bii b(String paramString)
  {
    updatesChecksum = paramString;
    return this;
  }
  
  public final String b()
  {
    return updatesChecksum;
  }
  
  public final bii c(String paramString)
  {
    friendsChecksum = paramString;
    return this;
  }
  
  public final String c()
  {
    return friendsChecksum;
  }
  
  public final bii d(String paramString)
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
    if (!(paramObject instanceof bii)) {
      return false;
    }
    paramObject = (bii)paramObject;
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
 * Qualified Name:     bii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */