import com.google.gson.annotations.SerializedName;

public final class rj
  extends tw
  implements ui.b<Boolean>
{
  private final rj.b mCallback;
  private final String mConversationId;
  private final Boolean mSaved;
  private final String mTransactionId;
  private final Integer mVersion;
  
  public rj(@chc String paramString1, @chc String paramString2, @chc Boolean paramBoolean, @chc Integer paramInteger, @chc rj.b paramb)
  {
    super(tw.EXPONENTIAL_STRATEGY);
    mTransactionId = paramString1;
    mConversationId = paramString2;
    mSaved = paramBoolean;
    mVersion = paramInteger;
    mCallback = paramb;
    registerCallback(Boolean.class, this);
  }
  
  protected final String getPath()
  {
    return "/cash/update_transaction";
  }
  
  public final Object getRequestPayload()
  {
    return new rj.a();
  }
  
  @ud
  final class a
    extends qc
  {
    @SerializedName("conversation_id")
    String conversationId = rj.b(rj.this);
    @SerializedName("saved")
    Boolean saved = rj.c(rj.this);
    @SerializedName("transaction_id")
    String transactionId = rj.a(rj.this);
    @SerializedName("version")
    Integer version = rj.d(rj.this);
    
    a() {}
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     rj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */