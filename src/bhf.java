import com.google.gson.annotations.SerializedName;
import java.util.Map;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public class bhf
  extends bhl
{
  @SerializedName("body")
  protected bij body;
  @SerializedName("chat_message_id")
  protected String chatMessageId;
  @SerializedName("saved_state")
  protected Map<String, biu> savedState;
  @SerializedName("seq_num")
  protected Long seqNum = Long.valueOf(0L);
  @SerializedName("timestamp")
  protected Long timestamp = Long.valueOf(0L);
  
  public final bij a()
  {
    return body;
  }
  
  public final void a(bij parambij)
  {
    body = parambij;
  }
  
  public final void a(Long paramLong)
  {
    seqNum = paramLong;
  }
  
  public final void a(String paramString)
  {
    chatMessageId = paramString;
  }
  
  public final void b(Long paramLong)
  {
    timestamp = paramLong;
  }
  
  public final boolean b()
  {
    return body != null;
  }
  
  public final String c()
  {
    return chatMessageId;
  }
  
  public final Map<String, biu> d()
  {
    return savedState;
  }
  
  public final Long e()
  {
    return seqNum;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhf)) {
      return false;
    }
    paramObject = (bhf)paramObject;
    return new EqualsBuilder().append(body, body).append(chatMessageId, chatMessageId).append(savedState, savedState).append(seqNum, seqNum).append(timestamp, timestamp).isEquals();
  }
  
  public final Long f()
  {
    return timestamp;
  }
  
  public int hashCode()
  {
    return new HashCodeBuilder().append(body).append(chatMessageId).append(savedState).append(seqNum).append(timestamp).toHashCode();
  }
  
  public String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */