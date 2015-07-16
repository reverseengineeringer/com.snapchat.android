import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.util.CashUtils.CurrencyCode;

public final class rk
  extends qs<rk.b>
{
  private final int mAmount;
  private final CashUtils.CurrencyCode mCurrencyCode;
  private final boolean mIsRain;
  private final String mMessage;
  private final String mRecipient;
  
  public rk(@chc String paramString1, int paramInt, @chc CashUtils.CurrencyCode paramCurrencyCode, @chc String paramString2, boolean paramBoolean, @chc qs.a parama)
  {
    super(parama);
    mRecipient = paramString1;
    mAmount = paramInt;
    mCurrencyCode = paramCurrencyCode;
    mMessage = paramString2;
    mIsRain = paramBoolean;
    registerCallback(rk.b.class, this);
  }
  
  protected final String getPath()
  {
    return "/cash/validate_transaction";
  }
  
  public final Object getRequestPayload()
  {
    return new rk.a();
  }
  
  @ud
  final class a
    extends qc
  {
    @SerializedName("amount")
    final int amount = rk.b(rk.this);
    @SerializedName("currency_code")
    final String currencyCode = rk.c(rk.this).name();
    @SerializedName("rain")
    final boolean isRain = rk.e(rk.this);
    @SerializedName("message")
    final String message = rk.d(rk.this);
    @SerializedName("recipient")
    final String recipient = rk.a(rk.this);
    
    a() {}
  }
  
  public static class b
    extends ScCashResponsePayload
  {
    @SerializedName("created_at")
    @chd
    public long createdAt;
    @SerializedName("recipient_id")
    @chd
    public String recipientId;
    @SerializedName("sender_id")
    @chd
    public String senderId;
    @SerializedName("signature")
    @chd
    public String signature;
    @SerializedName("transaction_id")
    @chd
    public String transactionId;
  }
}

/* Location:
 * Qualified Name:     rk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */