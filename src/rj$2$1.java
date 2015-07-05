import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.List;

final class rj$2$1
  implements sh.a
{
  rj$2$1(rj.2 param2) {}
  
  public final void a(@cgc si paramsi)
  {
    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", new Object[] { this$1.val$transaction.mTransactionId });
    this$1.val$fragment.l();
    Object localObject2 = null;
    CashTransaction.TransactionStatus localTransactionStatus = null;
    if (paramsi != null)
    {
      Object localObject1 = localTransactionStatus;
      if (blockers != null)
      {
        localObject1 = localTransactionStatus;
        if (blockers.a()) {
          localObject1 = blockers.b();
        }
      }
      paramsi = payment;
      localObject2 = localObject1;
      if (paramsi != null)
      {
        localTransactionStatus = sn.a(mState, mCancellationReason);
        this$1.val$transaction.a(localTransactionStatus);
        localObject2 = localObject1;
        if (mState == CashPayment.State.CANCELED)
        {
          sn.a(mCancellationReason);
          if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            rj.d(this$1.this$0);
            return;
          }
          rj.e(this$1.this$0);
          return;
        }
      }
    }
    rj.c(this$1.this$0, (List)localObject2);
  }
  
  public final void a(@cgc si paramsi, int paramInt)
  {
    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", new Object[] { this$1.val$transaction.mTransactionId, Integer.valueOf(paramInt) });
    List localList = sn.a(this$1.this$0, paramInt);
    if (localList != null)
    {
      rj.d(this$1.this$0, localList);
      return;
    }
    if (paramsi != null) {}
    for (paramsi = type;; paramsi = null)
    {
      this$1.val$transaction.mSecurityCode = null;
      this$1.val$fragment.a(paramsi, paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     rj.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */