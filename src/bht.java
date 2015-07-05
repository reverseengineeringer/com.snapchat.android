import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bht
{
  @SerializedName("front_facing_flash")
  protected Boolean frontFacingFlash;
  @SerializedName("replay_snaps")
  protected Boolean replaySnaps;
  @SerializedName("smart_filters")
  protected Boolean smartFilters;
  @SerializedName("visual_filters")
  protected Boolean visualFilters;
  
  public final bht a(Boolean paramBoolean)
  {
    smartFilters = paramBoolean;
    return this;
  }
  
  public final Boolean a()
  {
    return smartFilters;
  }
  
  public final bht b(Boolean paramBoolean)
  {
    frontFacingFlash = paramBoolean;
    return this;
  }
  
  public final Boolean b()
  {
    return frontFacingFlash;
  }
  
  public final bht c(Boolean paramBoolean)
  {
    replaySnaps = paramBoolean;
    return this;
  }
  
  public final Boolean c()
  {
    return replaySnaps;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bht)) {
      return false;
    }
    paramObject = (bht)paramObject;
    return new EqualsBuilder().append(smartFilters, smartFilters).append(visualFilters, visualFilters).append(frontFacingFlash, frontFacingFlash).append(replaySnaps, replaySnaps).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(smartFilters).append(visualFilters).append(frontFacingFlash).append(replaySnaps).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */