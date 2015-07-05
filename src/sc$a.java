import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashPayment.Action;
import com.snapchat.android.model.CashTransaction;

@tx
final class sc$a
{
  @SerializedName("action")
  private String action = CashPayment.Action.SEND.name();
  @SerializedName("card_token")
  private String cardToken = this$0.mCardToken;
  @SerializedName("extras")
  private sy extras = new sy(this$0.mCashTransaction.mFromRain);
  @SerializedName("id")
  private String id = this$0.mCashTransaction.mTransactionId;
  @SerializedName("amount_money")
  private sz money = new sz(this$0.mCashTransaction.mAmount);
  @SerializedName("recipient")
  private CashCustomer recipient = new CashCustomer(this$0.mCashTransaction.mRecipientUsername);
  @SerializedName("recipient_customization")
  private sx recipientCustomization = new sx(this$0.mCashTransaction.mRecipientBankStatementMessage);
  @SerializedName("sender_customization")
  private sx senderCustomization = new sx(this$0.mCashTransaction.mSenderBankStatementMessage);
  @SerializedName("signature")
  private String signature = this$0.mCashTransaction.mSignature;
  
  sc$a(sc paramsc) {}
}

/* Location:
 * Qualified Name:     sc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */