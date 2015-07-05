import com.snapchat.android.Timber;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Arrays;
import java.util.List;

final class rj$2
  implements SecurityCodeFragment.a
{
  rj$2(rj paramrj, CashTransaction paramCashTransaction, SecurityCodeFragment paramSecurityCodeFragment) {}
  
  public final void a()
  {
    Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker SecurityCodeFragment CANCELED", new Object[0]);
    rj.f(this$0);
  }
  
  public final void a(@cgb String paramString)
  {
    val$transaction.mSecurityCode = paramString;
    Timber.b("SQConfirmBlocker", "CASH-LOG: SQConfirmBlocker ENTERED security code", new Object[0]);
    rj.a(val$transaction.mTransactionId, paramString, new sh.a()
    {
      public final void a(@cgc si paramAnonymoussi)
      {
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask SUCCEEDED id[%s]", new Object[] { val$transaction.mTransactionId });
        val$fragment.l();
        Object localObject2 = null;
        CashTransaction.TransactionStatus localTransactionStatus = null;
        if (paramAnonymoussi != null)
        {
          Object localObject1 = localTransactionStatus;
          if (blockers != null)
          {
            localObject1 = localTransactionStatus;
            if (blockers.a()) {
              localObject1 = blockers.b();
            }
          }
          paramAnonymoussi = payment;
          localObject2 = localObject1;
          if (paramAnonymoussi != null)
          {
            localTransactionStatus = sn.a(mState, mCancellationReason);
            val$transaction.a(localTransactionStatus);
            localObject2 = localObject1;
            if (mState == CashPayment.State.CANCELED)
            {
              sn.a(mCancellationReason);
              if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
              {
                rj.d(this$0);
                return;
              }
              rj.e(this$0);
              return;
            }
          }
        }
        rj.c(this$0, (List)localObject2);
      }
      
      public final void a(@cgc si paramAnonymoussi, int paramAnonymousInt)
      {
        Timber.b("SQConfirmBlocker", "CASH-LOG: ConfirmPaymentTask FAILED id[%s] statusCode[%d]", new Object[] { val$transaction.mTransactionId, Integer.valueOf(paramAnonymousInt) });
        List localList = sn.a(this$0, paramAnonymousInt);
        if (localList != null)
        {
          rj.d(this$0, localList);
          return;
        }
        if (paramAnonymoussi != null) {}
        for (paramAnonymoussi = type;; paramAnonymoussi = null)
        {
          val$transaction.mSecurityCode = null;
          val$fragment.a(paramAnonymoussi, paramAnonymousInt);
          return;
        }
      }
    }).f();
  }
  
  public final void b()
  {
    rj.e(this$0, Arrays.asList(new qv[] { new rt() }));
  }
}

/* Location:
 * Qualified Name:     rj.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */