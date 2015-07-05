import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.util.CashUtils.CurrencyCode;

public final class qu
  extends qc<qu.b>
{
  private final int mAmount;
  private final CashUtils.CurrencyCode mCurrencyCode;
  private final boolean mIsRain;
  private final String mMessage;
  private final String mRecipient;
  
  public qu(@cgb String paramString1, int paramInt, @cgb CashUtils.CurrencyCode paramCurrencyCode, @cgb String paramString2, boolean paramBoolean, @cgb qc.a parama)
  {
    super(parama);
    mRecipient = paramString1;
    mAmount = paramInt;
    mCurrencyCode = paramCurrencyCode;
    mMessage = paramString2;
    mIsRain = paramBoolean;
    a(qu.b.class, this);
  }
  
  public final Object b()
  {
    return new qu.a();
  }
  
  protected final String d()
  {
    return "/cash/validate_transaction";
  }
  
  @tn
  final class a
    extends pl
  {
    @SerializedName("amount")
    final int amount = qu.b(qu.this);
    @SerializedName("currency_code")
    final String currencyCode = qu.c(qu.this).name();
    @SerializedName("rain")
    final boolean isRain = qu.e(qu.this);
    @SerializedName("message")
    final String message = qu.d(qu.this);
    @SerializedName("recipient")
    final String recipient = qu.a(qu.this);
    
    a() {}
  }
  
  public static class b
    extends ScCashResponsePayload
  {
    @SerializedName("created_at")
    @cgc
    public long createdAt;
    @SerializedName("recipient_id")
    @cgc
    public String recipientId;
    @SerializedName("sender_id")
    @cgc
    public String senderId;
    @SerializedName("signature")
    @cgc
    public String signature;
    @SerializedName("transaction_id")
    @cgc
    public String transactionId;
  }
}

/* Location:
 * Qualified Name:     qu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */