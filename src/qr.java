import com.google.gson.annotations.SerializedName;

public final class qr
  extends th
{
  final String mConversationId;
  final String mTransactionId;
  
  public qr(@cgb String paramString1, @cgb String paramString2)
  {
    mTransactionId = paramString1;
    mConversationId = paramString2;
  }
  
  public final Object b()
  {
    return new qr.a();
  }
  
  protected final String d()
  {
    return "/cash/transaction";
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("conversation_id")
    String conversationId = mConversationId;
    @SerializedName("transaction_id")
    String transactionId = mTransactionId;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */