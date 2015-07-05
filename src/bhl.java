import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhl
  extends bii
{
  @SerializedName("header")
  protected bib header;
  @SerializedName("retried")
  protected Boolean retried;
  
  public final void a(bib parambib)
  {
    header = parambib;
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
    if (!(paramObject instanceof bhl)) {
      return false;
    }
    paramObject = (bhl)paramObject;
    return new EqualsBuilder().append(header, header).append(retried, retried).isEquals();
  }
  
  public final bib g()
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
 * Qualified Name:     bhl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */