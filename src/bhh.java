import com.google.gson.annotations.SerializedName;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhh
{
  @SerializedName("cash_transaction")
  protected bhc cashTransaction;
  @SerializedName("chat_message")
  protected bhf chatMessage;
  @SerializedName("iter_token")
  protected String iterToken;
  @SerializedName("snap")
  protected bhy snap;
  
  public final bhh a(bhf parambhf)
  {
    chatMessage = parambhf;
    return this;
  }
  
  public final bhy a()
  {
    return snap;
  }
  
  public final boolean b()
  {
    return snap != null;
  }
  
  public final bhf c()
  {
    return chatMessage;
  }
  
  public final boolean d()
  {
    return chatMessage != null;
  }
  
  public final bhc e()
  {
    return cashTransaction;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhh)) {
      return false;
    }
    paramObject = (bhh)paramObject;
    return new EqualsBuilder().append(snap, snap).append(chatMessage, chatMessage).append(cashTransaction, cashTransaction).append(iterToken, iterToken).isEquals();
  }
  
  public final boolean f()
  {
    return cashTransaction != null;
  }
  
  public final String g()
  {
    return iterToken;
  }
  
  public final boolean h()
  {
    return iterToken != null;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(snap).append(chatMessage).append(cashTransaction).append(iterToken).toHashCode();
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */