import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class ble
  extends bhy
{
  @SerializedName("countryCode")
  protected String countrycode;
  @SerializedName("numbers")
  protected String numbers;
  
  public final ble a(String paramString)
  {
    numbers = paramString;
    return this;
  }
  
  public final ble b(String paramString)
  {
    countrycode = paramString;
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof ble)) {
      return false;
    }
    paramObject = (ble)paramObject;
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
 * Qualified Name:     ble
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */