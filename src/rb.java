import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;
import javax.inject.Inject;

public final class rb
  extends qv
{
  private static final String TAG = "ValidateTransactionBlocker";
  @Inject
  protected qg mCashErrorReporter;
  
  public rb()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    Timber.b("ValidateTransactionBlocker", "CASH-LOG: ATTEMPT resolve ValidateTransactionBlocker recipient[%s] amount[%s]", new Object[] { mRecipientUsername, paramCashTransaction.a() });
    new qu(mRecipientUsername, mAmount, mCurrencyCode, mMessage, mFromRain, new qc.a()
    {
      public final void a(@cgb ScCashResponsePayload.Status paramAnonymousStatus, int paramAnonymousInt)
      {
        Timber.b("ValidateTransactionBlocker", "CASH-LOG: FAILED resolving ValidateTransactionBlocker recipient[%s] amount[%s] status[%s] statusCode[%d]", new Object[] { paramCashTransactionmRecipientUsername, paramCashTransaction.a(), paramAnonymousStatus.name(), Integer.valueOf(paramAnonymousInt) });
        AnalyticsEvents.a(paramAnonymousStatus.name(), paramAnonymousInt);
        qg.a(paramCashTransaction, paramAnonymousStatus);
        if ((paramAnonymousStatus == ScCashResponsePayload.Status.INVALID_AMOUNT) || (paramAnonymousStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)) {
          rb.b(rb.this);
        }
        for (;;)
        {
          if (paramAnonymousStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
          {
            Object localObject = ajv.g();
            if (localObject != null)
            {
              localObject = ((ajv)localObject).a(paramCashTransactionmRecipientUsername);
              if (localObject != null) {
                mCashEligibility = paramAnonymousStatus;
              }
            }
          }
          return;
          rb.c(rb.this);
        }
      }
      
      public final void a(@cgb ScCashResponsePayload paramAnonymousScCashResponsePayload)
      {
        paramAnonymousScCashResponsePayload = (qu.b)paramAnonymousScCashResponsePayload;
        paramCashTransactionmTransactionId = transactionId;
        paramCashTransactionmCashRecipientId = recipientId;
        paramCashTransactionmCashSenderId = senderId;
        paramCashTransactionmCreatedTimestamp = createdAt;
        paramCashTransactionmUpdatedTimestamp = createdAt;
        paramCashTransactionmSignature = signature;
        paramCashTransactionmIsInFlight = false;
        ChatConversation localChatConversation = ym.a(paramCashTransactionmConversationId);
        if ((localChatConversation != null) && (mTimestamp < createdAt)) {
          mTimestamp = createdAt;
        }
        Timber.b("ValidateTransactionBlocker", "CASH-LOG: SUCCESS resolved ValidateTransactionBlocker recipient[%s] amount[%s] got transaction_id[%s]", new Object[] { paramCashTransactionmRecipientUsername, paramCashTransaction.a(), paramCashTransactionmTransactionId });
        rb.a(rb.this);
      }
    }).f();
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.VALIDATE_TRANSACTION_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */