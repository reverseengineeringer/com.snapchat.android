import com.google.gson.annotations.SerializedName;

public final class rh
  extends tx
{
  final String mConversationId;
  final String mTransactionId;
  
  public rh(@chc String paramString1, @chc String paramString2)
  {
    mTransactionId = paramString1;
    mConversationId = paramString2;
  }
  
  protected final String getPath()
  {
    return "/cash/transaction";
  }
  
  public final Object getRequestPayload()
  {
    return new rh.a();
  }
  
  @ud
  final class a
    extends qc
  {
    @SerializedName("conversation_id")
    String conversationId = mConversationId;
    @SerializedName("transaction_id")
    String transactionId = mTransactionId;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     rh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */