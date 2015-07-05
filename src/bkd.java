import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bkd
  extends bgy
{
  @SerializedName("countryCode")
  protected String countrycode;
  @SerializedName("numbers")
  protected String numbers;
  
  public final bkd a(String paramString)
  {
    numbers = paramString;
    return this;
  }
  
  public final bkd b(String paramString)
  {
    countrycode = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bkd)) {
      return false;
    }
    paramObject = (bkd)paramObject;
    return new EqualsBuilder().append(numbers, numbers).append(countrycode, countrycode).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(numbers).append(countrycode).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */