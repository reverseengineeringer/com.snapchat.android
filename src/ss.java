import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashPayment.Action;
import com.snapchat.android.model.CashTransaction;

public final class ss
  extends tb
{
  final String mCardToken;
  final CashTransaction mCashTransaction;
  
  public ss(@chc CashTransaction paramCashTransaction, @chc String paramString, @chc ta paramta)
  {
    super(paramta);
    mCashTransaction = paramCashTransaction;
    mCardToken = paramString;
  }
  
  public final String a()
  {
    return "cash/payments";
  }
  
  public final Object getRequestPayload()
  {
    return new ss.a();
  }
  
  @un
  final class a
  {
    @SerializedName("action")
    private String action = CashPayment.Action.SEND.name();
    @SerializedName("card_token")
    private String cardToken = mCardToken;
    @SerializedName("extras")
    private to extras = new to(mCashTransaction.mFromRain);
    @SerializedName("id")
    private String id = mCashTransaction.mTransactionId;
    @SerializedName("amount_money")
    private tp money = new tp(mCashTransaction.mAmount);
    @SerializedName("recipient")
    private CashCustomer recipient = new CashCustomer(mCashTransaction.mRecipientUsername);
    @SerializedName("recipient_customization")
    private tn recipientCustomization = new tn(mCashTransaction.mRecipientBankStatementMessage);
    @SerializedName("sender_customization")
    private tn senderCustomization = new tn(mCashTransaction.mSenderBankStatementMessage);
    @SerializedName("signature")
    private String signature = mCashTransaction.mSignature;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     ss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */