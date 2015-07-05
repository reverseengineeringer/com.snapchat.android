import com.google.gson.annotations.SerializedName;

public final class qt
  extends tg
  implements ts.b<Boolean>
{
  private final qt.b mCallback;
  private final String mConversationId;
  private final Boolean mSaved;
  private final String mTransactionId;
  private final Integer mVersion;
  
  public qt(@cgb String paramString1, @cgb String paramString2, @cgb Boolean paramBoolean, @cgb Integer paramInteger, @cgb qt.b paramb)
  {
    super(tg.EXPONENTIAL_STRATEGY);
    mTransactionId = paramString1;
    mConversationId = paramString2;
    mSaved = paramBoolean;
    mVersion = paramInteger;
    mCallback = paramb;
    a(Boolean.class, this);
  }
  
  public final Object b()
  {
    return new qt.a();
  }
  
  protected final String d()
  {
    return "/cash/update_transaction";
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("conversation_id")
    String conversationId = qt.b(qt.this);
    @SerializedName("saved")
    Boolean saved = qt.c(qt.this);
    @SerializedName("transaction_id")
    String transactionId = qt.a(qt.this);
    @SerializedName("version")
    Integer version = qt.d(qt.this);
    
    a() {}
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     qt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */