import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

public final class si
  extends rl
{
  protected final void a()
  {
    super.a();
  }
  
  public final void a(@chc final CashTransaction paramCashTransaction)
  {
    new sw(mTransactionId, new ta()
    {
      public final void a(int paramAnonymousInt)
      {
        List localList = td.a(si.this, paramAnonymousInt);
        if (localList != null)
        {
          b(localList, true);
          return;
        }
        b(null, false);
      }
      
      public final void a(@chc CashPayment paramAnonymousCashPayment)
      {
        paramCashTransaction.a(td.a(mState, mCancellationReason));
        Object localObject = null;
        tq localtq = mBlockers;
        paramAnonymousCashPayment = (CashPayment)localObject;
        if (localtq != null) {
          paramAnonymousCashPayment = localtq.b();
        }
        if ((paramAnonymousCashPayment != null) && (!paramAnonymousCashPayment.isEmpty()))
        {
          a(paramAnonymousCashPayment, true);
          return;
        }
        a();
      }
    }).execute();
  }
  
  protected final void a(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@chd List<rl> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     si
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */