import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;

final class rb$1
  implements qc.a
{
  rb$1(rb paramrb, CashTransaction paramCashTransaction) {}
  
  public final void a(@cgb ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    Timber.b("ValidateTransactionBlocker", "CASH-LOG: FAILED resolving ValidateTransactionBlocker recipient[%s] amount[%s] status[%s] statusCode[%d]", new Object[] { val$transaction.mRecipientUsername, val$transaction.a(), paramStatus.name(), Integer.valueOf(paramInt) });
    AnalyticsEvents.a(paramStatus.name(), paramInt);
    qg.a(val$transaction, paramStatus);
    if ((paramStatus == ScCashResponsePayload.Status.INVALID_AMOUNT) || (paramStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)) {
      rb.b(this$0);
    }
    for (;;)
    {
      if (paramStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
      {
        Object localObject = ajv.g();
        if (localObject != null)
        {
          localObject = ((ajv)localObject).a(val$transaction.mRecipientUsername);
          if (localObject != null) {
            mCashEligibility = paramStatus;
          }
        }
      }
      return;
      rb.c(this$0);
    }
  }
  
  public final void a(@cgb ScCashResponsePayload paramScCashResponsePayload)
  {
    paramScCashResponsePayload = (qu.b)paramScCashResponsePayload;
    val$transaction.mTransactionId = transactionId;
    val$transaction.mCashRecipientId = recipientId;
    val$transaction.mCashSenderId = senderId;
    val$transaction.mCreatedTimestamp = createdAt;
    val$transaction.mUpdatedTimestamp = createdAt;
    val$transaction.mSignature = signature;
    val$transaction.mIsInFlight = false;
    ChatConversation localChatConversation = ym.a(val$transaction.mConversationId);
    if ((localChatConversation != null) && (mTimestamp < createdAt)) {
      mTimestamp = createdAt;
    }
    Timber.b("ValidateTransactionBlocker", "CASH-LOG: SUCCESS resolved ValidateTransactionBlocker recipient[%s] amount[%s] got transaction_id[%s]", new Object[] { val$transaction.mRecipientUsername, val$transaction.a(), val$transaction.mTransactionId });
    rb.a(this$0);
  }
}

/* Location:
 * Qualified Name:     rb.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */