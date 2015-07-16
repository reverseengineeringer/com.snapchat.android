import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkn
{
  @SerializedName("unviewed")
  protected bkm unviewed;
  @SerializedName("viewed")
  protected bkm viewed;
  
  public final bkm a()
  {
    return unviewed;
  }
  
  public final boolean b()
  {
    return unviewed != null;
  }
  
  public final bkm c()
  {
    return viewed;
  }
  
  public final boolean d()
  {
    return viewed != null;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkn)) {
      return false;
    }
    paramObject = (bkn)paramObject;
    return new EqualsBuilder().append(unviewed, unviewed).append(viewed, viewed).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(unviewed).append(viewed).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */