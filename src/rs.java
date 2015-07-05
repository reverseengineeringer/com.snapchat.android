import com.snapchat.android.api2.cash.blockers.BlockerOrder;
import com.snapchat.android.api2.cash.square.data.CashPayment;
import com.snapchat.android.model.CashTransaction;
import java.util.List;

public final class rs
  extends qv
{
  protected final void a()
  {
    super.a();
  }
  
  public final void a(@cgb final CashTransaction paramCashTransaction)
  {
    new sg(mTransactionId, new sk()
    {
      public final void a(int paramAnonymousInt)
      {
        List localList = sn.a(rs.this, paramAnonymousInt);
        if (localList != null)
        {
          b(localList, true);
          return;
        }
        b(null, false);
      }
      
      public final void a(@cgb CashPayment paramAnonymousCashPayment)
      {
        paramCashTransaction.a(sn.a(mState, mCancellationReason));
        Object localObject = null;
        ta localta = mBlockers;
        paramAnonymousCashPayment = (CashPayment)localObject;
        if (localta != null) {
          paramAnonymousCashPayment = localta.b();
        }
        if ((paramAnonymousCashPayment != null) && (!paramAnonymousCashPayment.isEmpty()))
        {
          a(paramAnonymousCashPayment, true);
          return;
        }
        a();
      }
    }).f();
  }
  
  protected final void a(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.a(paramList, paramBoolean);
  }
  
  protected final void b(@cgc List<qv> paramList, boolean paramBoolean)
  {
    super.b(paramList, paramBoolean);
  }
  
  public final BlockerOrder c()
  {
    return BlockerOrder.SQ_RETRIEVE_RECEIVING_CASH_PAYMENT_BLOCKER;
  }
}

/* Location:
 * Qualified Name:     rs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */