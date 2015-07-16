import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkw
{
  @SerializedName("ad_placement_metadata")
  protected bhv adPlacementMetadata;
  @SerializedName("ad_type")
  protected Integer adType;
  @SerializedName("color")
  protected String color;
  @SerializedName("dsnap_id")
  protected String dsnapId;
  @SerializedName("hash")
  protected String hash;
  @SerializedName("url")
  protected String url;
  
  public final String a()
  {
    return url;
  }
  
  public final String b()
  {
    return dsnapId;
  }
  
  public final String c()
  {
    return hash;
  }
  
  public final String d()
  {
    return color;
  }
  
  public final Integer e()
  {
    return adType;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkw)) {
      return false;
    }
    paramObject = (bkw)paramObject;
    return new EqualsBuilder().append(url, url).append(dsnapId, dsnapId).append(hash, hash).append(color, color).append(adType, adType).append(adPlacementMetadata, adPlacementMetadata).isEquals();
  }
  
  public final bhv f()
  {
    return adPlacementMetadata;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(url).append(dsnapId).append(hash).append(color).append(adType).append(adPlacementMetadata).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */