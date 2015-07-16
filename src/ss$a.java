import com.google.gson.annotations.SerializedName;
import com.snapchat.android.api2.cash.square.data.CashCustomer;
import com.snapchat.android.api2.cash.square.data.CashPayment.Action;
import com.snapchat.android.model.CashTransaction;

@un
final class ss$a
{
  @SerializedName("action")
  private String action = CashPayment.Action.SEND.name();
  @SerializedName("card_token")
  private String cardToken = this$0.mCardToken;
  @SerializedName("extras")
  private to extras = new to(this$0.mCashTransaction.mFromRain);
  @SerializedName("id")
  private String id = this$0.mCashTransaction.mTransactionId;
  @SerializedName("amount_money")
  private tp money = new tp(this$0.mCashTransaction.mAmount);
  @SerializedName("recipient")
  private CashCustomer recipient = new CashCustomer(this$0.mCashTransaction.mRecipientUsername);
  @SerializedName("recipient_customization")
  private tn recipientCustomization = new tn(this$0.mCashTransaction.mRecipientBankStatementMessage);
  @SerializedName("sender_customization")
  private tn senderCustomization = new tn(this$0.mCashTransaction.mSenderBankStatementMessage);
  @SerializedName("signature")
  private String signature = this$0.mCashTransaction.mSignature;
  
  ss$a(ss paramss) {}
}

/* Location:
 * Qualified Name:     ss.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */