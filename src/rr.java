import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import javax.inject.Inject;

public final class rr
  extends rl
{
  private static final String TAG = "ValidateTransactionBlocker";
  @Inject
  protected qw mCashErrorReporter;
  
  public rr()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    String str = mRecipientUsername;
    paramCashTransaction.a();
    new rk(mRecipientUsername, mAmount, mCurrencyCode, mMessage, mFromRain, new qs.a()
    {
      public final void a(@chc ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        Object localObject = paramCashTransactionmRecipientUsername;
        paramCashTransaction.a();
        paramAnonymousStatus.name();
        AnalyticsEvents.a(paramAnonymousStatus.name(), paramAnonymousInt);
        qw.a(paramCashTransaction, paramAnonymousStatus);
        if ((paramAnonymousStatus == ScCashResponsePayload.Status.INVALID_AMOUNT) || (paramAnonymousStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)) {
          rr.b(rr.this);
        }
        for (;;)
        {
          if (paramAnonymousStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
          {
            localObject = akp.g();
            if (localObject != null)
            {
              localObject = ((akp)localObject).a(paramCashTransactionmRecipientUsername);
              if (localObject != null) {
                mCashEligibility = paramAnonymousStatus;
              }
            }
          }
          return;
          rr.c(rr.this);
        }
      }
      
      public final void a(@chc ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        paramAnonymousScCashResponsePayload = (rk.b)paramAnonymousScCashResponsePayload;
        paramCashTransactionmTransactionId = transactionId;
        paramCashTransactionmCashRecipientId = recipientId;
        paramCashTransactionmCashSenderId = senderId;
        paramCashTransactionmCreatedTimestamp = createdAt;
        paramCashTransactionmUpdatedTimestamp = createdAt;
        paramCashTransactionmSignature = signature;
        paramCashTransactionmIsInFlight = false;
        ChatConversation localChatConversation = zi.a(paramCashTransactionmConversationId);
        if ((localChatConversation != null) && (mTimestamp < createdAt)) {
          mTimestamp = createdAt;
        }
        paramAnonymousScCashResponsePayload = paramCashTransactionmRecipientUsername;
        paramCashTransaction.a();
        paramAnonymousScCashResponsePayload = paramCashTransactionmTransactionId;
        rr.a(rr.this);
      }
    }).execute();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.VALIDATE_TRANSACTION_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */