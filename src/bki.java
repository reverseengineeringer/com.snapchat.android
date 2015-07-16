import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bki
{
  @SerializedName("screenshot_count")
  protected Integer screenshotCount;
  @SerializedName("view_count")
  protected Integer viewCount;
  
  public final Integer a()
  {
    return viewCount;
  }
  
  public final void a(Integer paramInteger)
  {
    viewCount = paramInteger;
  }
  
  public final Integer b()
  {
    return screenshotCount;
  }
  
  public final void b(Integer paramInteger)
  {
    screenshotCount = paramInteger;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bki)) {
      return false;
    }
    paramObject = (bki)paramObject;
    return new EqualsBuilder().append(viewCount, viewCount).append(screenshotCount, screenshotCount).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(viewCount).append(screenshotCount).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */