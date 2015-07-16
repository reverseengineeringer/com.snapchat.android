import com.google.gson.annotations.SerializedName;
import java.util.List;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;

public final class bid
{
  @SerializedName("conversation_messages")
  protected bie conversationMessages;
  @SerializedName("conversation_state")
  protected bin conversationState;
  @SerializedName("id")
  protected String id;
  @SerializedName("iter_token")
  protected String iterToken;
  @SerializedName("last_cash_transaction")
  protected bic lastCashTransaction;
  @SerializedName("last_chat_actions")
  protected bjd lastChatActions;
  @SerializedName("last_interaction_ts")
  protected Long lastInteractionTs;
  @SerializedName("last_snap")
  protected biy lastSnap;
  @SerializedName("participants")
  protected List<String> participants;
  @SerializedName("pending_chats_for")
  protected List<String> pendingChatsFor;
  @SerializedName("pending_received_snaps")
  protected List<biy> pendingReceivedSnaps;
  
  public final bid a(bie parambie)
  {
    conversationMessages = parambie;
    return this;
  }
  
  public final String a()
  {
    return id;
  }
  
  public final biy b()
  {
    return lastSnap;
  }
  
  public final boolean c()
  {
    return lastSnap != null;
  }
  
  public final bjd d()
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
    if (!(paramObject instanceof bid)) {
      return false;
    }
    paramObject = (bid)paramObject;
    return new EqualsBuilder().append(id, id).append(participants, participants).append(lastSnap, lastSnap).append(lastChatActions, lastChatActions).append(lastCashTransaction, lastCashTransaction).append(lastInteractionTs, lastInteractionTs).append(pendingChatsFor, pendingChatsFor).append(pendingReceivedSnaps, pendingReceivedSnaps).append(conversationMessages, conversationMessages).append(iterToken, iterToken).append(conversationState, conversationState).isEquals();
  }
  
  public final bic f()
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
  
  public final List<biy> i()
  {
    return pendingReceivedSnaps;
  }
  
  public final boolean j()
  {
    return pendingReceivedSnaps != null;
  }
  
  public final bie k()
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
  
  public final bin o()
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
 * Qualified Name:     bid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */