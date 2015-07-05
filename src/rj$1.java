import com.snapchat.android.Timber;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.api2.cash.square.data.ErrorType;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class rj$1
  implements sh.a
{
  rj$1(rj paramrj, CashTransaction paramCashTransaction) {}
  
  public final void a(@cgc si paramsi)
  {
    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", new Object[] { val$transaction.mTransactionId });
    List localList;
    Object localObject;
    boolean bool1;
    if (paramsi != null)
    {
      if ((blockers == null) || (!blockers.a())) {
        break label195;
      }
      localList = blockers.b();
      localObject = localList.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (!((qv)((Iterator)localObject).next()).d()) {
          bool1 = false;
        }
      }
    }
    for (;;)
    {
      localObject = payment;
      boolean bool2 = bool1;
      paramsi = localList;
      if (localObject != null)
      {
        CashTransaction.TransactionStatus localTransactionStatus = sn.a(mState, mCancellationReason);
        val$transaction.a(localTransactionStatus);
        bool2 = bool1;
        paramsi = localList;
        if (mState == CashPayment.State.CANCELED)
        {
          sn.a(mCancellationReason);
          if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
          {
            rj.a(this$0);
            return;
          }
          rj.b(this$0);
          return;
          paramsi = null;
          bool2 = true;
        }
      }
      rj.a(this$0, paramsi, bool2);
      return;
      bool1 = true;
      continue;
      label195:
      localList = null;
      bool1 = true;
    }
  }
  
  public final void a(@cgc si paramsi, int paramInt)
  {
    ErrorType localErrorType = null;
    Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", new Object[] { val$transaction.mTransactionId, Integer.valueOf(paramInt) });
    List localList = sn.a(this$0, paramInt);
    if (localList != null)
    {
      rj.a(this$0, localList);
      return;
    }
    val$transaction.mSecurityCode = null;
    if (paramsi != null) {
      localErrorType = type;
    }
    if (ErrorType.isNonRecoverableError(localErrorType))
    {
      rj.b(this$0, Arrays.asList(new qv[] { new rt() }));
      return;
    }
    AnalyticsEvents.a("SQUARE_SECURITY_CODE_VERIFICATION_FAILED", paramInt);
    qg.a(2131493290, new Object[0]);
    rj.c(this$0);
  }
}

/* Location:
 * Qualified Name:     rj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */