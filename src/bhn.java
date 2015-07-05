import com.google.gson.annotations.SerializedName;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhn
{
  @SerializedName("user_chat_releases")
  protected Map<String, Map<String, Long>> userChatReleases;
  @SerializedName("user_sequences")
  protected Map<String, Long> userSequences;
  @SerializedName("user_snap_releases")
  protected Map<String, Map<String, Long>> userSnapReleases;
  
  public final Map<String, Long> a()
  {
    return userSequences;
  }
  
  public final Map<String, Map<String, Long>> b()
  {
    return userChatReleases;
  }
  
  public final Map<String, Map<String, Long>> c()
  {
    return userSnapReleases;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhn)) {
      return false;
    }
    paramObject = (bhn)paramObject;
    return new EqualsBuilder().append(userSequences, userSequences).append(userChatReleases, userChatReleases).append(userSnapReleases, userSnapReleases).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(userSequences).append(userChatReleases).append(userSnapReleases).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */