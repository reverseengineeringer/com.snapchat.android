import com.google.gson.annotations.SerializedName;
import java.util.Collection;
import java.util.List;

public final class qp
  extends tg
  implements ts.b<List<String>>
{
  private final qp.a mCallback;
  private final String mConversationId;
  private final String mTransactionIds;
  
  public qp(@cgb Collection<String> paramCollection, @cgb String paramString, @cgb qp.a parama)
  {
    super(tg.EXPONENTIAL_STRATEGY);
    mTransactionIds = avb.a(paramCollection, ",");
    mConversationId = paramString;
    mCallback = parama;
    a(List.class, this);
  }
  
  public final Object b()
  {
    return new qp.b();
  }
  
  protected final String d()
  {
    return "/cash/mark_as_viewed";
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(List<String> paramList);
  }
  
  @tn
  final class b
    extends pl
  {
    @SerializedName("conversation_id")
    String conversationId = qp.b(qp.this);
    @SerializedName("transaction_ids")
    String transactionIds = qp.a(qp.this);
    
    b() {}
  }
}

/* Location:
 * Qualified Name:     qp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */