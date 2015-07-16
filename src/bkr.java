import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkr
{
  @SerializedName("first_on_resume")
  protected Integer firstOnResume;
  @SerializedName("first_on_start")
  protected Integer firstOnStart;
  @SerializedName("interval")
  protected Integer interval;
  @SerializedName("min_snaps_after_ad")
  protected Integer minSnapsAfterAd;
  
  public final Integer a()
  {
    return firstOnResume;
  }
  
  public final boolean b()
  {
    return firstOnResume != null;
  }
  
  public final Integer c()
  {
    return interval;
  }
  
  public final Integer d()
  {
    return minSnapsAfterAd;
  }
  
  public final boolean e()
  {
    return minSnapsAfterAd != null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkr)) {
      return false;
    }
    paramObject = (bkr)paramObject;
    return new EqualsBuilder().append(firstOnResume, firstOnResume).append(interval, interval).append(minSnapsAfterAd, minSnapsAfterAd).append(firstOnStart, firstOnStart).isEquals();
  }
  
  public final Integer f()
  {
    return firstOnStart;
  }
  
  public final boolean g()
  {
    return firstOnStart != null;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(firstOnResume).append(interval).append(minSnapsAfterAd).append(firstOnStart).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */