import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjj
{
  @SerializedName("screenshotted")
  protected Boolean screenshotted;
  @SerializedName("storypointer")
  protected bjk storypointer;
  @SerializedName("timestamp")
  protected Long timestamp;
  @SerializedName("viewer")
  protected String viewer;
  
  public final bjj a(bjk parambjk)
  {
    storypointer = parambjk;
    return this;
  }
  
  public final bjj a(Boolean paramBoolean)
  {
    screenshotted = paramBoolean;
    return this;
  }
  
  public final bjj a(Long paramLong)
  {
    timestamp = paramLong;
    return this;
  }
  
  public final bjj a(String paramString)
  {
    viewer = paramString;
    return this;
  }
  
  public final String a()
  {
    return viewer;
  }
  
  public final Boolean b()
  {
    return screenshotted;
  }
  
  public final Long c()
  {
    return timestamp;
  }
  
  public final bjk d()
  {
    return storypointer;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjj)) {
      return false;
    }
    paramObject = (bjj)paramObject;
    return new EqualsBuilder().append(viewer, viewer).append(screenshotted, screenshotted).append(timestamp, timestamp).append(storypointer, storypointer).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(viewer).append(screenshotted).append(timestamp).append(storypointer).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */