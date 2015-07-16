import com.google.gson.annotations.SerializedName;
import java.util.Collection;
import java.util.List;

public final class rf
  extends tw
  implements ui.b<List<String>>
{
  private final rf.a mCallback;
  private final String mConversationId;
  private final String mTransactionIds;
  
  public rf(@chc Collection<String> paramCollection, @chc String paramString, @chc rf.a parama)
  {
    super(tw.EXPONENTIAL_STRATEGY);
    mTransactionIds = avz.a(paramCollection, ",");
    mConversationId = paramString;
    mCallback = parama;
    registerCallback(List.class, this);
  }
  
  protected final String getPath()
  {
    return "/cash/mark_as_viewed";
  }
  
  public final Object getRequestPayload()
  {
    return new rf.b();
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(List<String> paramList);
  }
  
  @ud
  final class b
    extends qc
  {
    @SerializedName("conversation_id")
    String conversationId = rf.b(rf.this);
    @SerializedName("transaction_ids")
    String transactionIds = rf.a(rf.this);
    
    b() {}
  }
}

/* Location:
 * Qualified Name:     rf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */