import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashPayment.Action;
import com.snapchat.android.model.CashTransaction;

public final class sc
  extends sl
{
  final String mCardToken;
  final CashTransaction mCashTransaction;
  
  public sc(@cgb CashTransaction paramCashTransaction, @cgb String paramString, @cgb sk paramsk)
  {
    super(paramsk);
    mCashTransaction = paramCashTransaction;
    mCardToken = paramString;
  }
  
  public final Object b()
  {
    return new sc.a();
  }
  
  public final String e()
  {
    return "cash/payments";
  }
  
  @tx
  final class a
  {
    @SerializedName("action")
    private String action = CashPayment.Action.SEND.name();
    @SerializedName("card_token")
    private String cardToken = mCardToken;
    @SerializedName("extras")
    private sy extras = new sy(mCashTransaction.mFromRain);
    @SerializedName("id")
    private String id = mCashTransaction.mTransactionId;
    @SerializedName("amount_money")
    private sz money = new sz(mCashTransaction.mAmount);
    @SerializedName("recipient")
    private CashCustomer recipient = new CashCustomer(mCashTransaction.mRecipientUsername);
    @SerializedName("recipient_customization")
    private sx recipientCustomization = new sx(mCashTransaction.mRecipientBankStatementMessage);
    @SerializedName("sender_customization")
    private sx senderCustomization = new sx(mCashTransaction.mSenderBankStatementMessage);
    @SerializedName("signature")
    private String signature = mCashTransaction.mSignature;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     sc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */