import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkc
  extends bil
{
  @SerializedName("replayed")
  protected Boolean replayed;
  @SerializedName("screenshot_count")
  protected Long screenshotCount;
  @SerializedName("snap_id")
  protected String snapId;
  @SerializedName("timestamp")
  protected Long timestamp;
  @SerializedName("viewed")
  protected Boolean viewed;
  
  public final Long a()
  {
    return timestamp;
  }
  
  public final void a(Long paramLong)
  {
    timestamp = paramLong;
  }
  
  public final void a(String paramString)
  {
    snapId = paramString;
  }
  
  public final String b()
  {
    return snapId;
  }
  
  public final void b(Boolean paramBoolean)
  {
    viewed = paramBoolean;
  }
  
  public final void b(Long paramLong)
  {
    screenshotCount = paramLong;
  }
  
  public final Boolean c()
  {
    return viewed;
  }
  
  public final void c(Boolean paramBoolean)
  {
    replayed = paramBoolean;
  }
  
  public final Boolean d()
  {
    return replayed;
  }
  
  public final Long e()
  {
    return screenshotCount;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkc)) {
      return false;
    }
    paramObject = (bkc)paramObject;
    return new EqualsBuilder().append(timestamp, timestamp).append(snapId, snapId).append(viewed, viewed).append(replayed, replayed).append(screenshotCount, screenshotCount).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(timestamp).append(snapId).append(viewed).append(replayed).append(screenshotCount).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */