import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bjv
{
  @SerializedName("saved")
  protected Boolean saved;
  @SerializedName("version")
  protected Integer version;
  
  public final Boolean a()
  {
    return saved;
  }
  
  public final Integer b()
  {
    return version;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bjv)) {
      return false;
    }
    paramObject = (bjv)paramObject;
    return new EqualsBuilder().append(saved, saved).append(version, version).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(saved).append(version).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bjv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */