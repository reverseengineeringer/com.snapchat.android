import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.List;

final class rz$2$1
  implements sx.a
{
  rz$2$1(rz.2 param2) {}
  
  public final void a(@chd sy paramsy)
  {
    Object localObject1 = this$1.val$transaction.mTransactionId;
    this$1.val$fragment.l();
    Object localObject2 = null;
    CashTransaction.TransactionStatus localTransactionStatus = null;
    if (paramsy != null)
    {
      localObject1 = localTransactionStatus;
      if (blockers != null)
      {
        localObject1 = localTransactionStatus;
        if (blockers.a()) {
          localObject1 = blockers.b();
        }
      }
      paramsy = payment;
      localObject2 = localObject1;
      if (paramsy != null)
      {
        localTransactionStatus = td.a(mState, mCancellationReason);
        this$1.val$transaction.a(localTransactionStatus);
        localObject2 = localObject1;
        if (mState == CashPayment.State.CANCELED)
        {
          td.a(mCancellationReason);
          if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            rz.d(this$1.this$0);
            return;
          }
          rz.e(this$1.this$0);
          return;
        }
      }
    }
    rz.c(this$1.this$0, (List)localObject2);
  }
  
  public final void a(@chd sy paramsy, int paramInt)
  {
    Object localObject = this$1.val$transaction.mTransactionId;
    localObject = td.a(this$1.this$0, paramInt);
    if (localObject != null)
    {
      rz.d(this$1.this$0, (List)localObject);
      return;
    }
    if (paramsy != null) {}
    for (paramsy = type;; paramsy = null)
    {
      this$1.val$transaction.mSecurityCode = null;
      this$1.val$fragment.a(paramsy, paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     rz.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */