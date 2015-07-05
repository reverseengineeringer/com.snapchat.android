import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjx
{
  @SerializedName("account_id")
  protected String accountId;
  @SerializedName("name")
  protected String name;
  @SerializedName("video_id")
  protected String videoId;
  @SerializedName("video_sequence")
  protected List<bjz> videoSequence;
  
  public final String a()
  {
    return videoId;
  }
  
  public final String b()
  {
    return accountId;
  }
  
  public final String c()
  {
    return name;
  }
  
  public final List<bjz> d()
  {
    return videoSequence;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjx)) {
      return false;
    }
    paramObject = (bjx)paramObject;
    return new EqualsBuilder().append(videoId, videoId).append(accountId, accountId).append(name, name).append(videoSequence, videoSequence).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(videoId).append(accountId).append(name).append(videoSequence).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */