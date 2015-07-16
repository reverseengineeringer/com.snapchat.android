import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.ScCashResponsePayload;
import com.snapchat.android.api2.cash.ScCashResponsePayload.Status;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.Friend;
import com.snapchat.android.model.chat.ChatConversation;

final class rr$1
  implements qs.a
{
  rr$1(rr paramrr, CashTransaction paramCashTransaction) {}
  
  public final void a(@chc ScCashResponsePayload.Status paramStatus, int paramInt)
  {
    Object localObject = val$transaction.mRecipientUsername;
    val$transaction.a();
    paramStatus.name();
    AnalyticsEvents.a(paramStatus.name(), paramInt);
    qw.a(val$transaction, paramStatus);
    if ((paramStatus == ScCashResponsePayload.Status.INVALID_AMOUNT) || (paramStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)) {
      rr.b(this$0);
    }
    for (;;)
    {
      if (paramStatus == ScCashResponsePayload.Status.SERVICE_NOT_AVAILABLE_TO_RECIPIENT)
      {
        localObject = akp.g();
        if (localObject != null)
        {
          localObject = ((akp)localObject).a(val$transaction.mRecipientUsername);
          if (localObject != null) {
            mCashEligibility = paramStatus;
          }
        }
      }
      return;
      rr.c(this$0);
    }
  }
  
  public final void a(@chc ScCashResponsePayload paramScCashResponsePayload)
  {
    paramScCashResponsePayload = (rk.b)paramScCashResponsePayload;
    val$transaction.mTransactionId = transactionId;
    val$transaction.mCashRecipientId = recipientId;
    val$transaction.mCashSenderId = senderId;
    val$transaction.mCreatedTimestamp = createdAt;
    val$transaction.mUpdatedTimestamp = createdAt;
    val$transaction.mSignature = signature;
    val$transaction.mIsInFlight = false;
    ChatConversation localChatConversation = zi.a(val$transaction.mConversationId);
    if ((localChatConversation != null) && (mTimestamp < createdAt)) {
      mTimestamp = createdAt;
    }
    paramScCashResponsePayload = val$transaction.mRecipientUsername;
    val$transaction.a();
    paramScCashResponsePayload = val$transaction.mTransactionId;
    rr.a(this$0);
  }
}

/* Location:
 * Qualified Name:     rr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */