import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjt
  extends bil
{
  @SerializedName("caption_orientation")
  protected Long captionOrientation;
  @SerializedName("caption_position")
  protected Double captionPosition;
  @SerializedName("caption_text")
  protected String captionText;
  @SerializedName("delivered_timestamp")
  protected Long deliveredTimestamp;
  @SerializedName("display_time")
  protected Double displayTime;
  @SerializedName("filter_id")
  protected String filterId;
  @SerializedName("media_type")
  protected Integer mediaType;
  @SerializedName("sent_timestamp")
  protected Long sentTimestamp;
  @SerializedName("snap_id")
  protected String snapId;
  @SerializedName("status")
  protected Integer status;
  @SerializedName("zipped")
  protected Boolean zipped;
  
  public final Long a()
  {
    return sentTimestamp;
  }
  
  public final Long b()
  {
    return deliveredTimestamp;
  }
  
  public final Integer c()
  {
    return status;
  }
  
  public final String d()
  {
    return snapId;
  }
  
  public final Boolean e()
  {
    return zipped;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjt)) {
      return false;
    }
    paramObject = (bjt)paramObject;
    return new EqualsBuilder().append(sentTimestamp, sentTimestamp).append(deliveredTimestamp, deliveredTimestamp).append(status, status).append(snapId, snapId).append(zipped, zipped).append(captionText, captionText).append(captionOrientation, captionOrientation).append(captionPosition, captionPosition).append(mediaType, mediaType).append(displayTime, displayTime).append(filterId, filterId).isEquals();
  }
  
  public final String f()
  {
    return captionText;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(sentTimestamp).append(deliveredTimestamp).append(status).append(snapId).append(zipped).append(captionText).append(captionOrientation).append(captionPosition).append(mediaType).append(displayTime).append(filterId).toHashCode();
  }
  
  public final Integer l()
  {
    return mediaType;
  }
  
  public final Double m()
  {
    return displayTime;
  }
  
  public final String n()
  {
    return filterId;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */