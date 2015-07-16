import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bkl
  extends bja
{
  @SerializedName("mId")
  protected String mid;
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkl)) {
      return false;
    }
    paramObject = (bkl)paramObject;
    return new EqualsBuilder().append(mid, mid).isEquals();
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(mid).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */