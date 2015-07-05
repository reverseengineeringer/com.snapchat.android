import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjy
{
  @SerializedName("bitrate")
  protected Integer bitrate;
  @SerializedName("codec")
  protected String codec;
  @SerializedName("container")
  protected String container;
  @SerializedName("duration")
  protected Integer duration;
  @SerializedName("height")
  protected Integer height;
  @SerializedName("size")
  protected Integer size;
  @SerializedName("url")
  protected String url;
  @SerializedName("width")
  protected Integer width;
  
  public final Integer a()
  {
    return bitrate;
  }
  
  public final Integer b()
  {
    return height;
  }
  
  public final Integer c()
  {
    return width;
  }
  
  public final Integer d()
  {
    return duration;
  }
  
  public final String e()
  {
    return url;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjy)) {
      return false;
    }
    paramObject = (bjy)paramObject;
    return new EqualsBuilder().append(bitrate, bitrate).append(height, height).append(width, width).append(size, size).append(duration, duration).append(url, url).append(codec, codec).append(container, container).isEquals();
  }
  
  public final String f()
  {
    return container;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(bitrate).append(height).append(width).append(size).append(duration).append(url).append(codec).append(container).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */