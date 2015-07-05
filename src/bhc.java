import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhc
{
  @SerializedName("amount")
  protected Integer amount;
  @SerializedName("conversation_id")
  protected String conversationId;
  @SerializedName("created_at")
  protected Long createdAt;
  @SerializedName("currency_code")
  protected String currencyCode;
  @SerializedName("invisible")
  protected Boolean invisible;
  @SerializedName("last_updated_at")
  protected Long lastUpdatedAt;
  @SerializedName("message")
  protected String message;
  @SerializedName("provider")
  protected String provider = "SQUARE";
  @SerializedName("rain")
  protected Boolean rain;
  @SerializedName("recipient_id")
  protected String recipientId;
  @SerializedName("recipient_save_version")
  protected Integer recipientSaveVersion;
  @SerializedName("recipient_saved")
  protected Boolean recipientSaved;
  @SerializedName("recipient_username")
  protected String recipientUsername;
  @SerializedName("recipient_viewed")
  protected Boolean recipientViewed;
  @SerializedName("sender_id")
  protected String senderId;
  @SerializedName("sender_save_version")
  protected Integer senderSaveVersion;
  @SerializedName("sender_saved")
  protected Boolean senderSaved;
  @SerializedName("sender_username")
  protected String senderUsername;
  @SerializedName("sender_viewed")
  protected Boolean senderViewed;
  @SerializedName("status")
  protected Integer status;
  @SerializedName("transaction_id")
  protected String transactionId;
  
  public final String a()
  {
    return transactionId;
  }
  
  public final String b()
  {
    return senderId;
  }
  
  public final String c()
  {
    return senderUsername;
  }
  
  public final String d()
  {
    return recipientId;
  }
  
  public final String e()
  {
    return recipientUsername;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhc)) {
      return false;
    }
    paramObject = (bhc)paramObject;
    return new EqualsBuilder().append(conversationId, conversationId).append(transactionId, transactionId).append(senderId, senderId).append(senderUsername, senderUsername).append(recipientId, recipientId).append(recipientUsername, recipientUsername).append(amount, amount).append(currencyCode, currencyCode).append(message, message).append(createdAt, createdAt).append(lastUpdatedAt, lastUpdatedAt).append(status, status).append(invisible, invisible).append(senderViewed, senderViewed).append(recipientViewed, recipientViewed).append(senderSaved, senderSaved).append(senderSaveVersion, senderSaveVersion).append(recipientSaved, recipientSaved).append(recipientSaveVersion, recipientSaveVersion).append(rain, rain).append(provider, provider).isEquals();
  }
  
  public final Integer f()
  {
    return amount;
  }
  
  public final String g()
  {
    return currencyCode;
  }
  
  public final String h()
  {
    return message;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(conversationId).append(transactionId).append(senderId).append(senderUsername).append(recipientId).append(recipientUsername).append(amount).append(currencyCode).append(message).append(createdAt).append(lastUpdatedAt).append(status).append(invisible).append(senderViewed).append(recipientViewed).append(senderSaved).append(senderSaveVersion).append(recipientSaved).append(recipientSaveVersion).append(rain).append(provider).toHashCode();
  }
  
  public final Long i()
  {
    return createdAt;
  }
  
  public final Long j()
  {
    return lastUpdatedAt;
  }
  
  public final Integer k()
  {
    return status;
  }
  
  public final Boolean l()
  {
    return senderViewed;
  }
  
  public final Boolean m()
  {
    return recipientViewed;
  }
  
  public final Boolean n()
  {
    return senderSaved;
  }
  
  public final Integer o()
  {
    return senderSaveVersion;
  }
  
  public final Boolean p()
  {
    return recipientSaved;
  }
  
  public final Integer q()
  {
    return recipientSaveVersion;
  }
  
  public final Boolean r()
  {
    return rain;
  }
  
  public final String s()
  {
    return provider;
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */