import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bil
  extends bji
{
  @SerializedName("header")
  protected bjb header;
  @SerializedName("retried")
  protected Boolean retried;
  
  public final void a(bjb parambjb)
  {
    header = parambjb;
  }
  
  public final void a(Boolean paramBoolean)
  {
    retried = paramBoolean;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bil)) {
      return false;
    }
    paramObject = (bil)paramObject;
    return new EqualsBuilder().append(header, header).append(retried, retried).isEquals();
  }
  
  public final bjb g()
  {
    return header;
  }
  
  public final Boolean h()
  {
    return retried;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(header).append(retried).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */