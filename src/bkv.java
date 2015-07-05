import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkv
{
  @SerializedName("background")
  protected String background;
  @SerializedName("background_type")
  protected String backgroundType;
  @SerializedName("docking")
  protected String docking;
  @SerializedName("file")
  protected String file;
  @SerializedName("images")
  protected List<String> images;
  @SerializedName("mode")
  protected String mode;
  @SerializedName("overlay")
  protected String overlay;
  @SerializedName("sponsored_overlay")
  protected String sponsoredOverlay;
  @SerializedName("video_first_frame")
  protected String videoFirstFrame;
  @SerializedName("video_id")
  protected String videoId;
  @SerializedName("z_index")
  protected Integer zIndex;
  
  public final String a()
  {
    return file;
  }
  
  public final String b()
  {
    return background;
  }
  
  public final String c()
  {
    return backgroundType;
  }
  
  public final String d()
  {
    return overlay;
  }
  
  public final String e()
  {
    return videoId;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkv)) {
      return false;
    }
    paramObject = (bkv)paramObject;
    return new EqualsBuilder().append(file, file).append(images, images).append(background, background).append(backgroundType, backgroundType).append(overlay, overlay).append(videoId, videoId).append(mode, mode).append(docking, docking).append(sponsoredOverlay, sponsoredOverlay).append(videoFirstFrame, videoFirstFrame).append(zIndex, zIndex).isEquals();
  }
  
  public final String f()
  {
    return mode;
  }
  
  public final String g()
  {
    return docking;
  }
  
  public final String h()
  {
    return videoFirstFrame;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(file).append(images).append(background).append(backgroundType).append(overlay).append(videoId).append(mode).append(docking).append(sponsoredOverlay).append(videoFirstFrame).append(zIndex).toHashCode();
  }
  
  public final Integer i()
  {
    return zIndex;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */