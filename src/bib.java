import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bib
  extends bil
{
  @SerializedName("amount")
  protected Integer amount;
  @SerializedName("created_at")
  protected Long createdAt;
  @SerializedName("currency_code")
  protected String currencyCode;
  @SerializedName("message")
  protected String message;
  @SerializedName("payment_id")
  protected String paymentId;
  
  public final String a()
  {
    return paymentId;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bib)) {
      return false;
    }
    paramObject = (bib)paramObject;
    return new EqualsBuilder().append(createdAt, createdAt).append(paymentId, paymentId).append(amount, amount).append(currencyCode, currencyCode).append(message, message).isEquals();
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(createdAt).append(paymentId).append(amount).append(currencyCode).append(message).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */