import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bhd
{
  @SerializedName("conversation_messages")
  protected bhe conversationMessages;
  @SerializedName("conversation_state")
  protected bhn conversationState;
  @SerializedName("id")
  protected String id;
  @SerializedName("iter_token")
  protected String iterToken;
  @SerializedName("last_cash_transaction")
  protected bhc lastCashTransaction;
  @SerializedName("last_chat_actions")
  protected bid lastChatActions;
  @SerializedName("last_interaction_ts")
  protected Long lastInteractionTs;
  @SerializedName("last_snap")
  protected bhy lastSnap;
  @SerializedName("participants")
  protected List<String> participants;
  @SerializedName("pending_chats_for")
  protected List<String> pendingChatsFor;
  @SerializedName("pending_received_snaps")
  protected List<bhy> pendingReceivedSnaps;
  
  public final bhd a(bhe parambhe)
  {
    conversationMessages = parambhe;
    return this;
  }
  
  public final String a()
  {
    return id;
  }
  
  public final bhy b()
  {
    return lastSnap;
  }
  
  public final boolean c()
  {
    return lastSnap != null;
  }
  
  public final bid d()
  {
    return lastChatActions;
  }
  
  public final boolean e()
  {
    return lastChatActions != null;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof bhd)) {
      return false;
    }
    paramObject = (bhd)paramObject;
    return new EqualsBuilder().append(id, id).append(participants, participants).append(lastSnap, lastSnap).append(lastChatActions, lastChatActions).append(lastCashTransaction, lastCashTransaction).append(lastInteractionTs, lastInteractionTs).append(pendingChatsFor, pendingChatsFor).append(pendingReceivedSnaps, pendingReceivedSnaps).append(conversationMessages, conversationMessages).append(iterToken, iterToken).append(conversationState, conversationState).isEquals();
  }
  
  public final bhc f()
  {
    return lastCashTransaction;
  }
  
  public final boolean g()
  {
    return lastCashTransaction != null;
  }
  
  public final Long h()
  {
    return lastInteractionTs;
  }
  
  public final int hashCode()
  {
    return new HashCodeBuilder().append(id).append(participants).append(lastSnap).append(lastChatActions).append(lastCashTransaction).append(lastInteractionTs).append(pendingChatsFor).append(pendingReceivedSnaps).append(conversationMessages).append(iterToken).append(conversationState).toHashCode();
  }
  
  public final List<bhy> i()
  {
    return pendingReceivedSnaps;
  }
  
  public final boolean j()
  {
    return pendingReceivedSnaps != null;
  }
  
  public final bhe k()
  {
    return conversationMessages;
  }
  
  public final boolean l()
  {
    return conversationMessages != null;
  }
  
  public final String m()
  {
    return iterToken;
  }
  
  public final boolean n()
  {
    return iterToken != null;
  }
  
  public final bhn o()
  {
    return conversationState;
  }
  
  public final boolean p()
  {
    return conversationState != null;
  }
  
  public final String toString()
  {
    return ToStringBuilder.reflectionToString(this);
  }
}

/* Location:
 * Qualified Name:     bhd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */