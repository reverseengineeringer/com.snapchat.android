import com.google.gson.annotations.SerializedName;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bjr
  extends bil
{
  @SerializedName("here_auth")
  protected bjc hereAuth;
  @SerializedName("presences")
  protected Map<String, Boolean> presences;
  @SerializedName("receiving_video")
  protected Boolean receivingVideo;
  @SerializedName("supports_here")
  protected Boolean supportsHere;
  
  public final Map<String, Boolean> a()
  {
    return presences;
  }
  
  public final void a(Map<String, Boolean> paramMap)
  {
    presences = paramMap;
  }
  
  public final Boolean b()
  {
    return supportsHere;
  }
  
  public final void b(Boolean paramBoolean)
  {
    supportsHere = paramBoolean;
  }
  
  public final Boolean c()
  {
    return receivingVideo;
  }
  
  public final void c(Boolean paramBoolean)
  {
    receivingVideo = paramBoolean;
  }
  
  public final bjc d()
  {
    return hereAuth;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjr)) {
      return false;
    }
    paramObject = (bjr)paramObject;
    return new EqualsBuilder().append(presences, presences).append(supportsHere, supportsHere).append(receivingVideo, receivingVideo).append(hereAuth, hereAuth).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(presences).append(supportsHere).append(receivingVideo).append(hereAuth).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */