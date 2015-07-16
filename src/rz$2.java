import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.api2.cash.square.data.CashPayment.State;
import com.snapchat.android.fragments.cash.SecurityCodeFragment;
import com.snapchat.android.fragments.cash.SecurityCodeFragment.a;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.CashTransaction.TransactionStatus;
import java.util.Arrays;
import java.util.List;

final class rz$2
  implements SecurityCodeFragment.a
{
  rz$2(rz paramrz, CashTransaction paramCashTransaction, SecurityCodeFragment paramSecurityCodeFragment) {}
  
  public final void a()
  {
    rz.f(this$0);
  }
  
  public final void a(@chc String paramString)
  {
    val$transaction.mSecurityCode = paramString;
    rz.a(val$transaction.mTransactionId, paramString, new sx.a()
    {
      public final void a(@chd sy paramAnonymoussy)
      {
        Object localObject1 = val$transaction.mTransactionId;
        val$fragment.l();
        Object localObject2 = null;
        CashTransaction.TransactionStatus localTransactionStatus = null;
        if (paramAnonymoussy != null)
        {
          localObject1 = localTransactionStatus;
          if (blockers != null)
          {
            localObject1 = localTransactionStatus;
            if (blockers.a()) {
              localObject1 = blockers.b();
            }
          }
          paramAnonymoussy = payment;
          localObject2 = localObject1;
          if (paramAnonymoussy != null)
          {
            localTransactionStatus = td.a(mState, mCancellationReason);
            val$transaction.a(localTransactionStatus);
            localObject2 = localObject1;
            if (mState == CashPayment.State.CANCELED)
            {
              td.a(mCancellationReason);
              if (localTransactionStatus == CashTransaction.TransactionStatus.SENDER_CANCELED)
              {
                rz.d(this$0);
                return;
              }
              rz.e(this$0);
              return;
            }
          }
        }
        rz.c(this$0, (List)localObject2);
      }
      
      public final void a(@chd sy paramAnonymoussy, int paramAnonymousInt)
      {
        Object localObject = val$transaction.mTransactionId;
        localObject = td.a(this$0, paramAnonymousInt);
        if (localObject != null)
        {
          rz.d(this$0, (List)localObject);
          return;
        }
        if (paramAnonymoussy != null) {}
        for (paramAnonymoussy = type;; paramAnonymoussy = null)
        {
          val$transaction.mSecurityCode = null;
          val$fragment.a(paramAnonymoussy, paramAnonymousInt);
          return;
        }
      }
    }).execute();
  }
  
  public final void b()
  {
    rz.e(this$0, Arrays.asList(new rl[] { new sj() }));
  }
}

/* Location:
 * Qualified Name:     rz.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */