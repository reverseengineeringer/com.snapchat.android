import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class rz$1
  implements sx.a
{
  rz$1(rz paramrz, CashTransaction paramCashTransaction) {}
  
  public final void a(@chd sy paramsy)
  {
    Object localObject1 = val$transaction.mTransactionId;
    Object localObject2;
    boolean bool1;
    if (paramsy != null)
    {
      if ((blockers == null) || (!blockers.a())) {
        break label183;
      }
      localObject1 = blockers.b();
      localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (!((rl)((Iterator)localObject2).next()).d()) {
          bool1 = false;
        }
      }
    }
    for (;;)
    {
      localObject2 = payment;
      boolean bool2 = bool1;
      paramsy = (sy)localObject1;
      if (localObject2 != null)
      {
        CashTransaction.TransactionStatus localTransactionStatus = td.a(mState, mCancellationReason);
        val$transaction.a(localTransactionStatus);
        bool2 = bool1;
        paramsy = (sy)localObject1;
        if (mState == CashPayment.State.CANCELED)
        {
          td.a(mCancellationReason);
          if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            rz.a(this$0);
            return;
          }
          rz.b(this$0);
          return;
          paramsy = null;
          bool2 = true;
        }
      }
      rz.a(this$0, paramsy, bool2);
      return;
      bool1 = true;
      continue;
      label183:
      localObject1 = null;
      bool1 = true;
    }
  }
  
  public final void a(@chd sy paramsy, int paramInt)
  {
    ErrorType localErrorType = null;
    Object localObject = val$transaction.mTransactionId;
    localObject = td.a(this$0, paramInt);
    if (localObject != null)
    {
      rz.a(this$0, (List)localObject);
      return;
    }
    val$transaction.mSecurityCode = null;
    if (paramsy != null) {
      localErrorType = type;
    }
    if (ErrorType.isNonRecoverableError(localErrorType))
    {
      rz.b(this$0, Arrays.asList(new rl[] { new sj() }));
      return;
    }
    AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", paramInt);
    qw.a(2131493290, new Object[0]);
    rz.c(this$0);
  }
}

/* Location:
 * Qualified Name:     rz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */