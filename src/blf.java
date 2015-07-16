import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class blf
{
  @SerializedName("last_address_book_updated_date")
  protected Long lastAddressBookUpdatedDate = Long.valueOf(0L);
  @SerializedName("results")
  protected List<biu> results;
  
  public final List<biu> a()
  {
    return results;
  }
  
  public final Long b()
  {
    return lastAddressBookUpdatedDate;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof blf)) {
      return false;
    }
    paramObject = (blf)paramObject;
    return new EqualsBuilder().append(results, results).append(lastAddressBookUpdatedDate, lastAddressBookUpdatedDate).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(results).append(lastAddressBookUpdatedDate).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     blf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */